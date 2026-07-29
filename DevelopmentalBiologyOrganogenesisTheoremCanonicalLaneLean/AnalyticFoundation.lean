import DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.NotchSignaling

/-!
# Analytic Foundation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure AnalyticFoundation where
  geneRegulatoryNetwork : GeneRegulatoryNetworkPackage
  geneRegulatoryNetworkEvidence : GeneRegulatoryNetworkEvidence geneRegulatoryNetwork
  morphogenGradient : MorphogenGradientPackage
  morphogenGradientEvidence : MorphogenGradientEvidence morphogenGradient
  notchSignaling : NotchSignalingPackage
  notchSignalingEvidence : NotchSignalingEvidence notchSignaling
  limbBudOutgrowth : LimbBudOutgrowthPackage
  limbBudOutgrowthEvidence : LimbBudOutgrowthEvidence limbBudOutgrowth
  organizerInduction : OrganizerInductionPackage
  organizerInductionEvidence : OrganizerInductionEvidence organizerInduction
  cellMigrationPatterns : CellMigrationPatternsPackage
  cellMigrationPatternsEvidence : CellMigrationPatternsEvidence cellMigrationPatterns
  differentiationPathways : DifferentiationPathwaysPackage
  differentiationPathwaysEvidence : DifferentiationPathwaysEvidence differentiationPathways

def AnalyticFoundationClosed (A : AnalyticFoundation) : Prop :=
  GeneRegulatoryNetworkClosed A.geneRegulatoryNetwork ∧
  MorphogenGradientClosed A.morphogenGradient ∧
  NotchSignalingClosed A.notchSignaling ∧
  LimbBudOutgrowthClosed A.limbBudOutgrowth ∧
  OrganizerInductionClosed A.organizerInduction ∧
  CellMigrationPatternsClosed A.cellMigrationPatterns ∧
  DifferentiationPathwaysClosed A.differentiationPathways

theorem analytic_foundation_closed_from_evidence
    (A : AnalyticFoundation) :
    AnalyticFoundationClosed A := by
  exact And.intro (gene_regulatory_network_closed_from_evidence A.geneRegulatoryNetwork A.geneRegulatoryNetworkEvidence)
    (And.intro (morphogen_gradient_closed_from_evidence A.morphogenGradient A.morphogenGradientEvidence)
      (And.intro (notch_signaling_closed_from_evidence A.notchSignaling A.notchSignalingEvidence)
        (And.intro (limb_bud_outgrowth_closed_from_evidence A.limbBudOutgrowth A.limbBudOutgrowthEvidence)
          (And.intro (organizer_induction_closed_from_evidence A.organizerInduction A.organizerInductionEvidence)
            (And.intro (cell_migration_patterns_closed_from_evidence A.cellMigrationPatterns A.cellMigrationPatternsEvidence)
              (differentiation_pathways_closed_from_evidence A.differentiationPathways A.differentiationPathwaysEvidence))))))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse