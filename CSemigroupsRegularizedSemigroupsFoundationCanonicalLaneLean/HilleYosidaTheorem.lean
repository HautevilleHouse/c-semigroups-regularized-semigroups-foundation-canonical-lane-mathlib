import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure HilleYosidaPackage {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    (G : GeneratorTheoremPackage R) where
  resolventEstimate : Prop
  generationCondition : Prop
  semigroupRepresentation : Prop

structure HilleYosidaEvidence {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} (H : HilleYosidaPackage G) where
  resolventEstimateTerm : H.resolventEstimate
  generationConditionTerm : H.generationCondition
  semigroupRepresentationTerm : H.semigroupRepresentation

def HilleYosidaClosed {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} (H : HilleYosidaPackage G) : Prop :=
  H.resolventEstimate ∧ H.generationCondition ∧ H.semigroupRepresentation

theorem hille_yosida_closed_from_evidence
    {X : Type u} {C : CSemigroup X} {R : RegularizedSemigroup X C}
    {G : GeneratorTheoremPackage R} (H : HilleYosidaPackage G)
    (E : HilleYosidaEvidence H) : HilleYosidaClosed H := by
  exact And.intro E.resolventEstimateTerm (And.intro E.generationConditionTerm E.semigroupRepresentationTerm)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse