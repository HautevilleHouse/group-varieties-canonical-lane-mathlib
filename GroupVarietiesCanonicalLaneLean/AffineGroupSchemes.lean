import GroupVarietiesCanonicalLaneLean.ProjectiveEmbeddings

/-!
# Affine Group Schemes Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AffineGroupSchemePackage {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} (S : CoordinateRingPackage F) where
  finitelyGeneratedAlgebra : Prop
  comultiplicationCocommutative : Prop
  antipodeInvolutive : Prop
  rationalRepresentation : Prop

structure AffineGroupSchemeEvidence {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {S : CoordinateRingPackage F} 
    (A : AffineGroupSchemePackage S) where
  finitelyGeneratedAlgebraClosed : A.finitelyGeneratedAlgebra
  comultiplicationCocommutativeClosed : A.comultiplicationCocommutative
  antipodeInvolutiveClosed : A.antipodeInvolutive
  rationalRepresentationClosed : A.rationalRepresentation

def AffineGroupSchemeClosed {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {S : CoordinateRingPackage F} 
    (A : AffineGroupSchemePackage S) : Prop :=
  A.finitelyGeneratedAlgebra ∧ A.comultiplicationCocommutative ∧
  A.antipodeInvolutive ∧ A.rationalRepresentation

theorem affine_group_scheme_closed_from_evidence {G : GroupVarietyBase}
    {F : HopfAlgebraStructure G} {S : CoordinateRingPackage F} 
    (A : AffineGroupSchemePackage S) (E : AffineGroupSchemeEvidence A) :
    AffineGroupSchemeClosed A := by
  exact And.intro E.finitelyGeneratedAlgebraClosed
    (And.intro E.comultiplicationCocommutativeClosed
      (And.intro E.antipodeInvolutiveClosed E.rationalRepresentationClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse