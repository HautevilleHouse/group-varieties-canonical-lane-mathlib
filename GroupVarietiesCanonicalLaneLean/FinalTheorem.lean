import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinitions
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.MorphismCategory
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupAction
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.JordanDecomposition
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.RepresentationTheory

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | GroupVariety.affine Aobj => GroupVarietyWitnessClosed (GroupVariety.affine Aobj)
  | GroupVariety.projective Pobj => GroupVarietyWitnessClosed (GroupVariety.projective Pobj)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedGroupVarietiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_varieties_endgame (A : AdmissibleClass) :
    ConstrainedGroupVarietiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse