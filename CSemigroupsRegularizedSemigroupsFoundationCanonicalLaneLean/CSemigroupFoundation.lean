import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroupPackage where
  carrier : Type u
  semigroupOp : carrier → carrier → carrier
  cParameter : carrier → carrier → Prop
  associativity : ∀ a b c : carrier, cParameter (semigroupOp a b) c = cParameter a (semigroupOp b c)
  continuityCondition : Prop

structure RegularizationPackage (C : CSemigroupPackage) where
  regularizedOp : C.carrier → C.carrier → C.carrier
  regularizationParameter : ℝ
  limRegularization : Prop
  limRegularizationProof : limRegularization

structure CSemigroupEvidence (C : CSemigroupPackage) where
  associativityClosed : C.associativity
  continuityConditionClosed : C.continuityCondition

structure RegularizationEvidence {C : CSemigroupPackage} (R : RegularizationPackage C) where
  limRegularizationClosed : R.limRegularization

def CSemigroupClosed (C : CSemigroupPackage) : Prop :=
  C.associativity ∧ C.continuityCondition

theorem c_semigroup_closed_from_evidence (C : CSemigroupPackage) (E : CSemigroupEvidence C) :
    CSemigroupClosed C := by
  exact And.intro E.associativityClosed E.continuityConditionClosed

def RegularizationClosed {C : CSemigroupPackage} (R : RegularizationPackage C) : Prop :=
  R.limRegularization

theorem regularization_closed_from_evidence {C : CSemigroupPackage} (R : RegularizationPackage C) (E : RegularizationEvidence R) :
    RegularizationClosed R := by
  exact E.limRegularizationClosed

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse