import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  ligandType : Type u
  receptorType : Type v
  gradientProfile : Type w
  concentrationLevels : Prop
  receptorBindingAffinity : Prop
  signalTransductionCascade : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  concentrationLevelsClosed : M.concentrationLevels
  receptorBindingAffinityClosed : M.receptorBindingAffinity
  signalTransductionCascadeClosed : M.signalTransductionCascade

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.concentrationLevels ∧ M.receptorBindingAffinity ∧ M.signalTransductionCascade

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.concentrationLevelsClosed
    (And.intro E.receptorBindingAffinityClosed E.signalTransductionCascadeClosed)

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse