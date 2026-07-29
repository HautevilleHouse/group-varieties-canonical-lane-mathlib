import HautevilleHouse.GroupVarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupLawPackage where
  multiplication : Type u → Type u → Type u
  identity : Type u
  inverses : Type u → Type u
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop
  groupAxiomsClosed : Prop

structure GroupLawEvidence (G : GroupLawPackage) where
  associativityClosed : G.associativity
  identityLawClosed : G.identityLaw
  inverseLawClosed : G.inverseLaw
  groupAxiomsClosedClosed : G.groupAxiomsClosed

def GroupLawClosed (G : GroupLawPackage) : Prop :=
  G.associativity ∧ G.identityLaw ∧ G.inverseLaw ∧ G.groupAxiomsClosed

theorem group_law_closed_from_evidence (G : GroupLawPackage) (E : GroupLawEvidence G) :
    GroupLawClosed G := by
  exact And.intro E.associativityClosed (And.intro E.identityLawClosed (And.intro E.inverseLawClosed E.groupAxiomsClosedClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse