import GroupVarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def groupVarietiesProjection : Projection GroupVarietyEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem group_varieties_projection_idempotent (x : GroupVarietyEndgameState) :
    groupVarietiesProjection.toFun (groupVarietiesProjection.toFun x) = groupVarietiesProjection.toFun x := by
  exact groupVarietiesProjection.idempotent x

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse