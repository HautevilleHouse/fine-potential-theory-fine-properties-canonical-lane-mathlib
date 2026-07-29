import canonicalLaneMathlib.AdmissibleClass
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PotentialTheoryAdmissibleObject

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FineContinuityFineTopologyPackage where
  fineContinuityDefinition : Prop
  fineTopologyGeneration : Prop
  fineContinuityClosedUnderLimits : Prop
  relationToCapacity : Prop

structure FineContinuityFineTopologyEvidence (F : FineContinuityFineTopologyPackage) where
  fineContinuityDefinitionClosed : F.fineContinuityDefinition
  fineTopologyGenerationClosed : F.fineTopologyGeneration
  fineContinuityClosedUnderLimitsClosed : F.fineContinuityClosedUnderLimits
  relationToCapacityClosed : F.relationToCapacity

def FineContinuityFineTopologyClosed (F : FineContinuityFineTopologyPackage) : Prop :=
  F.fineContinuityDefinition ∧ F.fineTopologyGeneration ∧
  F.fineContinuityClosedUnderLimits ∧ F.relationToCapacity

theorem fine_continuity_fine_topology_closed_from_evidence
    (F : FineContinuityFineTopologyPackage) (E : FineContinuityFineTopologyEvidence F) :
    FineContinuityFineTopologyClosed F := by
  exact And.intro E.fineContinuityDefinitionClosed
    (And.intro E.fineTopologyGenerationClosed
      (And.intro E.fineContinuityClosedUnderLimitsClosed E.relationToCapacityClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse