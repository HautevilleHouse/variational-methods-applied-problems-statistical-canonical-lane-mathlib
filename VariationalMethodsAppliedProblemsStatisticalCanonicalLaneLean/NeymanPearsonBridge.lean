import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure NeymanPearsonPackage where
  testStatistic : Type u
  criticalRegion : Type v
  likelihoodRatio : Prop
  mostPowerfulTest : Prop
  typeOneError : Prop
  typeTwoError : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  likelihoodRatioClosed : N.likelihoodRatio
  mostPowerfulTestClosed : N.mostPowerfulTest
  errorRatesControlled : N.typeOneError ∧ N.typeTwoError

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.likelihoodRatio ∧ N.mostPowerfulTest ∧ N.typeOneError ∧ N.typeTwoError

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage)
    (E : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro E.likelihoodRatioClosed
    (And.intro E.mostPowerfulTestClosed
      (And.intro E.errorRatesControlled.1 E.errorRatesControlled.2))

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse
