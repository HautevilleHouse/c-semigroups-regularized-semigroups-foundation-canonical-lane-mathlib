import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroup (X : Type) where
  carrier : Set (X → X)
  compositionClosed : ∀ f g ∈ carrier, f ∘ g ∈ carrier
  containsIdentity : id ∈ carrier
  associative : ∀ f g h ∈ carrier, (f ∘ g) ∘ h = f ∘ (g ∘ h)

structure RegularizedSemigroup (X : Type) extends CSemigroup X where
  generator : X → X
  regularizedProduct : (X → X) → (X → X) → (X → X)
  regularizationProperty : ∀ f g : X → X,
    (if f ∈ carrier ∧ g ∈ carrier then regularizedProduct f g = f ∘ g else regularizedProduct f g = generator ∘ f ∘ g) 
  idempotentRegularization : regularizedProduct generator generator = generator

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse