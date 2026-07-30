import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatistic : Prop
  factorizationCriterion : Prop
  minimalSufficiency : Prop
  completeness : Prop

def SufficiencyEvidence (S : SufficiencyPackage) : Prop :=
  S.sufficientStatistic ∧ S.factorizationCriterion ∧ S.minimalSufficiency ∧ S.completeness

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatistic ∧ S.factorizationCriterion ∧ S.minimalSufficiency ∧ S.completeness

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 E.2.2.2))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
