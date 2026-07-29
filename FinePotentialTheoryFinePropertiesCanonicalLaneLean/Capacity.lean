import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FineTopology

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure CapacityPackage (P : FineTopologyPackage) where
  capacityDefined : Prop
  capacitySubadditive : Prop
  capacityOuterRegular : Prop
  capacityChoquet : Prop

structure CapacityEvidence {P : FineTopologyPackage}
    (C : CapacityPackage P) where
  capacityDefinedClosed : C.capacityDefined
  capacitySubadditiveClosed : C.capacitySubadditive
  capacityOuterRegularClosed : C.capacityOuterRegular
  capacityChoquetClosed : C.capacityChoquet

def CapacityClosed {P : FineTopologyPackage} (C : CapacityPackage P) : Prop :=
  C.capacityDefined ∧ C.capacitySubadditive ∧
  C.capacityOuterRegular ∧ C.capacityChoquet

theorem capacity_closed_from_evidence {P : FineTopologyPackage}
    (C : CapacityPackage P) (E : CapacityEvidence C) :
    CapacityClosed C := by
  exact And.intro E.capacityDefinedClosed
    (And.intro E.capacitySubadditiveClosed
      (And.intro E.capacityOuterRegularClosed E.capacityChoquetClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse
