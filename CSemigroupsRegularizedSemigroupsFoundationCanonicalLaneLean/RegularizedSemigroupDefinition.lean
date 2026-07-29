import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSGRegularizedSGCanonical

structure RegularizedSemigroup (X : BanachSpace) (R : X.carrier → X.carrier) where
  family : ℝ → (X.carrier → X.carrier)
  regularizedProperty : ∀ s t, R ∘ family (s + t) = (family s ∘ R) ∘ (family t ∘ R)
  strongContinuity : ∀ x, ContinuousAt (fun t => family t x) 0
  boundedness : ∃ M ω, ∀ t ≥ 0, ‖family t‖ ≤ M * exp (ω * t)

def RegularizedSemigroupClosed (X : BanachSpace) (R : X.carrier → X.carrier) (A : RegularizedSemigroup X R) : Prop :=
  A.regularizedProperty ∧ A.strongContinuity ∧ A.boundedness

end CSGRegularizedSGCanonical
end HautevilleHouse