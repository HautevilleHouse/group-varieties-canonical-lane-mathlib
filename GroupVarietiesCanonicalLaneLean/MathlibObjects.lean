import GroupVarietiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupVarietySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupVarietyAdmittedObject where
  space : GroupVarietySpace
  affineVariety : Prop
  reduced : Prop
  irreducible : Prop
  groupLaw : Prop
  conclusion : groupLaw

structure GroupVarietyEndgameState where
  object : GroupVarietyAdmittedObject

def GroupVarietyWitnessClosed (O : GroupVarietyAdmittedObject) : Prop :=
  O.groupLaw

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse