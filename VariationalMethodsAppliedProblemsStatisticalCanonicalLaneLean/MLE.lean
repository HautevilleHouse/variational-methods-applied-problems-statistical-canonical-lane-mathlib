import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure MLEPackage where
  likelihoodFunction : Prop
  maximumLikelihoodEstimator : Prop
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

def MLEEvidence (M : MLEPackage) : Prop :=
  M.likelihoodFunction ∧ M.maximumLikelihoodEstimator ∧ M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

def MLEClosed (M : MLEPackage) : Prop :=
  M.likelihoodFunction ∧ M.maximumLikelihoodEstimator ∧ M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 (And.intro E.2.2.2.1 E.2.2.2.2)))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
