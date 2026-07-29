import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure GeneratorTheoremPackage {X : Type u} {C : CSemigroup X} (R : RegularizedSemigroup X C) where
  generator : X → X
  domain : Set X
  range : Set X
  generationClosed : Prop
  resolventExists : Prop

structure GeneratorTheoremEvidence {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    (G : GeneratorTheoremPackage R) where
  generationClosedTerm : G.generationClosed
  resolventExistsTerm : G.resolventExists

def GeneratorTheoremClosed {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    (G : GeneratorTheoremPackage R) : Prop :=
  G.generationClosed ∧ G.resolventExists

theorem generator_theorem_closed_from_evidence
    {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    (G : GeneratorTheoremPackage R) (E : GeneratorTheoremEvidence G) :
    GeneratorTheoremClosed G := by
  exact And.intro E.generationClosedTerm E.resolventExistsTerm

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse