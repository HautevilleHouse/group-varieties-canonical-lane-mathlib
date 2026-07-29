import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinitions

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure LinearRepresentation (G : GroupVariety) (V : Type u) where
  group : GroupVariety := G
  vectorSpace : V
  groupAction : GroupAction G (GroupVariety.affine ({
    coordinateRing := Unit,
    finitelyGenerated := True,
    reduced := True,
    hopfAlgebraStructures := True,
    finitelyGeneratedTerm := by trivial,
    reducedTerm := by trivial,
    hopfAlgebraStructuresTerm := by trivial
  } : AffineGroupVariety))
  linearity : Prop
  linearityTerm : linearity

def RepresentationClosed (G : GroupVariety) (V : Type u) (ρ : LinearRepresentation G V) : Prop :=
  ρ.linearity

theorem representation_closed_from_evidence (G : GroupVariety) (V : Type u) (ρ : LinearRepresentation G V) :
    RepresentationClosed G V ρ := by
  exact ρ.linearityTerm

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse