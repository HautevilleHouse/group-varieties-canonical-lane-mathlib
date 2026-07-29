import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinitions

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupAction (G : GroupVariety) (X : GroupVariety) where
  group : GroupVariety := G
  variety : GroupVariety := X
  actionMap : GroupVarietyMorphism (GroupVariety.projective (by
    exact { coordinateRing := Unit, graded := True, projectiveEmbedding := True, groupLaw := True,
           gradedTerm := by trivial, projectiveEmbeddingTerm := by trivial, groupLawTerm := by trivial })) X
  compatibility : Prop
  compatibilityTerm : compatibility

def ActionClosed (G X : GroupVariety) (act : GroupAction G X) : Prop :=
  act.compatibility

theorem action_closed_from_evidence (G X : GroupVariety) (act : GroupAction G X) :
    ActionClosed G X act := by
  exact act.compatibilityTerm

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse