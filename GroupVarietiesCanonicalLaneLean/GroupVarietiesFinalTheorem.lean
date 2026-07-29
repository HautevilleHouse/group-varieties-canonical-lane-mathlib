import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietiesGateLemmas

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

def ConstrainedGroupVarietyClosure (A : GroupVarietyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_variety_endgame (A : GroupVarietyAdmissibleClass) :
    ConstrainedGroupVarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse