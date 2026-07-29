import HautevilleHouse.FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure CapacityPackage where
  capacitySubadditivity : Prop
  capacityOuterRegularity : Prop
  capacityContinuityFromBelow : Prop
  capacityContinuityFromAbove : Prop

structure CapacityEvidence (C : CapacityPackage) where
  capacitySubadditivityClosed : C.capacitySubadditivity
  capacityOuterRegularityClosed : C.capacityOuterRegularity
  capacityContinuityFromBelowClosed : C.capacityContinuityFromBelow
  capacityContinuityFromAboveClosed : C.capacityContinuityFromAbove

def CapacityClosed (C : CapacityPackage) : Prop :=
  C.capacitySubadditivity ∧ C.capacityOuterRegularity ∧
  C.capacityContinuityFromBelow ∧ C.capacityContinuityFromAbove

theorem capacity_closed_from_evidence (C : CapacityPackage)
    (E : CapacityEvidence C) : CapacityClosed C := by
  exact And.intro E.capacitySubadditivityClosed
    (And.intro E.capacityOuterRegularityClosed
      (And.intro E.capacityContinuityFromBelowClosed E.capacityContinuityFromAboveClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse