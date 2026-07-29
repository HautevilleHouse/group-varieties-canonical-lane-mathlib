import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AffineGroupVariety where
  coordinateRing : Type u
  finitelyGenerated : Prop
  reduced : Prop
  hopfAlgebraStructures : Prop
  finitelyGeneratedTerm : finitelyGenerated
  reducedTerm : reduced
  hopfAlgebraStructuresTerm : hopfAlgebraStructures

structure ProjectiveGroupVariety where
  coordinateRing : Type u
  graded : Prop
  projectiveEmbedding : Prop
  groupLaw : Prop
  gradedTerm : graded
  projectiveEmbeddingTerm : projectiveEmbedding
  groupLawTerm : groupLaw

inductive GroupVariety where
  | affine (A : AffineGroupVariety)
  | projective (P : ProjectiveGroupVariety)

def GroupVarietyWitnessClosed (V : GroupVariety) : Prop :=
  match V with
  | GroupVariety.affine A => A.finitelyGenerated ∧ A.reduced ∧ A.hopfAlgebraStructures
  | GroupVariety.projective P => P.graded ∧ P.projectiveEmbedding ∧ P.groupLaw

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse