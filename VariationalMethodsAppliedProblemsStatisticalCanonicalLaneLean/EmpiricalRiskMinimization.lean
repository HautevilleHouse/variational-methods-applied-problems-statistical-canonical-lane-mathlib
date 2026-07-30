import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalLean

structure EmpiricalRiskMinimizationPackage where
  hypothesisSpace : Type u
  lossFunction : Type v
  trainingData : Type w
  empiricalRisk : Type x
  populationRisk : Type y
  uniformLawOfLargeNumbers : Prop
  consistencyResult : Prop
  rateOfConvergenceResult : Prop

structure EmpiricalRiskMinimizationEvidence (E : EmpiricalRiskMinimizationPackage) where
  uniformLawOfLargeNumbersClosed : E.uniformLawOfLargeNumbers
  consistencyResultClosed : E.consistencyResult
  rateOfConvergenceResultClosed : E.rateOfConvergenceResult

def EmpiricalRiskMinimizationClosed (E : EmpiricalRiskMinimizationPackage) : Prop :=
  E.uniformLawOfLargeNumbers ∧ E.consistencyResult ∧ E.rateOfConvergenceResult

theorem empirical_risk_minimization_closed_from_evidence
    (E : EmpiricalRiskMinimizationPackage) (Ev : EmpiricalRiskMinimizationEvidence E) :
    EmpiricalRiskMinimizationClosed E := by
  exact And.intro Ev.uniformLawOfLargeNumbersClosed
    (And.intro Ev.consistencyResultClosed Ev.rateOfConvergenceResultClosed)

end VariationalMethodsAppliedProblemsStatisticalLean
end HautevilleHouse