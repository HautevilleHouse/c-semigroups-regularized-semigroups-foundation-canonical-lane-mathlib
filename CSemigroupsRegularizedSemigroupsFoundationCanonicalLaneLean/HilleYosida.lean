import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure HilleYosidaPackage where
  operator : Type u
  resolventSet : Prop
  growthBound : Prop
  denseRange : Prop
  hyEvidence : resolventSet ∧ growthBound ∧ denseRange

def HilleYosidaClosed (H : HilleYosidaPackage) : Prop :=
  H.resolventSet ∧ H.growthBound ∧ H.denseRange

theorem hille_yosida_closed_from_evidence (H : HilleYosidaPackage) (E : H.hyEvidence) :
    HilleYosidaClosed H := by
  exact E

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse