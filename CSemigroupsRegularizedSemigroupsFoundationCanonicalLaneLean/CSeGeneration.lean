import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure CSeGenerationPackage where
  generator : Type u
  semigroupFamily : Type v
  hilleYosidaCondition : Prop
  miyaderaCondition : Prop
  generationEstimate : Prop

structure CSeGenerationEvidence (P : CSeGenerationPackage) where
  hilleYosidaConditionClosed : P.hilleYosidaCondition
  miyaderaConditionClosed : P.miyaderaCondition
  generationEstimateClosed : P.generationEstimate

def CSeGenerationClosed (P : CSeGenerationPackage) : Prop :=
  P.hilleYosidaCondition ∧ P.miyaderaCondition ∧ P.generationEstimate

theorem cse_generation_closed_from_evidence (P : CSeGenerationPackage)
    (E : CSeGenerationEvidence P) : CSeGenerationClosed P := by
  exact And.intro E.hilleYosidaConditionClosed
    (And.intro E.miyaderaConditionClosed E.generationEstimateClosed)

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse
