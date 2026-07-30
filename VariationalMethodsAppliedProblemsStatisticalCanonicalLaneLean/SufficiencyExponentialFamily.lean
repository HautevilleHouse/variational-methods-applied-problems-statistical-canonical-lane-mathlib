import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalLean

structure SufficiencyExponentialFamilyPackage where
  sampleSpace : Type u
  familyOfDistributions : Type v
  sufficientStatistic : Type w
  exponentialForm : Prop
  factorizationCriterion : Prop
  sufficientStatisticComplete : Prop
  sufficientStatisticMinimal : Prop
  exponentialFamilyClosedForMultiplication : Prop

structure SufficiencyExponentialFamilyEvidence (S : SufficiencyExponentialFamilyPackage) where
  exponentialFormClosed : S.exponentialForm
  factorizationCriterionClosed : S.factorizationCriterion
  sufficientStatisticCompleteClosed : S.sufficientStatisticComplete
  sufficientStatisticMinimalClosed : S.sufficientStatisticMinimal
  exponentialFamilyClosedForMultiplicationClosed : S.exponentialFamilyClosedForMultiplication

def SufficiencyExponentialFamilyClosed (S : SufficiencyExponentialFamilyPackage) : Prop :=
  S.exponentialForm ∧ S.factorizationCriterion ∧
  S.sufficientStatisticComplete ∧ S.sufficientStatisticMinimal ∧
  S.exponentialFamilyClosedForMultiplication

theorem sufficiency_exponential_family_closed_from_evidence
    (S : SufficiencyExponentialFamilyPackage) (E : SufficiencyExponentialFamilyEvidence S) :
    SufficiencyExponentialFamilyClosed S := by
  exact And.intro E.exponentialFormClosed
    (And.intro E.factorizationCriterionClosed
      (And.intro E.sufficientStatisticCompleteClosed
        (And.intro E.sufficientStatisticMinimalClosed
          E.exponentialFamilyClosedForMultiplicationClosed)))

end VariationalMethodsAppliedProblemsStatisticalLean
end HautevilleHouse