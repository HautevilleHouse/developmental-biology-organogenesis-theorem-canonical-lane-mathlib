import DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OrganismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OrganogenesisAdmittedObject where
  space : OrganismSpace
  developmentalStageComplete : Prop
  patternFormed : Prop
  organModel : Type
  organTopology : TopologicalSpace organModel
  homeomorphicToOrgan : Prop
  conclusion : homeomorphicToOrgan

structure OrganogenesisEndgameState where
  object : OrganogenesisAdmittedObject

def OrganogenesisWitnessClosed (O : OrganogenesisAdmittedObject) : Prop :=
  O.homeomorphicToOrgan

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse