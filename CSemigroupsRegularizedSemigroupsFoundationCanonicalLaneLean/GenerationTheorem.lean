import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure GenerationPackage where
  generator : Type u
  domain : Type v
  resolventEstimates : Prop
  semigroupConstruction : Prop
  generationEvidence : resolventEstimates ∧ semigroupConstruction

def GenerationClosed (G : GenerationPackage) : Prop :=
  G.resolventEstimates ∧ G.semigroupConstruction

theorem generation_closed_from_evidence (G : GenerationPackage) (E : G.generationEvidence) :
    GenerationClosed G := by
  exact E

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse