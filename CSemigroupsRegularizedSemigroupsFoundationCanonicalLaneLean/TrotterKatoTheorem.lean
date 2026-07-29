import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean

structure TrotterKatoPackage where
  sequenceOfGenerators : ℕ → (carrierSpace → carrierSpace)
  limitGenerator : carrierSpace → carrierSpace
  convergenceCondition : Prop
  coreCondition : Prop
  graphConvergence : Prop
  semigroupConvergence : Prop

structure TrotterKatoEvidence (T : TrotterKatoPackage) where
  convergenceConditionClosed : T.convergenceCondition
  coreConditionClosed : T.coreCondition
  graphConvergenceClosed : T.graphConvergence
  semigroupConvergenceClosed : T.semigroupConvergence

def TrotterKatoClosed (T : TrotterKatoPackage) : Prop :=
  T.convergenceCondition ∧ T.coreCondition ∧ T.graphConvergence ∧ T.semigroupConvergence

theorem trotter_kato_closed_from_evidence (T : TrotterKatoPackage)
    (E : TrotterKatoEvidence T) : TrotterKatoClosed T := by
  exact And.intro E.convergenceConditionClosed
    (And.intro E.coreConditionClosed
      (And.intro E.graphConvergenceClosed E.semigroupConvergenceClosed))

end CSemigroupsRegularizedSemigroupsFoundationCanonicalLaneLean
end HautevilleHouse