import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroup (X : Type u) where
  family : Set (X → X)
  compositionClosed : Prop
  containsIdentity : Prop
  strongContinuity : Prop

structure CSemigroupEvidence (C : CSemigroup X) where
  compositionClosedTerm : C.compositionClosed
  containsIdentityTerm : C.containsIdentity
  strongContinuityTerm : C.strongContinuity

def CSemigroupClosed (C : CSemigroup X) : Prop :=
  C.compositionClosed ∧ C.containsIdentity ∧ C.strongContinuity

theorem c_semigroup_closed_from_evidence (C : CSemigroup X) (E : CSemigroupEvidence C) :
    CSemigroupClosed C := by
  exact And.intro E.compositionClosedTerm (And.intro E.containsIdentityTerm E.strongContinuityTerm)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse