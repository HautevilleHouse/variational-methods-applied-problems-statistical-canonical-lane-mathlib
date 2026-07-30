import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalLean

structure MLEConsistencyPackage where
  parameterSpace : Type u
  likelihoodFunction : Type v
  mleEstimator : Type w
  identifiability : Prop
  compactness : Prop
  continuityOfLikelihood : Prop
  uniformConvergence : Prop
  consistencyResult : Prop

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  identifiabilityClosed : M.identifiability
  compactnessClosed : M.compactness
  continuityOfLikelihoodClosed : M.continuityOfLikelihood
  uniformConvergenceClosed : M.uniformConvergence
  consistencyResultClosed : M.consistencyResult

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.identifiability ∧ M.compactness ∧
  M.continuityOfLikelihood ∧ M.uniformConvergence ∧ M.consistencyResult

theorem mle_consistency_closed_from_evidence
    (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) :
    MLEConsistencyClosed M := by
  exact And.intro E.identifiabilityClosed
    (And.intro E.compactnessClosed
      (And.intro E.continuityOfLikelihoodClosed
        (And.intro E.uniformConvergenceClosed E.consistencyResultClosed)))

end VariationalMethodsAppliedProblemsStatisticalLean
end HautevilleHouse