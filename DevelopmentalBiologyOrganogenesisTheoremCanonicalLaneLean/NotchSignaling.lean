import DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.MorphogenGradient

/-!
# Notch Signaling Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure NotchSignalingPackage where
  notchReceptor : Type
  deltaLigand : Type
  lateralInhibition : Prop
  boundarySharpen : Prop
  cellFateDecision : Prop

structure NotchSignalingEvidence (N : NotchSignalingPackage) where
  notchReceptorClosed : N.notchReceptor
  deltaLigandClosed : N.deltaLigand
  lateralInhibitionClosed : N.lateralInhibition
  boundarySharpenClosed : N.boundarySharpen
  cellFateDecisionClosed : N.cellFateDecision

def NotchSignalingClosed (N : NotchSignalingPackage) : Prop :=
  N.notchReceptor ∧ N.deltaLigand ∧ N.lateralInhibition ∧ N.boundarySharpen ∧ N.cellFateDecision

theorem notch_signaling_closed_from_evidence
    (N : NotchSignalingPackage) (E : NotchSignalingEvidence N) :
    NotchSignalingClosed N := by
  exact And.intro E.notchReceptorClosed
    (And.intro E.deltaLigandClosed
      (And.intro E.lateralInhibitionClosed
        (And.intro E.boundarySharpenClosed E.cellFateDecisionClosed)))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse