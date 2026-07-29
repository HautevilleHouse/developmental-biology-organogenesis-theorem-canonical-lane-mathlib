import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.OrganogenesisGenesAndSignaling
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.EmbryonicInduction

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure PositionalInformation where
  coordinateSystem : ℝ³ → ℝ³
  morphogenConcentration : ℝ
  cellResponse : Prop

structure OrganFieldSpecification where
  fieldPosition : PositionalInformation
  fieldIdentity : String
  growthRate : ℝ
  boundaryConstraints : String

structure PatternFormationRule where
  activatorMolecule : SignalingMolecule
  inhibitorMolecule : SignalingMolecule
  reactionDiffusionParameters : Prop
  patternWavelength : ℝ

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse