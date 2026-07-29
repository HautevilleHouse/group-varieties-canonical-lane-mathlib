import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinition

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure TangentBundlePackage (G : GroupVarietyDefinition) where
  tangentSheaf : Type u
  sections : Type v
  vectorSpaceStructure : Prop
  lieBracket : Prop
  smoothStructure : Prop

tangentBundleClosed (G : GroupVarietyDefinition) (T : TangentBundlePackage G) : Prop :=
  T.vectorSpaceStructure ∧ T.lieBracket ∧ T.smoothStructure

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse