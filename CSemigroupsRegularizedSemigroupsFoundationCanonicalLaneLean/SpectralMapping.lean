import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSGRegularizedSGCanonical

structure SpectralMappingEvidence (X : BanachSpace) (A : Generator X) (S : CSemigroup X) where
  spectrumRelation : ∀ λ ∈ spectrum A.action, exp (λ) ∈ spectrum (S.family 1)
  converseInclusion : ∀ μ ∈ spectrum (S.family 1), ∃ λ ∈ spectrum A.action, exp (λ) = μ

def SpectralMappingClosed (X : BanachSpace) (A : Generator X) (S : CSemigroup X) : Prop :=
  SpectralMappingEvidence X A S

end CSGRegularizedSGCanonical
end HautevilleHouse