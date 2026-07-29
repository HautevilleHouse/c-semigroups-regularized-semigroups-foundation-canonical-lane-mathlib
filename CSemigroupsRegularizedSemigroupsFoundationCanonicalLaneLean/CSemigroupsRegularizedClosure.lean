import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroupStructure where
  generator : Type u
  semigroupAction : Type v
  generationOrder : Prop
  resolventDefined : Prop
  regularizedFamilyConstructed : Prop
  closableGenerator : Prop

structure CSemigroupEvidence (G : CSemigroupStructure) where
  generationOrderClosed : G.generationOrder
  resolventDefinedClosed : G.resolventDefined
  regularizedFamilyConstructedClosed : G.regularizedFamilyConstructed
  closableGeneratorClosed : G.closableGenerator

def CSemigroupClosed (G : CSemigroupStructure) : Prop :=
  G.generationOrder ∧ G.resolventDefined ∧ G.regularizedFamilyConstructed ∧ G.closableGenerator

theorem c_semigroup_closed_from_evidence (G : CSemigroupStructure) (E : CSemigroupEvidence G) : CSemigroupClosed G := by
  exact And.intro E.generationOrderClosed (And.intro E.resolventDefinedClosed (And.intro E.regularizedFamilyConstructedClosed E.closableGeneratorClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
