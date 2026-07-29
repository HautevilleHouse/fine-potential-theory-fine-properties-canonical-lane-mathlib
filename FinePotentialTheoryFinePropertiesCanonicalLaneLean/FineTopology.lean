import FinePotentialTheoryFinePropertiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FineTopologyPackage where
  fineTopologyDefined : Prop
  fineTopologyCoarserThanEuclidean : Prop
  fineTopologyBaire : Prop
  fineTopologyQuasiLindelöf : Prop

structure FineTopologyEvidence (P : FineTopologyPackage) where
  fineTopologyDefinedClosed : P.fineTopologyDefined
  fineTopologyCoarserThanEuclideanClosed : P.fineTopologyCoarserThanEuclidean
  fineTopologyBaireClosed : P.fineTopologyBaire
  fineTopologyQuasiLindelöfClosed : P.fineTopologyQuasiLindelöf

def FineTopologyClosed (P : FineTopologyPackage) : Prop :=
  P.fineTopologyDefined ∧ P.fineTopologyCoarserThanEuclidean ∧
  P.fineTopologyBaire ∧ P.fineTopologyQuasiLindelöf

theorem fine_topology_closed_from_evidence (P : FineTopologyPackage)
    (E : FineTopologyEvidence P) : FineTopologyClosed P := by
  exact And.intro E.fineTopologyDefinedClosed
    (And.intro E.fineTopologyCoarserThanEuclideanClosed
      (And.intro E.fineTopologyBaireClosed E.fineTopologyQuasiLindelöfClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse
