import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinition

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure MorphismPackage (X Y : GroupVarietyDefinition) where
  underlyingMap : X.coordinateRing → Y.coordinateRing
  regular : Prop
  compositionClosure : Prop
  identityPresent : Prop

structure MorphismEvidence {X Y : GroupVarietyDefinition} (M : MorphismPackage X Y) where
  regularClosed : M.regular
  compositionClosed : M.compositionClosure
  identityPresentClosed : M.identityPresent

def MorphismClosed {X Y : GroupVarietyDefinition} (M : MorphismPackage X Y) : Prop :=
  M.regular ∧ M.compositionClosure ∧ M.identityPresent

theorem morphism_closed_from_evidence {X Y : GroupVarietyDefinition}
    (M : MorphismPackage X Y) (E : MorphismEvidence M) : MorphismClosed M :=
  And.intro E.regularClosed (And.intro E.compositionClosed E.identityPresentClosed)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse