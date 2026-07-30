import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  problemWellPosed : Prop
  objectiveDefined : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure VariationalEndgameState where
  object : VariationalAdmittedObject

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.solutionExists

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse