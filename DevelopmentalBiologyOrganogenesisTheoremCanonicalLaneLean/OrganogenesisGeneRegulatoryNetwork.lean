import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryEdges : Type w
  activationRules : Prop
  repressionRules : Prop
  networkTopology : Prop
  booleanDynamics : Prop

structure GeneRegulatoryNetworkEvidence (N : GeneRegulatoryNetworkPackage) where
  activationRulesClosed : N.activationRules
  repressionRulesClosed : N.repressionRules
  networkTopologyClosed : N.networkTopology
  booleanDynamicsClosed : N.booleanDynamics

def GeneRegulatoryNetworkClosed (N : GeneRegulatoryNetworkPackage) : Prop :=
  N.activationRules ∧ N.repressionRules ∧ N.networkTopology ∧ N.booleanDynamics

theorem gene_regulatory_network_closed_from_evidence
    (N : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence N) :
    GeneRegulatoryNetworkClosed N := by
  exact And.intro E.activationRulesClosed
    (And.intro E.repressionRulesClosed
      (And.intro E.networkTopologyClosed E.booleanDynamicsClosed))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse