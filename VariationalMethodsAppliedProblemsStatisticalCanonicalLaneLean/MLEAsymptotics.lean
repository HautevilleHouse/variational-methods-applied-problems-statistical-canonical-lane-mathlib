import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure MLEAsymptoticsPackage where
  parameterSpace : Type u
  dataSpace : Type v
  logLikelihood : dataSpace → parameterSpace → ℝ
  scoreFunction : dataSpace → parameterSpace → ℝ
  fisherInformation : parameterSpace → ℝ
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEAsymptoticsEvidence (M : MLEAsymptoticsPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEAsymptoticsClosed (M : MLEAsymptoticsPackage) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_asymptotics_closed_from_evidence (M : MLEAsymptoticsPackage) (ev : MLEAsymptoticsEvidence M) : MLEAsymptoticsClosed M := by
  exact And.intro ev.consistencyClosed (And.intro ev.asymptoticNormalityClosed ev.efficiencyClosed)

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse