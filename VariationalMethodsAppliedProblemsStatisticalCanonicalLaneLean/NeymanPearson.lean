import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure NeymanPearsonLemmaPackage where
  hypotheses : Type u
  testFunction : Type v
  typeIError : ℝ
  typeIIError : ℝ
  likelihoodRatio : Prop
  optimalTest : Prop
  umpExists : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonLemmaPackage) where
  likelihoodRatioClosed : N.likelihoodRatio
  optimalTestClosed : N.optimalTest
  umpExistsClosed : N.umpExists

def NeymanPearsonClosed (N : NeymanPearsonLemmaPackage) : Prop :=
  N.likelihoodRatio ∧ N.optimalTest ∧ N.umpExists

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonLemmaPackage) (ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro ev.likelihoodRatioClosed (And.intro ev.optimalTestClosed ev.umpExistsClosed)

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse