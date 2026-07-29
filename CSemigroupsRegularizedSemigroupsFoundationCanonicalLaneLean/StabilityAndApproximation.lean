import CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.Wellposedness

/-!
# Stability and approximation package
-/

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure StabilityApproximationPackage (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) where
  asymptoticStability : Prop
  exponentialDecay : Prop
  numericalApproximation : Prop
  convergenceRate : Prop

structure StabilityApproximationEvidence (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) (S : StabilityApproximationPackage O G R W) where
  asymptoticStabilityClosed : S.asymptoticStability
  exponentialDecayClosed : S.exponentialDecay
  numericalApproximationClosed : S.numericalApproximation
  convergenceRateClosed : S.convergenceRate

def StabilityApproximationClosed (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) (S : StabilityApproximationPackage O G R W) : Prop :=
  S.asymptoticStability ∧ S.exponentialDecay ∧ S.numericalApproximation ∧ S.convergenceRate

theorem stability_approximation_closed_from_evidence (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) (S : StabilityApproximationPackage O G R W)
    (E : StabilityApproximationEvidence O G R W S) :
    StabilityApproximationClosed O G R W S := by
  exact And.intro E.asymptoticStabilityClosed
    (And.intro E.exponentialDecayClosed
      (And.intro E.numericalApproximationClosed E.convergenceRateClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
