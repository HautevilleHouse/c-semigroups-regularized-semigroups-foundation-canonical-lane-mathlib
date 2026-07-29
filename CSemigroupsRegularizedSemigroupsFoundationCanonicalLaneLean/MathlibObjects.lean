import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSeSemigroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CSeAdmittedObject where
  space : CSeSemigroupSpace
  isBanachSpace : Prop
  cSemigroup : Type
  regularizedSemigroup : Type
  generationProperty : Prop
  conclusion : generationProperty

structure CSeEndgameState where
  object : CSeAdmittedObject

def CSeWitnessClosed (O : CSeAdmittedObject) : Prop :=
  O.generationProperty

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
