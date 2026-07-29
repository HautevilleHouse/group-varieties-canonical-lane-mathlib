import HautevilleHouse.GroupVarietiesCanonicalLaneLean.Morphisms

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupLawPackage (G : GroupVarietyDefinition) where
  multiplication : MorphismPackage (G × G) G
  inverse : MorphismPackage G G
  identity : G.coordinateRing
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop

structure GroupLawEvidence {G : GroupVarietyDefinition} (L : GroupLawPackage G) where
  associativityClosed : L.associativity
  identityLawClosed : L.identityLaw
  inverseLawClosed : L.inverseLaw

def GroupLawClosed {G : GroupVarietyDefinition} (L : GroupLawPackage G) : Prop :=
  L.associativity ∧ L.identityLaw ∧ L.inverseLaw

theorem group_law_closed_from_evidence {G : GroupVarietyDefinition}
    (L : GroupLawPackage G) (E : GroupLawEvidence L) : GroupLawClosed L :=
  And.intro E.associativityClosed (And.intro E.identityLawClosed E.inverseLawClosed)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse