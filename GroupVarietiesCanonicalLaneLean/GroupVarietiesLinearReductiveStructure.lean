import GroupVarietiesCanonicalLaneLean.GroupVarietiesRationalityProperties

/-!
# Linear Reductive Structure Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure LinearReductiveStructurePackage {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P} where
  representationTheory : Prop
  completeReducibility : Prop
  maximalTorusExists : Prop
  weylGroupAction : Prop

structure LinearReductiveStructureEvidence {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P}
    (L : LinearReductiveStructurePackage R) where
  representationTheoryClosed : L.representationTheory
  completeReducibilityClosed : L.completeReducibility
  maximalTorusExistsClosed : L.maximalTorusExists
  weylGroupActionClosed : L.weylGroupAction

def LinearReductiveStructureClosed {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P}
    (L : LinearReductiveStructurePackage R) : Prop :=
  L.representationTheory ∧ L.completeReducibility ∧ L.maximalTorusExists ∧ L.weylGroupAction

theorem linear_reductive_structure_closed_from_evidence
    {A : AdmissibleClass} {P : AlgebraicGroupStructurePackage A}
    {R : RationalityPropertiesPackage P} (L : LinearReductiveStructurePackage R)
    (E : LinearReductiveStructureEvidence L) : LinearReductiveStructureClosed L := by
  exact And.intro E.representationTheoryClosed
    (And.intro E.completeReducibilityClosed
      (And.intro E.maximalTorusExistsClosed E.weylGroupActionClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse