import canonicalLaneMathlib.AdmissibleClass
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PotentialTheoryAdmissibleObject

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure PotentialCapacityComparisonPackage where
  capacityDefinition : Prop
  potentialDefinition : Prop
  capacityDominatesPotential : Prop
  potentialDominatesCapacity : Prop
  equivalenceOnCompacta : Prop

structure PotentialCapacityComparisonEvidence (P : PotentialCapacityComparisonPackage) where
  capacityDefinitionClosed : P.capacityDefinition
  potentialDefinitionClosed : P.potentialDefinition
  capacityDominatesPotentialClosed : P.capacityDominatesPotential
  potentialDominatesCapacityClosed : P.potentialDominatesCapacity
  equivalenceOnCompactaClosed : P.equivalenceOnCompacta

def PotentialCapacityComparisonClosed (P : PotentialCapacityComparisonPackage) : Prop :=
  P.capacityDefinition ∧ P.potentialDefinition ∧
  P.capacityDominatesPotential ∧ P.potentialDominatesCapacity ∧
  P.equivalenceOnCompacta

theorem potential_capacity_comparison_closed_from_evidence
    (P : PotentialCapacityComparisonPackage) (E : PotentialCapacityComparisonEvidence P) :
    PotentialCapacityComparisonClosed P := by
  exact And.intro E.capacityDefinitionClosed
    (And.intro E.potentialDefinitionClosed
      (And.intro E.capacityDominatesPotentialClosed
        (And.intro E.potentialDominatesCapacityClosed E.equivalenceOnCompactaClosed)))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse