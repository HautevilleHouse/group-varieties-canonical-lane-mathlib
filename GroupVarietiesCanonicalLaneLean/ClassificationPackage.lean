import HautevilleHouse.GroupVarietiesCanonicalLaneLean.AlgebraicGeometryPackage

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure ClassificationPackage {G : GroupLawPackage} (A : AlgebraicGeometryPackage G) where
  abelianRank : Nat
  semiSimplePart : Type u
  radical : Type u
  classificationData : Prop
  classificationComplete : Prop

def ClassificationClosed {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} (C : ClassificationPackage A) : Prop :=
  C.classificationData ∧ C.classificationComplete

structure ClassificationEvidence {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} (C : ClassificationPackage A) where
  classificationDataClosed : C.classificationData
  classificationCompleteClosed : C.classificationComplete

theorem classification_closed_from_evidence
    {G : GroupLawPackage} {A : AlgebraicGeometryPackage G} (C : ClassificationPackage A) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.classificationDataClosed E.classificationCompleteClosed

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse