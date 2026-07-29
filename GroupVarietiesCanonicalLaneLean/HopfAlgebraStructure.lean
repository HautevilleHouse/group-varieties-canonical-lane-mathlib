import GroupVarietiesCanonicalLaneLean.GroupVarietyBase

/-!
# Hopf Algebra Structure Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure HopfAlgebraStructure (G : GroupVarietyBase) where
  coordinateRing : Type u
  comultiplication : coordinateRing → coordinateRing ⊗ coordinateRing
  counit : coordinateRing → G.field
  antipode : coordinateRing → coordinateRing
  comultiplicationCoassoc : Prop
  counitLeftUnital : Prop
  antipodeProperty : Prop
  finitelyGenerated : Prop

structure HopfAlgebraEvidence {G : GroupVarietyBase} (F : HopfAlgebraStructure G) where
  comultiplicationCoassocClosed : F.comultiplicationCoassoc
  counitLeftUnitalClosed : F.counitLeftUnital
  antipodePropertyClosed : F.antipodeProperty
  finitelyGeneratedClosed : F.finitelyGenerated

def HopfAlgebraClosed {G : GroupVarietyBase} (F : HopfAlgebraStructure G) : Prop :=
  F.comultiplicationCoassoc ∧ F.counitLeftUnital ∧
  F.antipodeProperty ∧ F.finitelyGenerated

theorem hopf_algebra_closed_from_evidence {G : GroupVarietyBase} (F : HopfAlgebraStructure G)
    (E : HopfAlgebraEvidence F) : HopfAlgebraClosed F := by
  exact And.intro E.comultiplicationCoassocClosed
    (And.intro E.counitLeftUnitalClosed
      (And.intro E.antipodePropertyClosed E.finitelyGeneratedClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse