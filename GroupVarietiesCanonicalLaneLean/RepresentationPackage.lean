import HautevilleHouse.GroupVarietiesCanonicalLaneLean.ClassificationPackage

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure RepresentationPackage {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} (C : ClassificationPackage A) where
  representationType : Type u
  dimension : Nat
  irreducible : Prop
  faithful : Prop
  representationClosed : Prop

def RepresentationClosed {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} {C : ClassificationPackage A} (R : RepresentationPackage C) : Prop :=
  R.irreducible ∧ R.faithful ∧ R.representationClosed

structure RepresentationEvidence {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} {C : ClassificationPackage A} (R : RepresentationPackage C) where
  irreducibleClosed : R.irreducible
  faithfulClosed : R.faithful
  representationClosedClosed : R.representationClosed

theorem representation_closed_from_evidence
    {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} {C : ClassificationPackage A} (R : RepresentationPackage C) (E : RepresentationEvidence R) :
    RepresentationClosed R := by
  exact And.intro E.irreducibleClosed (And.intro E.faithfulClosed E.representationClosedClosed)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse