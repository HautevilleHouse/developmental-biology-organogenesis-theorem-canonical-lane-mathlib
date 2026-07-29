import DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def organogenesisProjection : Projection OrganogenesisEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem organogenesis_projection_idempotent (x : OrganogenesisEndgameState) :
    organogenesisProjection.toFun (organogenesisProjection.toFun x) = organogenesisProjection.toFun x := by
  exact organogenesisProjection.idempotent x

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse