import GroupVarietiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AdmissibleClass where
  object : GroupVarietyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := 
  GroupVarietyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse