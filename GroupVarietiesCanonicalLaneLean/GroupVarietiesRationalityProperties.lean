import GroupVarietiesCanonicalLaneLean.GroupVarietiesAlgebraicGroupStructure

/-!
# Rationality Properties Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure RationalityPropertiesPackage {A : AdmissibleClass}
    (P : AlgebraicGroupStructurePackage A) where
  rationalPointsDense : Prop
  unirationalGroup : Prop
  rationallyConnected : Prop
  rationalSingularityResolution : Prop

structure RationalityPropertiesEvidence {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} (R : RationalityPropertiesPackage P) where
  rationalPointsDenseClosed : R.rationalPointsDense
  unirationalGroupClosed : R.unirationalGroup
  rationallyConnectedClosed : R.rationallyConnected
  rationalSingularityResolutionClosed : R.rationalSingularityResolution

def RationalityPropertiesClosed {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} (R : RationalityPropertiesPackage P) : Prop :=
  R.rationalPointsDense ∧ R.unirationalGroup ∧ R.rationallyConnected ∧ R.rationalSingularityResolution

theorem rationality_properties_closed_from_evidence
    {A : AdmissibleClass} {P : AlgebraicGroupStructurePackage A}
    (R : RationalityPropertiesPackage P) (E : RationalityPropertiesEvidence R) :
    RationalityPropertiesClosed R := by
  exact And.intro E.rationalPointsDenseClosed
    (And.intro E.unirationalGroupClosed
      (And.intro E.rationallyConnectedClosed E.rationalSingularityResolutionClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse