import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure AbstractCauchyProblemPackage where
  stateSpace : Type u
  norm : stateSpace → ℝ
  normedSpace : NormedAddCommGroup stateSpace
  generator : stateSpace → stateSpace
  initialCondition : stateSpace
  solution : ℝ → stateSpace
  existence : Prop
  uniqueness : Prop
  continuousDependence : Prop
  semigroupRepresentation : Prop

structure AbstractCauchyProblemEvidence (A : AbstractCauchyProblemPackage) where
  existenceClosed : A.existence
  uniquenessClosed : A.uniqueness
  continuousDependenceClosed : A.continuousDependence
  semigroupRepresentationClosed : A.semigroupRepresentation

def AbstractCauchyProblemClosed (A : AbstractCauchyProblemPackage) : Prop :=
  A.existence ∧ A.uniqueness ∧ A.continuousDependence ∧ A.semigroupRepresentation

theorem abstract_cauchy_problem_closed_from_evidence
    (A : AbstractCauchyProblemPackage) (E : AbstractCauchyProblemEvidence A) :
    AbstractCauchyProblemClosed A := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed
      (And.intro E.continuousDependenceClosed E.semigroupRepresentationClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse