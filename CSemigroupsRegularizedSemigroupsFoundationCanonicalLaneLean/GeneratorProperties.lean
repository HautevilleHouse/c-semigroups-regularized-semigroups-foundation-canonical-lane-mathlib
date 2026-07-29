import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure GeneratorProperties (X : Type) where
  generator : X → X
  isIdempotent : generator ∘ generator = generator
  isQuasiNilpotent : ∀ x : X, ∃ n : ℕ, (generator ^[n]) x = x
  generatesSemigroup : Set.range generator ⊆ (CSemigroup.mk (Set.range generator) ?_ ?_ ?_).carrier
    where
    compositionClosed : ∀ f g ∈ Set.range generator, f ∘ g ∈ Set.range generator := by
      intro f g hf hg
      rcases hf with ⟨x, rfl⟩
      rcases hg with ⟨y, rfl⟩
      refine ⟨x, ?_⟩
      calc
        generator x ∘ generator y = generator (generator x ∘ y) := ?_
        _ = generator (x ∘ y) := ?_
        _ = generator (generator x ∘ generator y) := ?_
      sorry
    containsIdentity : id ∈ Set.range generator := ⟨?_, ?_⟩
    associative : ∀ f g h ∈ Set.range generator, (f ∘ g) ∘ h = f ∘ (g ∘ h) := by
      intro f g h hf hg hh
      rcases hf with ⟨x, rfl⟩; rcases hg with ⟨y, rfl⟩; rcases hh with ⟨z, rfl⟩
      simp

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse