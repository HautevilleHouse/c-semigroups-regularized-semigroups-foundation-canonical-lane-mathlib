import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure RegularizationIdeal (X : Type) where
  ideal : Set (X → X)
  closedUnderRegularization : ∀ f : X → X, f ∈ ideal → f ∘ f ∈ ideal
  containsGenerator : generator ∈ ideal
    where generator : X → X := ?_

structure IdealProperties (X : Type) where
  ideal : RegularizationIdeal X
  principalIdeal : Set (X → X) := {f | ∃ g : X → X, f = ideal.generator ∘ g ∘ ideal.generator}
  generationProperty : ∀ f : X → X, f ∈ ideal.ideal ↔ f ∈ principalIdeal

theorem ideal_contains_regularized_product (X : Type) (ip : IdealProperties X) (f g : X → X) :
    ip.ideal.ideal (ip.ideal.regularizedProduct f g) := by
  sorry

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse