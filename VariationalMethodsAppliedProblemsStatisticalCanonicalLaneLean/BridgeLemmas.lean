import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsStatisticalLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VariationalMethodsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalMethodsAppliedProblemsStatisticalLean
end HautevilleHouse