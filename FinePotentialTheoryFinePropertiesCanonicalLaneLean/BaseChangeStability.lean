import canonicalLaneMathlib.AdmissibleClass
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PotentialTheoryAdmissibleObject

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure BaseChangeStabilityPackage where
  baseFunction : Type
  baseMeasure : Type
  stabilityCondition : Prop
  stabilityUnderPolarCapacity : Prop

structure BaseChangeStabilityEvidence (B : BaseChangeStabilityPackage) where
  stabilityConditionClosed : B.stabilityCondition
  stabilityUnderPolarCapacityClosed : B.stabilityUnderPolarCapacity

def BaseChangeStabilityClosed (B : BaseChangeStabilityPackage) : Prop :=
  B.stabilityCondition ∧ B.stabilityUnderPolarCapacity

theorem base_change_stability_closed_from_evidence (B : BaseChangeStabilityPackage) (E : BaseChangeStabilityEvidence B) :
    BaseChangeStabilityClosed B := by
  exact And.intro E.stabilityConditionClosed E.stabilityUnderPolarCapacityClosed

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse