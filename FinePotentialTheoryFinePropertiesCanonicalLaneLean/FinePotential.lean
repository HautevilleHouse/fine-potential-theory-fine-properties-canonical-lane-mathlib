import FinePotentialTheoryFinePropertiesCanonicalLaneLean.Capacity

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialPackage {P : FineTopologyPackage}
    (C : CapacityPackage P) where
  potentialDefined : Prop
  potentialSuperharmonic : Prop
  potentialLowerSemicontinuous : Prop
  potentialFineContinuous : Prop

structure FinePotentialEvidence {P : FineTopologyPackage}
    {C : CapacityPackage P} (F : FinePotentialPackage C) where
  potentialDefinedClosed : F.potentialDefined
  potentialSuperharmonicClosed : F.potentialSuperharmonic
  potentialLowerSemicontinuousClosed : F.potentialLowerSemicontinuous
  potentialFineContinuousClosed : F.potentialFineContinuous

def FinePotentialClosed {P : FineTopologyPackage}
    {C : CapacityPackage P} (F : FinePotentialPackage C) : Prop :=
  F.potentialDefined ∧ F.potentialSuperharmonic ∧
  F.potentialLowerSemicontinuous ∧ F.potentialFineContinuous

theorem fine_potential_closed_from_evidence {P : FineTopologyPackage}
    {C : CapacityPackage P} (F : FinePotentialPackage C)
    (E : FinePotentialEvidence F) : FinePotentialClosed F := by
  exact And.intro E.potentialDefinedClosed
    (And.intro E.potentialSuperharmonicClosed
      (And.intro E.potentialLowerSemicontinuousClosed E.potentialFineContinuousClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse
