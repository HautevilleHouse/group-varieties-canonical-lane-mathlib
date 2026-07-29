import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure GroupVariety where
  carrier : Type
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  associativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a : carrier, multiplication identity a = a
  identityRight : ∀ a : carrier, multiplication a identity = a
  inverseLeft : ∀ a : carrier, multiplication (inverse a) a = identity
  inverseRight : ∀ a : carrier, multiplication a (inverse a) = identity

structure GroupVarietyMorphism (G H : GroupVariety) where
  map : G.carrier → H.carrier
  preservesMultiplication : ∀ a b : G.carrier, map (G.multiplication a b) = H.multiplication (map a) (map b)

structure SubgroupVariety (G : GroupVariety) where
  carrier : Set G.carrier
  containsIdentity : G.identity ∈ carrier
  closedUnderMultiplication : ∀ a b, a ∈ carrier → b ∈ carrier → G.multiplication a b ∈ carrier
  closedUnderInverse : ∀ a, a ∈ carrier → G.inverse a ∈ carrier

structure NormalSubgroupVariety (G : GroupVariety) extends SubgroupVariety G where
  closedUnderConjugation : ∀ g : G.carrier, ∀ n : G.carrier, n ∈ carrier → G.multiplication (G.multiplication g n) (G.inverse g) ∈ carrier

structure QuotientGroupVariety (G : GroupVariety) (N : NormalSubgroupVariety G) where
  carrier : Type
  projection : G.carrier → carrier
  quotientMultiplication : carrier → carrier → carrier
  quotientIdentity : carrier
  quotientInverse : carrier → carrier
  projectionRespectsMultiplication : ∀ a b : G.carrier, projection (G.multiplication a b) = quotientMultiplication (projection a) (projection b)
  projectionSurjective : Function.Surjective projection
  kernelIsN : ∀ a : G.carrier, projection a = quotientIdentity ↔ a ∈ N.carrier

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse