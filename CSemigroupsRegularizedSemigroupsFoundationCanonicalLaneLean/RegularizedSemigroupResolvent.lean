import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure RegularizedSemigroupResolventPackage where
  resolventSet : Type u
  resolventOperator : Type v
  growthCondition : Prop
  inversionFormula : Prop
  perturbationStability : Prop

structure RegularizedSemigroupResolventEvidence (P : RegularizedSemigroupResolventPackage) where
  growthConditionClosed : P.growthCondition
  inversionFormulaClosed : P.inversionFormula
  perturbationStabilityClosed : P.perturbationStability

def RegularizedSemigroupResolventClosed (P : RegularizedSemigroupResolventPackage) : Prop :=
  P.growthCondition ∧ P.inversionFormula ∧ P.perturbationStability

theorem regularized_semigroup_resolvent_closed_from_evidence
    (P : RegularizedSemigroupResolventPackage)
    (E : RegularizedSemigroupResolventEvidence P) : RegularizedSemigroupResolventClosed P := by
  exact And.intro E.growthConditionClosed
    (And.intro E.inversionFormulaClosed E.perturbationStabilityClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
