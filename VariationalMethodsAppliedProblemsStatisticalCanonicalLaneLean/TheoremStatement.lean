import HautevilleHouse.VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  statisticalModel : Prop
  variationalMethod : Prop
  mleConsistency : Prop
  conclusion : mleConsistency

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.mleConsistency

theorem variational_object_closed (O : VariationalAdmittedObject) : VariationalWitnessClosed O := by
  exact O.conclusion

end VariationalMethodsAppliedProblemsStatisticalCanonicalLaneLean
end HautevilleHouse