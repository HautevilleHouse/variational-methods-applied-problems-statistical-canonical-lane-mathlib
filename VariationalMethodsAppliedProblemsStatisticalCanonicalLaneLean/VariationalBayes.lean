import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalLean

structure VariationalBayesPackage where
  latentVariableSpace : Type u
  observedData : Type v
  posteriorFamily : Type w
  evidenceLowerBound : Type x
  variationalObjective : Prop
  meanFieldApproximation : Prop
  coordinateAscentUpdate : Prop
  convergenceResult : Prop

structure VariationalBayesEvidence (V : VariationalBayesPackage) where
  variationalObjectiveClosed : V.variationalObjective
  meanFieldApproximationClosed : V.meanFieldApproximation
  coordinateAscentUpdateClosed : V.coordinateAscentUpdate
  convergenceResultClosed : V.convergenceResult

def VariationalBayesClosed (V : VariationalBayesPackage) : Prop :=
  V.variationalObjective ∧ V.meanFieldApproximation ∧
  V.coordinateAscentUpdate ∧ V.convergenceResult

theorem variational_bayes_closed_from_evidence
    (V : VariationalBayesPackage) (E : VariationalBayesEvidence V) :
    VariationalBayesClosed V := by
  exact And.intro E.variationalObjectiveClosed
    (And.intro E.meanFieldApproximationClosed
      (And.intro E.coordinateAscentUpdateClosed E.convergenceResultClosed))

end VariationalMethodsAppliedProblemsStatisticalLean
end HautevilleHouse