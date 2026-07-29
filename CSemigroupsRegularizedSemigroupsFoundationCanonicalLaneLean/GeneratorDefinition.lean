import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.CSemigroupDefinition

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure Generator (C : CSemigroup X) where
  domain : Set X
  action : X → X
  generatorRelation : ∀ x ∈ domain,
    HasDerivAt (fun t : ℝ => C.family t x) (action x) 0

def generatorClosed (G : Generator C) : Prop :=
  ∀ x ∈ G.domain,
    HasDerivAt (fun t : ℝ => C.family t x) (G.action x) 0

theorem generator_closed (G : Generator C) : generatorClosed G := by
  intro x hx
  exact G.generatorRelation x hx

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse