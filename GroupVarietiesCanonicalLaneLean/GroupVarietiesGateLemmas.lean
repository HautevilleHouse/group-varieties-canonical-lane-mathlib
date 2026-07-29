import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietiesBridgeLemmas

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

def gateClosed (A : GroupVarietyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GroupVarietyAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse