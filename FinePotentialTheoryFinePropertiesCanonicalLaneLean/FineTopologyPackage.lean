import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PolarSetsPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FineTopologyPackage where
  fineTopologyDefined : Prop
  basisCharacterization : Prop
  quasiContinuity : Prop
  fineContinuity : Prop

structure FineTopologyEvidence (F : FineTopologyPackage) where
  fineTopologyDefinedClosed : F.fineTopologyDefined
  basisCharacterizationClosed : F.basisCharacterization
  quasiContinuityClosed : F.quasiContinuity
  fineContinuityClosed : F.fineContinuity

def FineTopologyClosed (F : FineTopologyPackage) : Prop :=
  F.fineTopologyDefined ∧ F.basisCharacterization ∧ F.quasiContinuity ∧ F.fineContinuity

theorem fine_topology_closed_from_evidence (F : FineTopologyPackage) (E : FineTopologyEvidence F) :
    FineTopologyClosed F := by
  exact And.intro E.fineTopologyDefinedClosed
    (And.intro E.basisCharacterizationClosed
      (And.intro E.quasiContinuityClosed E.fineContinuityClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse