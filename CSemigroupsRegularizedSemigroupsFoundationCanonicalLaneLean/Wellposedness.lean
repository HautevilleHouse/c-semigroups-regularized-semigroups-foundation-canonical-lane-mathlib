import CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.RegularizedSemigroup

/-!
# Well-posedness package
-/

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure WellposednessPackage (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G) where
  uniqueSolution : Prop
  continuousDependence : Prop
  maximalExistence : Prop
  blowupCriterion : Prop

structure WellposednessEvidence (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) where
  uniqueSolutionClosed : W.uniqueSolution
  continuousDependenceClosed : W.continuousDependence
  maximalExistenceClosed : W.maximalExistence
  blowupCriterionClosed : W.blowupCriterion

def WellposednessClosed (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) : Prop :=
  W.uniqueSolution ∧ W.continuousDependence ∧ W.maximalExistence ∧ W.blowupCriterion

theorem wellposedness_closed_from_evidence (O : CSemigroupAdmittedObject)
    (G : CSemigroupGenerationPackage O) (R : RegularizedSemigroupPackage O G)
    (W : WellposednessPackage O G R) (E : WellposednessEvidence O G R W) :
    WellposednessClosed O G R W := by
  exact And.intro E.uniqueSolutionClosed
    (And.intro E.continuousDependenceClosed
      (And.intro E.maximalExistenceClosed E.blowupCriterionClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
