import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.MorphogenGradient
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.GeneRegulatoryNetwork
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.CellDifferentiation

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorphogenGradientClosed (MorphogenGradientPackage.mk
    (morphogen := ()) (receptor := ()) (gradient := ()) (concentration := True)
    (binding := True) (transduction := True)) ∧
  GeneRegulatoryNetworkClosed (GeneRegulatoryNetworkPackage.mk
    (tf := ()) (target := ()) (interactions := ()) (topology := True)
    (feedback := True) (dynamics := True)) ∧
  CellDifferentiationClosed (CellDifferentiationPackage.mk
    (progenitor := ()) (differentiated := ()) (signaling := ()) (commitment := True)
    (epigenetic := True) (movement := True))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact morphogen_gradient_closed_from_evidence _ (MorphogenGradientEvidence.mk True.intro True.intro True.intro)
  · exact gene_regulatory_network_closed_from_evidence _ (GeneRegulatoryNetworkEvidence.mk True.intro True.intro True.intro)
  · exact cell_differentiation_closed_from_evidence _ (CellDifferentiationEvidence.mk True.intro True.intro True.intro)

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedOrganogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_organogenesis_endgame (A : AdmissibleClass) :
    ConstrainedOrganogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse