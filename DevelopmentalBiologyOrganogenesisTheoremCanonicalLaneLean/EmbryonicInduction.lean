import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.OrganogenesisGenesAndSignaling

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure InductiveSignal where
  sourceTissue : String
  signalMolecule : SignalingMolecule
  targetTissue : String

structure EmbryonicInductionProcess where
  signal : InductiveSignal
  competencyPeriod : Prop
  thresholdConcentration : ℝ
  inductionOutcome : String

structure CompetencyWindow where
  startTime : ℝ
  endTime : ℝ
  responsiveGenes : List String
  epigeneticState : Prop

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse