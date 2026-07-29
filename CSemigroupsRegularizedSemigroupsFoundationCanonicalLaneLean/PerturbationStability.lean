import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure PerturbationStabilityPackage {R : RegularizedSemigroupPackage}
    {C : CSemigroupPackage R} {G : GenerationTheoremPackage C} where
  perturbationOperator : R.space → R.space
  relativeBound : Prop
  stabilityResult : Prop

structure PerturbationStabilityEvidence {R : RegularizedSemigroupPackage}
    {C : CSemigroupPackage R} {G : GenerationTheoremPackage C}
    (P : PerturbationStabilityPackage G) where
  relativeBoundClosed : P.relativeBound
  stabilityResultClosed : P.stabilityResult

def PerturbationStabilityClosed {R : RegularizedSemigroupPackage}
    {C : CSemigroupPackage R} {G : GenerationTheoremPackage C}
    (P : PerturbationStabilityPackage G) : Prop :=
  P.relativeBound ∧ P.stabilityResult

theorem perturbation_stability_closed_from_evidence {R : RegularizedSemigroupPackage}
    {C : CSemigroupPackage R} {G : GenerationTheoremPackage C}
    (P : PerturbationStabilityPackage G) (E : PerturbationStabilityEvidence P) :
    PerturbationStabilityClosed P := by
  exact And.intro E.relativeBoundClosed E.stabilityResultClosed

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse