import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure AdmittedGenerator where
  generator : Type u
  closedGenerator : Prop
  semigroupFamily : Type v
  regularizedResolvent : Prop

structure AdmissibleClass where
  object : AdmittedGenerator
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.closedGenerator ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
