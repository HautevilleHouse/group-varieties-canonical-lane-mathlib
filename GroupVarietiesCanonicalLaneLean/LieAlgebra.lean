import HautevilleHouse.GroupVarietiesCanonicalLaneLean.TangentBundle

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure LieAlgebraPackage (G : GroupVarietyDefinition) (T : TangentBundlePackage G) where
  underlyingSpace : Type u
  bracket : underlyingSpace → underlyingSpace → underlyingSpace
  bilinear : Prop
  antisymmetric : Prop
  jacobiIdentity : Prop

structure LieAlgebraEvidence {G : GroupVarietyDefinition} {T : TangentBundlePackage G}
    (L : LieAlgebraPackage G T) where
  bilinearClosed : L.bilinear
  antisymmetricClosed : L.antisymmetric
  jacobiIdentityClosed : L.jacobiIdentity

def LieAlgebraClosed {G : GroupVarietyDefinition} {T : TangentBundlePackage G}
    (L : LieAlgebraPackage G T) : Prop :=
  L.bilinear ∧ L.antisymmetric ∧ L.jacobiIdentity

theorem lie_algebra_closed_from_evidence {G : GroupVarietyDefinition} {T : TangentBundlePackage G}
    (L : LieAlgebraPackage G T) (E : LieAlgebraEvidence L) : LieAlgebraClosed L :=
  And.intro E.bilinearClosed (And.intro E.antisymmetricClosed E.jacobiIdentityClosed)

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse