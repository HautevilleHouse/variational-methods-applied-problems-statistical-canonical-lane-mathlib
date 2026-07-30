import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure VariationalInferencePackage where
  variationalFamily : Prop
  elbo : Prop
  klDivergence : Prop
  optimizationProcedure : Prop
  evidenceLowerBound : Prop

def VariationalInferenceEvidence (V : VariationalInferencePackage) : Prop :=
  V.variationalFamily ∧ V.elbo ∧ V.klDivergence ∧ V.optimizationProcedure ∧ V.evidenceLowerBound

def VariationalInferenceClosed (V : VariationalInferencePackage) : Prop :=
  V.variationalFamily ∧ V.elbo ∧ V.klDivergence ∧ V.optimizationProcedure ∧ V.evidenceLowerBound

theorem variational_inference_closed_from_evidence (V : VariationalInferencePackage) (E : VariationalInferenceEvidence V) :
    VariationalInferenceClosed V := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 (And.intro E.2.2.2.1 E.2.2.2.2)))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
