import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupVarietyDefinition where
  baseField : Type u
  coordinateRing : Type v
  dimension : ℕ
  integral : Prop
  separated : Prop
  finiteType : Prop
  smoothLocus : Prop

definitionClosed (G : GroupVarietyDefinition) : Prop :=
  G.integral ∧ G.separated ∧ G.finiteType

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse