import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSeEndpointClassificationPackage where
  generatorComplete : Prop
  integratedSemigroup : Type u
  maximalRegularity : Prop
  endpointReached : Prop

structure CSeEndpointClassificationEvidence (P : CSeEndpointClassificationPackage) where
  generatorCompleteClosed : P.generatorComplete
  integratedSemigroupClosed : Type u
  maximalRegularityClosed : P.maximalRegularity
  endpointReachedClosed : P.endpointReached

def CSeEndpointClassificationClosed (P : CSeEndpointClassificationPackage) : Prop :=
  P.generatorComplete ∧ P.maximalRegularity ∧ P.endpointReached

theorem cse_endpoint_classification_closed_from_evidence
    (P : CSeEndpointClassificationPackage)
    (E : CSeEndpointClassificationEvidence P) : CSeEndpointClassificationClosed P := by
  exact And.intro E.generatorCompleteClosed
    (And.intro E.maximalRegularityClosed E.endpointReachedClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
