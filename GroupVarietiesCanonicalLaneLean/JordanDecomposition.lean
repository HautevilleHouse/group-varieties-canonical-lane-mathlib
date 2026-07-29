import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupVarietyDefinitions

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure JordanDecomposition (G : GroupVariety) where
  group : GroupVariety := G
  unipotentPart : GroupVariety
  semisimplePart : GroupVariety
  decomposition : Prop
  uniqueness : Prop
  decompositionTerm : decomposition
  uniquenessTerm : uniqueness

def JordanDecompositionClosed (G : GroupVariety) (J : JordanDecomposition G) : Prop :=
  J.decomposition ∧ J.uniqueness

theorem jordan_decomposition_closed_from_evidence (G : GroupVariety) (J : JordanDecomposition G) :
    JordanDecompositionClosed G J := by
  exact And.intro J.decompositionTerm J.uniquenessTerm

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse