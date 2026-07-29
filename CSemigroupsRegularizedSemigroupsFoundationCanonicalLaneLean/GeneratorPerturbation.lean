import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure GeneratorPerturbationPackage where
  originalGenerator : carrierSpace → carrierSpace
  perturbation : carrierSpace → carrierSpace
  perturbedGenerator : carrierSpace → carrierSpace
  domain : Set carrierSpace
  closable : Prop
  perturbationClosed : Prop
  generatesSemigroup : Prop

structure GeneratorPerturbationEvidence (G : GeneratorPerturbationPackage) where
  closableClosed : G.closable
  perturbationClosedClosed : G.perturbationClosed
  generatesSemigroupClosed : G.generatesSemigroup

def GeneratorPerturbationClosed (G : GeneratorPerturbationPackage) : Prop :=
  G.closable ∧ G.perturbationClosed ∧ G.generatesSemigroup

theorem generator_perturbation_closed_from_evidence
    (G : GeneratorPerturbationPackage) (E : GeneratorPerturbationEvidence G) :
    GeneratorPerturbationClosed G := by
  exact And.intro E.closableClosed
    (And.intro E.perturbationClosedClosed E.generatesSemigroupClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse