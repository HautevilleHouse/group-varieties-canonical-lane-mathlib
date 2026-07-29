import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinitions

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupVarietyMorphism (V W : GroupVariety) where
  source : GroupVariety := V
  target : GroupVariety := W
  underlyingMap : Type u
  homomorphism : Prop
  algebraic : Prop
  homomorphismTerm : homomorphism
  algebraicTerm : algebraic

def MorphismClosed (V W : GroupVariety) (f : GroupVarietyMorphism V W) : Prop :=
  f.homomorphism ∧ f.algebraic

theorem morphism_closed_from_evidence (V W : GroupVariety) (f : GroupVarietyMorphism V W) :
    MorphismClosed V W f := by
  exact And.intro f.homomorphismTerm f.algebraicTerm

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse