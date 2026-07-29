import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.CSemigroupDefinition
import HautevilleHouse.CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.GeneratorDefinition

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure ResolventSet (G : Generator C) where
  λ : ℂ
  resolvent : X → X
  resolventEquation : ∀ x : X, (λ • (fun x' : X => x') - G.action) (resolvent x) = x

def ResolventSetClosed (R : ResolventSet G) : Prop :=
  ∀ x : X, (R.λ • (fun x' : X => x') - G.action) (R.resolvent x) = x

theorem resolvent_set_closed (R : ResolventSet G) : ResolventSetClosed R := by
  intro x
  exact R.resolventEquation x

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse