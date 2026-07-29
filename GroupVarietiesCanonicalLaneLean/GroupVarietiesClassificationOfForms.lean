import GroupVarietiesCanonicalLaneLean.GroupVarietiesLinearReductiveStructure

/-!
# Classification of Forms Package
-/

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure ClassificationOfFormsPackage {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P}
    {L : LinearReductiveStructurePackage R} where
  innerForms : Prop
  outerForms : Prop
  galoisCohomology : Prop
  classificationTheorem : Prop

structure ClassificationOfFormsEvidence {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P}
    {L : LinearReductiveStructurePackage R} (C : ClassificationOfFormsPackage L) where
  innerFormsClosed : C.innerForms
  outerFormsClosed : C.outerForms
  galoisCohomologyClosed : C.galoisCohomology
  classificationTheoremClosed : C.classificationTheorem

def ClassificationOfFormsClosed {A : AdmissibleClass}
    {P : AlgebraicGroupStructurePackage A} {R : RationalityPropertiesPackage P}
    {L : LinearReductiveStructurePackage R} (C : ClassificationOfFormsPackage L) : Prop :=
  C.innerForms ∧ C.outerForms ∧ C.galoisCohomology ∧ C.classificationTheorem

theorem classification_of_forms_closed_from_evidence
    {A : AdmissibleClass} {P : AlgebraicGroupStructurePackage A}
    {R : RationalityPropertiesPackage P} {L : LinearReductiveStructurePackage R}
    (C : ClassificationOfFormsPackage L) (E : ClassificationOfFormsEvidence C) :
    ClassificationOfFormsClosed C := by
  exact And.intro E.innerFormsClosed
    (And.intro E.outerFormsClosed
      (And.intro E.galoisCohomologyClosed E.classificationTheoremClosed))

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse