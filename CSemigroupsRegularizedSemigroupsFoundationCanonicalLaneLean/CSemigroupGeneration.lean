import CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.CSemigroupAdmissibleClass

/-!
# C-semigroup generation package
-/

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroupGenerationPackage (O : CSemigroupAdmittedObject) where
  abstractCauchyProblem : Prop
  mildSolution : Prop
  generationTheorem : Prop
  regularityTransfer : Prop

structure CSemigroupGenerationEvidence (O : CSemigroupAdmittedObject)
    (P : CSemigroupGenerationPackage O) where
  abstractCauchyProblemClosed : P.abstractCauchyProblem
  mildSolutionClosed : P.mildSolution
  generationTheoremClosed : P.generationTheorem
  regularityTransferClosed : P.regularityTransfer

def CSemigroupGenerationClosed (O : CSemigroupAdmittedObject)
    (P : CSemigroupGenerationPackage O) : Prop :=
  P.abstractCauchyProblem ∧ P.mildSolution ∧ P.generationTheorem ∧ P.regularityTransfer

theorem csemigroup_generation_closed_from_evidence (O : CSemigroupAdmittedObject)
    (P : CSemigroupGenerationPackage O) (E : CSemigroupGenerationEvidence O P) :
    CSemigroupGenerationClosed O P := by
  exact And.intro E.abstractCauchyProblemClosed
    (And.intro E.mildSolutionClosed
      (And.intro E.generationTheoremClosed E.regularityTransferClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
