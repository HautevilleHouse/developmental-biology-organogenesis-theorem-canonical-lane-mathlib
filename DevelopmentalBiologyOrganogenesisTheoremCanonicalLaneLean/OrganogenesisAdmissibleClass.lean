import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.OrganPatternFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure OrganogenesisAdmittedObject where
  organism : OrganismGenotype
  embryoStage : ℝ
  organIdentity : String
  patternComplete : Prop
  functionalOrganFormed : Prop
  conclusion : functionalOrganFormed

def OrganogenesisWitnessClosed (O : OrganogenesisAdmittedObject) : Prop :=
  O.functionalOrganFormed

structure AdmissibleClass where
  object : OrganogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OrganogenesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse