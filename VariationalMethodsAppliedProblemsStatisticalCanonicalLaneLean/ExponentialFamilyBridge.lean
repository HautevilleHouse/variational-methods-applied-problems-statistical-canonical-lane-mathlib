import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Type u
  canonicalParameter : Type v
  logPartition : Type w
  cumulantGenerating : Type x
  meanParametrization : Prop
  varianceFunction : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  meanParametrizationClosed : E.meanParametrization
  varianceFunctionClosed : E.varianceFunction

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.meanParametrization ∧ E.varianceFunction

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage)
    (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.meanParametrizationClosed Ev.varianceFunctionClosed

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
