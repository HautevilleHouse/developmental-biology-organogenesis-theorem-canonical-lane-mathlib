import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  sourceRegion : Prop
  diffusionCoefficient : Prop
  gradientProfile : Prop
  positionalInformation : Prop
  thresholdResponse : Prop

structure MorphogenGradientEvidence (G : MorphogenGradientPackage) where
  sourceRegionClosed : G.sourceRegion
  diffusionCoefficientClosed : G.diffusionCoefficient
  gradientProfileClosed : G.gradientProfile
  positionalInformationClosed : G.positionalInformation
  thresholdResponseClosed : G.thresholdResponse

def MorphogenGradientClosed (G : MorphogenGradientPackage) : Prop :=
  G.sourceRegion ∧ G.diffusionCoefficient ∧ G.gradientProfile ∧
  G.positionalInformation ∧ G.thresholdResponse

theorem morphogen_gradient_closed_from_evidence
    (G : MorphogenGradientPackage) (E : MorphogenGradientEvidence G) :
    MorphogenGradientClosed G := by
  exact And.intro E.sourceRegionClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.gradientProfileClosed
        (And.intro E.positionalInformationClosed E.thresholdResponseClosed)))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse