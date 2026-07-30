import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure DecisionTheoryPackage where
  actionSpace : Type u
  lossFunction : Type v
  riskFunction : Type w
  bayesEstimator : Prop
  minimaxEstimator : Prop
  admissibleDecision : Prop

structure DecisionTheoryEvidence (D : DecisionTheoryPackage) where
  bayesEstimatorClosed : D.bayesEstimator
  minimaxEstimatorClosed : D.minimaxEstimator
  admissibleDecisionClosed : D.admissibleDecision

def DecisionTheoryClosed (D : DecisionTheoryPackage) : Prop :=
  D.bayesEstimator ∧ D.minimaxEstimator ∧ D.admissibleDecision

theorem decision_theory_closed_from_evidence (D : DecisionTheoryPackage)
    (E : DecisionTheoryEvidence D) : DecisionTheoryClosed D := by
  exact And.intro E.bayesEstimatorClosed
    (And.intro E.minimaxEstimatorClosed E.admissibleDecisionClosed)

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
