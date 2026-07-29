import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

structure TissueMorphogenesisPackage where
  cellPopulation : Type u
  extracellularMatrix : Type v
  cellMigration : Prop
  cellProliferation : Prop
  tissuePatterning : Prop

structure TissueMorphogenesisEvidence (T : TissueMorphogenesisPackage) where
  cellMigrationClosed : T.cellMigration
  cellProliferationClosed : T.cellProliferation
  tissuePatterningClosed : T.tissuePatterning

def TissueMorphogenesisClosed (T : TissueMorphogenesisPackage) : Prop :=
  T.cellMigration ∧ T.cellProliferation ∧ T.tissuePatterning

theorem tissue_morphogenesis_closed_from_evidence (T : TissueMorphogenesisPackage)
    (E : TissueMorphogenesisEvidence T) : TissueMorphogenesisClosed T := by
  exact And.intro E.cellMigrationClosed
    (And.intro E.cellProliferationClosed E.tissuePatterningClosed)

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse