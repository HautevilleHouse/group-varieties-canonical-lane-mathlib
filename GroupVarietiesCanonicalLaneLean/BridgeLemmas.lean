import GroupVarietiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupVarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse