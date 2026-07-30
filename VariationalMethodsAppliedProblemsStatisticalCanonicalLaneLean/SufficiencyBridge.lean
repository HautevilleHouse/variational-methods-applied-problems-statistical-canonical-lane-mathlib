import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatistic : Type u
  conditionalDistribution : Type v
  factorizationTheorem : Prop
  exponentialFamilyForm : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationTheoremClosed : S.factorizationTheorem
  exponentialFamilyFormClosed : S.exponentialFamilyForm

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationTheorem ∧ S.exponentialFamilyForm

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage)
    (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosed E.exponentialFamilyFormClosed

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
