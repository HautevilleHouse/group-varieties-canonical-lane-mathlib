import GroupVarietiesCanonicalLaneLean.GroupVarietiesAdmissibleClass

/-!
# Algebraic Group Structure Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AlgebraicGroupStructurePackage (A : AdmissibleClass) where
  multiplicationMorphism : Prop
  inversionMorphism : Prop
  identityPoint : Prop
  groupLaws : Prop

structure AlgebraicGroupStructureEvidence {A : AdmissibleClass} (P : AlgebraicGroupStructurePackage A) where
  multiplicationMorphismClosed : P.multiplicationMorphism
  inversionMorphismClosed : P.inversionMorphism
  identityPointClosed : P.identityPoint
  groupLawsClosed : P.groupLaws

def AlgebraicGroupStructureClosed {A : AdmissibleClass} (P : AlgebraicGroupStructurePackage A) : Prop :=
  P.multiplicationMorphism ∧ P.inversionMorphism ∧ P.identityPoint ∧ P.groupLaws

theorem algebraic_group_structure_closed_from_evidence
    {A : AdmissibleClass} (P : AlgebraicGroupStructurePackage A)
    (E : AlgebraicGroupStructureEvidence P) : AlgebraicGroupStructureClosed P := by
  exact And.intro E.multiplicationMorphismClosed
    (And.intro E.inversionMorphismClosed
      (And.intro E.identityPointClosed E.groupLawsClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse