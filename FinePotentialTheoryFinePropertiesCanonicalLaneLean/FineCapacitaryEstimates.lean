import FinePotentialTheoryFinePropertiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FineCapacitaryEstimatesPackage {A : AdmissibleClass} where
  capacityUpperBound : Prop
  capacityLowerBound : Prop
  fineCapacitySubadditivity : Prop
  fineCapacityCountablySubadditive : Prop

structure FineCapacitaryEstimatesEvidence {A : AdmissibleClass} (C : FineCapacitaryEstimatesPackage A) where
  capacityUpperBoundClosed : C.capacityUpperBound
  capacityLowerBoundClosed : C.capacityLowerBound
  fineCapacitySubadditivityClosed : C.fineCapacitySubadditivity
  fineCapacityCountablySubadditiveClosed : C.fineCapacityCountablySubadditive

def FineCapacitaryEstimatesClosed {A : AdmissibleClass} (C : FineCapacitaryEstimatesPackage A) : Prop :=
  C.capacityUpperBound ∧ C.capacityLowerBound ∧ C.fineCapacitySubadditivity ∧ C.fineCapacityCountablySubadditive

theorem fine_capacitary_estimates_closed_from_evidence {A : AdmissibleClass} (C : FineCapacitaryEstimatesPackage A) (E : FineCapacitaryEstimatesEvidence C) : FineCapacitaryEstimatesClosed C := by
  exact And.intro E.capacityUpperBoundClosed (And.intro E.capacityLowerBoundClosed (And.intro E.fineCapacitySubadditivityClosed E.fineCapacityCountablySubadditiveClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse