import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroupFoundation where
  object : Type
  cSemigroup : CSemigroup object
  regularizedSemigroup : RegularizedSemigroup object
  product : RegularizedSemigroupProduct object

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let F := A.object
  CSemigroup.compositionClosed (F.cSemigroup : CSemigroup (F.object : Type)) ∧
  RegularizedSemigroup.regularizationProperty (F.regularizedSemigroup : RegularizedSemigroup (F.object : Type))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨obj, csem, reg, prod, comp, regprop, h⟩
  unfold bridgeClosed
  simp [comp, regprop]

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse