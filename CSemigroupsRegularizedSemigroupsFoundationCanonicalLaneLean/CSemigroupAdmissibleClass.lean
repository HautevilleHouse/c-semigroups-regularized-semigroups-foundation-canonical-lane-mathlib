import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSemigroupAdmittedObject where
  space : Type u
  semigroupOperation : space → space → space
  regularityProp : Prop
  continuityCondition : Prop
  generator : Type v
  generatorMapping : generator → (space → space)
  conclusion : regularityProp ∧ continuityCondition

structure CSemigroupEndgameState where
  object : CSemigroupAdmittedObject

def CSemigroupWitnessClosed (O : CSemigroupAdmittedObject) : Prop :=
  O.conclusion

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
