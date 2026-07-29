import canonicalLaneMathlib.AdmissibleClass
import CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean.CSemigroupFoundation

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CSemigroupClosed (A.object : CSemigroupPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- A.object.conclusion should provide CSemigroupClosed
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse