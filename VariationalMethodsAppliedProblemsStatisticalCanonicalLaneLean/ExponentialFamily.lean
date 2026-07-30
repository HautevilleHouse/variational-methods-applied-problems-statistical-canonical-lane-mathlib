import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set (sampleSpace))
  parameterSpace : Type v
  sufficientStatistic : sampleSpace -> ParameterSpace
  baseMeasure : Set sampleSpace -> ℝ
  canonicalForm : Bool
  naturalParameterSpaceOpen : Bool
  carrier : ExponentialFamilyPackage -> Prop := λ p => p.canonicalForm ∧ p.naturalParameterSpaceOpen

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  naturalParameterSpaceOpenClosed : E.naturalParameterSpaceOpen

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.naturalParameterSpaceOpen

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro ev.canonicalFormClosed ev.naturalParameterSpaceOpenClosed

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse