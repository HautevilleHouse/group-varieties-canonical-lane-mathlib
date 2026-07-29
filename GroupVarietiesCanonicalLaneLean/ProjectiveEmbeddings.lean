import GroupVarietiesCanonicalLaneLean.HopfAlgebraStructure

/-!
# Projective Embeddings Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure ProjectiveEmbeddingPackage {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} (A : AffineGroupSchemePackage F) where
  projectiveSpace : Type u
  embeddingMorphism : G.underlyingVariety → projectiveSpace
  projectiveCoordinates : Prop
  degreeBound : Prop
  lineBundleAmple : Prop

structure ProjectiveEmbeddingEvidence {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {A : AffineGroupSchemePackage F} 
    (P : ProjectiveEmbeddingPackage A) where
  projectiveCoordinatesClosed : P.projectiveCoordinates
  degreeBoundClosed : P.degreeBound
  lineBundleAmpleClosed : P.lineBundleAmple

def ProjectiveEmbeddingClosed {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {A : AffineGroupSchemePackage F} 
    (P : ProjectiveEmbeddingPackage A) : Prop :=
  P.projectiveCoordinates ∧ P.degreeBound ∧ P.lineBundleAmple

theorem projective_embedding_closed_from_evidence {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {A : AffineGroupSchemePackage F} 
    (P : ProjectiveEmbeddingPackage A) (E : ProjectiveEmbeddingEvidence P) :
    ProjectiveEmbeddingClosed P := by
  exact And.intro E.projectiveCoordinatesClosed
    (And.intro E.degreeBoundClosed E.lineBundleAmpleClosed)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse