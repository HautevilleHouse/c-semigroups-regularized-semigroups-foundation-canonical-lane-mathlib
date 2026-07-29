import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure RegularizedSemigroupPackage where
  baseSemigroup : C0SemigroupPackage
  regularizationParameter : ℝ
  regularizedAction : carrierSpace → carrierSpace → carrierSpace
  regularizationProperty : Prop
  convergenceToSemigroup : Prop

structure RegularizedSemigroupEvidence (R : RegularizedSemigroupPackage) where
  regularizationPropertyClosed : R.regularizationProperty
  convergenceToSemigroupClosed : R.convergenceToSemigroup

def RegularizedSemigroupClosed (R : RegularizedSemigroupPackage) : Prop :=
  R.regularizationProperty ∧ R.convergenceToSemigroup

theorem regularized_semigroup_closed_from_evidence
    (R : RegularizedSemigroupPackage) (E : RegularizedSemigroupEvidence R) :
    RegularizedSemigroupClosed R := by
  exact And.intro E.regularizationPropertyClosed E.convergenceToSemigroupClosed

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse