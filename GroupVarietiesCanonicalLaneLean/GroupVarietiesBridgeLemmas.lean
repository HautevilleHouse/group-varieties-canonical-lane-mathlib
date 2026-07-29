import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietiesAdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

def bridgeClosed (A : GroupVarietyAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : GroupVarietyAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse