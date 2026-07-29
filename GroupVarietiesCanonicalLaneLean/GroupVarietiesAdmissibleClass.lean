import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarieties

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AdmittedGroupVariety where
  G : GroupVariety
  isFinite : Prop
  isAbelian : Prop

structure GroupVarietyAdmittedObject where
  variety : AdmittedGroupVariety
  conclusion : variety.isFinite ∨ variety.isAbelian

structure GroupVarietyAdmissibleClass where
  object : GroupVarietyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GroupVarietyAdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse