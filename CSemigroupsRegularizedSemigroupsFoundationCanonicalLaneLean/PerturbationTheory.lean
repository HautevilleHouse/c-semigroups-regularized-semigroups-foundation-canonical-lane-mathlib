import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure PerturbationPackage {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} (H : HilleYosidaPackage G) where
  perturbation : X → X
  boundedness : Prop
  stability : Prop
  perturbedGenerator : Prop

structure PerturbationEvidence {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} {H : HilleYosidaPackage G}
    (P : PerturbationPackage H) where
  boundednessTerm : P.boundedness
  stabilityTerm : P.stability
  perturbedGeneratorTerm : P.perturbedGenerator

def PerturbationClosed {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} {H : HilleYosidaPackage G}
    (P : PerturbationPackage H) : Prop :=
  P.boundedness ∧ P.stability ∧ P.perturbedGenerator

theorem perturbation_closed_from_evidence
    {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} {H : HilleYosidaPackage G}
    (P : PerturbationPackage H) (E : PerturbationEvidence P) : PerturbationClosed P := by
  exact And.intro E.boundednessTerm (And.intro E.stabilityTerm E.perturbedGeneratorTerm)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse