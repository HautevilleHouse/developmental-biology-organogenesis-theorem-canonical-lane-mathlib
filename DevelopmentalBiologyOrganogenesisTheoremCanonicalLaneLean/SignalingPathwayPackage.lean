import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.GeneRegulatoryNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure SignalingPathwayPackage {N : GeneRegulatoryNetworkPackage} where
  ligandReceptorBinding : Prop
  intracellularCascade : Prop
  signalTransduction : Prop
  feedbackLoops : Prop
  crosstalk : Prop

structure SignalingPathwayEvidence {N : GeneRegulatoryNetworkPackage}
    (P : SignalingPathwayPackage N) where
  ligandReceptorBindingClosed : P.ligandReceptorBinding
  intracellularCascadeClosed : P.intracellularCascade
  signalTransductionClosed : P.signalTransduction
  feedbackLoopsClosed : P.feedbackLoops
  crosstalkClosed : P.crosstalk

def SignalingPathwayClosed {N : GeneRegulatoryNetworkPackage}
    (P : SignalingPathwayPackage N) : Prop :=
  P.ligandReceptorBinding ∧ P.intracellularCascade ∧
  P.signalTransduction ∧ P.feedbackLoops ∧ P.crosstalk

theorem signaling_pathway_closed_from_evidence
    {N : GeneRegulatoryNetworkPackage} (P : SignalingPathwayPackage N)
    (E : SignalingPathwayEvidence P) : SignalingPathwayClosed P := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.intracellularCascadeClosed
      (And.intro E.signalTransductionClosed
        (And.intro E.feedbackLoopsClosed E.crosstalkClosed)))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse