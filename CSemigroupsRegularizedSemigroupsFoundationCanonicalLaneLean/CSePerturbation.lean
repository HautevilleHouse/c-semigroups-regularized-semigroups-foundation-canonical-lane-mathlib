import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSePerturbationPackage where
  baseGenerator : Type u
  perturbation : Type v
  relativeBoundedness : Prop
  generationPreserved : Prop
  spectralStability : Prop

structure CSePerturbationEvidence (P : CSePerturbationPackage) where
  relativeBoundednessClosed : P.relativeBoundedness
  generationPreservedClosed : P.generationPreserved
  spectralStabilityClosed : P.spectralStability

def CSePerturbationClosed (P : CSePerturbationPackage) : Prop :=
  P.relativeBoundedness ∧ P.generationPreserved ∧ P.spectralStability

theorem cse_perturbation_closed_from_evidence (P : CSePerturbationPackage)
    (E : CSePerturbationEvidence P) : CSePerturbationClosed P := by
  exact And.intro E.relativeBoundednessClosed
    (And.intro E.generationPreservedClosed E.spectralStabilityClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
