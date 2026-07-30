import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure VariationalInferencePackage where
  targetDistribution : Type u
  variationalFamily : Type v
  elbo : Prop
  klDivergence : Prop
  gradientEstimator : Prop
  convergenceGuarantee : Prop

structure VariationalInferenceEvidence (V : VariationalInferencePackage) where
  elboClosed : V.elbo
  klDivergenceClosed : V.klDivergence
  gradientEstimatorClosed : V.gradientEstimator
  convergenceGuaranteeClosed : V.convergenceGuarantee

def VariationalInferenceClosed (V : VariationalInferencePackage) : Prop :=
  V.elbo ∧ V.klDivergence ∧ V.gradientEstimator ∧ V.convergenceGuarantee

theorem variational_inference_closed_from_evidence (V : VariationalInferencePackage)
    (E : VariationalInferenceEvidence V) : VariationalInferenceClosed V := by
  exact And.intro E.elboClosed
    (And.intro E.klDivergenceClosed
      (And.intro E.gradientEstimatorClosed E.convergenceGuaranteeClosed))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
