import HautevilleHouse.GroupVarietiesCanonicalLaneLean.LieAlgebra

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure ClassificationPackage (G : GroupVarietyDefinition) (T : TangentBundlePackage G)
    (L : LieAlgebraPackage G T) where
  reductiveClassification : Prop
  semisimpleClassification : Prop
  abelianClassification : Prop
  nilpotentClassification : Prop
  solvableClassification : Prop

structure ClassificationEvidence {G : GroupVarietyDefinition} {T : TangentBundlePackage G}
    {L : LieAlgebraPackage G T} (C : ClassificationPackage G T L) where
  reductiveClosed : C.reductiveClassification
  semisimpleClosed : C.semisimpleClassification
  abelianClosed : C.abelianClassification
  nilpotentClosed : C.nilpotentClassification
  solvableClosed : C.solvableClassification

def ClassificationClosed {G : GroupVarietyDefinition} {T : TangentBundlePackage G}
    {L : LieAlgebraPackage G T} (C : ClassificationPackage G T L) : Prop :=
  C.reductiveClassification ∧ C.semisimpleClassification ∧ C.abelianClassification ∧
  C.nilpotentClassification ∧ C.solvableClassification

theorem classification_closed_from_evidence {G : GroupVarietyDefinition}
    {T : TangentBundlePackage G} {L : LieAlgebraPackage G T}
    (C : ClassificationPackage G T L) (E : ClassificationEvidence C) :
    ClassificationClosed C :=
  And.intro E.reductiveClosed
    (And.intro E.semisimpleClosed
      (And.intro E.abelianClosed
        (And.intro E.nilpotentClosed E.solvableClosed)))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse