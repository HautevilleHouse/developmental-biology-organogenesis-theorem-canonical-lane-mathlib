import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure CellMigrationPackage where
  cellAdhesion : Prop
  chemotaxis : Prop
  extracellularMatrix: Prop
  mechanicalForces : Prop
  contactGuidance : Prop
  routeSelection : Prop

structure CellMigrationEvidence (M : CellMigrationPackage) where
  cellAdhesionClosed : M.cellAdhesion
  chemotaxisClosed : M.chemotaxis
  extracellularMatrixClosed : M.extracellularMatrix
  mechanicalForcesClosed : M.mechanicalForces
  contactGuidanceClosed : M.contactGuidance
  routeSelectionClosed : M.routeSelection

def CellMigrationClosed (M : CellMigrationPackage) : Prop :=
  M.cellAdhesion ∧ M.chemotaxis ∧ M.extracellularMatrix ∧
  M.mechanicalForces ∧ M.contactGuidance ∧ M.routeSelection

theorem cell_migration_closed_from_evidence
    (M : CellMigrationPackage) (E : CellMigrationEvidence M) :
    CellMigrationClosed M := by
  exact And.intro E.cellAdhesionClosed
    (And.intro E.chemotaxisClosed
      (And.intro E.extracellularMatrixClosed
        (And.intro E.mechanicalForcesClosed
          (And.intro E.contactGuidanceClosed E.routeSelectionClosed))))

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse