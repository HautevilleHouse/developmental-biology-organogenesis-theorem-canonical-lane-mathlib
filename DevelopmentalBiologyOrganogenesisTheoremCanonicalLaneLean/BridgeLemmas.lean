import HautevilleHouse.DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean.OrganogenesisAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OrganogenesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyOrganogenesisTheoremCanonicalLaneLean
end HautevilleHouse