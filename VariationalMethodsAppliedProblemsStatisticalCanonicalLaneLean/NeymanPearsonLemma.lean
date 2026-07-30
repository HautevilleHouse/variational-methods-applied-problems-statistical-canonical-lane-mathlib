import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure HypothesisTestPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  rejectionRegion : Set (testStatistic)
  significanceLevel : ℝ
  power : ℝ
  mostPowerful : Bool
  lemmaConclusion : mostPowerful → (nullHypothesis → alternativeHypothesis → Prop)

structure HypothesisTestEvidence (H : HypothesisTestPackage) where
  mostPowerfulClosed : H.mostPowerful
  significanceLevelValid : H.significanceLevel > 0 ∧ H.significanceLevel < 1
  lemmaDerived : H.lemmaConclusion H.mostPowerful

def HypothesisTestClosed (H : HypothesisTestPackage) : Prop :=
  H.mostPowerful ∧ (H.significanceLevel > 0 ∧ H.significanceLevel < 1)

theorem hypothesis_test_closed_from_evidence (H : HypothesisTestPackage) (ev : HypothesisTestEvidence H) : HypothesisTestClosed H := by
  exact And.intro ev.mostPowerfulClosed ev.significanceLevelValid

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse