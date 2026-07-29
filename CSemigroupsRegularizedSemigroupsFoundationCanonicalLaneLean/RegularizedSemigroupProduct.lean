import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure RegularizedSemigroupProduct (X : Type) where
  c : CSemigroup X
  r : RegularizedSemigroup X
  productConsistency : ∀ f g : X → X,
    (f ∈ c.carrier ∧ g ∈ c.carrier) → r.regularizedProduct f g = f ∘ g
  productRegularization : ∀ f g : X → X,
    ¬(f ∈ c.carrier ∧ g ∈ c.carrier) → r.regularizedProduct f g = r.generator ∘ f ∘ g

theorem product_regularization_idempotent (X : Type) (rsp : RegularizedSemigroupProduct X) :
    rsp.r.regularizedProduct rsp.r.generator rsp.r.generator = rsp.r.generator := by
  exact rsp.r.idempotentRegularization

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse