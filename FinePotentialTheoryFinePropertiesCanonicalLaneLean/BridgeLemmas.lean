import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialAdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FinePotentialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse