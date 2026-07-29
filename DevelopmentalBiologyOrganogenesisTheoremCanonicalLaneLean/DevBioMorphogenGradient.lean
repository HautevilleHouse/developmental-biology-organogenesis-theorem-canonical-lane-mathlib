import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  gradientField : Type v
  diffusionCoefficient : Prop
  gradientEstablished : Prop
  thresholdResponse : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  gradientEstablishedClosed : M.gradientEstablished
  thresholdResponseClosed : M.thresholdResponse

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.diffusionCoefficient ∧ M.gradientEstablished ∧ M.thresholdResponse

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.gradientEstablishedClosed E.thresholdResponseClosed)

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse