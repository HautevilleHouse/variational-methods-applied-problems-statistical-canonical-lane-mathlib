import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure MLEConsistencyPackage where
  parameterSpace : Type u
  sampleSpace : Type v
  likelihoodFunction : sampleSpace → parameterSpace → ℝ
  trueParameter : parameterSpace
  MLEstimator : sampleSpace → parameterSpace
  identifiability : ∀ θ₁ θ₂ : parameterSpace, (∀ x : sampleSpace, likelihoodFunction x θ₁ = likelihoodFunction x θ₂) → θ₁ = θ₂
  compactParameterSpace : Bool
  continuousLikelihood : Bool
  uniformConvergence : Bool
  consistencyConclusion : ∀ ε > 0, asymptoticallyProb → (|MLEstimator - trueParameter| < ε)

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  identifiabilityClosed : M.identifiability
  compactParameterSpaceClosed : M.compactParameterSpace
  continuousLikelihoodClosed : M.continuousLikelihood
  uniformConvergenceClosed : M.uniformConvergence

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.identifiability ∧ M.compactParameterSpace ∧ M.continuousLikelihood ∧ M.uniformConvergence

theorem mle_consistency_closed_from_evidence (M : MLEConsistencyPackage) (ev : MLEConsistencyEvidence M) : MLEConsistencyClosed M := by
  exact And.intro ev.identifiabilityClosed (And.intro ev.compactParameterSpaceClosed (And.intro ev.continuousLikelihoodClosed ev.uniformConvergenceClosed))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse