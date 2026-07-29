import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure C0SemigroupPackage where
  carrierSpace : Type u
  norm : carrierSpace → ℝ
  normedSpace : NormedAddCommGroup carrierSpace
  semigroupAction : carrierSpace → carrierSpace → carrierSpace
  identityElement : carrierSpace
  strongContinuity : Prop
  semigroupLaw : Prop
  boundedness : Prop

structure C0SemigroupEvidence (C : C0SemigroupPackage) where
  strongContinuityClosed : C.strongContinuity
  semigroupLawClosed : C.semigroupLaw
  boundednessClosed : C.boundedness

def C0SemigroupClosed (C : C0SemigroupPackage) : Prop :=
  C.strongContinuity ∧ C.semigroupLaw ∧ C.boundedness

theorem c0_semigroup_closed_from_evidence (C : C0SemigroupPackage)
    (E : C0SemigroupEvidence C) : C0SemigroupClosed C := by
  exact And.intro E.strongContinuityClosed
    (And.intro E.semigroupLawClosed E.boundednessClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse