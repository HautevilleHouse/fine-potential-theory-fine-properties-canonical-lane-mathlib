import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FineTopologyPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialSpacesPackage where
  finePotentialDefined : Prop
  fineSpaceReflexive : Prop
  decompositionTheorem : Prop
  dualSpaceCharacterization : Prop

structure FinePotentialSpacesEvidence (S : FinePotentialSpacesPackage) where
  finePotentialDefinedClosed : S.finePotentialDefined
  fineSpaceReflexiveClosed : S.fineSpaceReflexive
  decompositionTheoremClosed : S.decompositionTheorem
  dualSpaceCharacterizationClosed : S.dualSpaceCharacterization

def FinePotentialSpacesClosed (S : FinePotentialSpacesPackage) : Prop :=
  S.finePotentialDefined ∧ S.fineSpaceReflexive ∧ S.decompositionTheorem ∧ S.dualSpaceCharacterization

theorem fine_potential_spaces_closed_from_evidence (S : FinePotentialSpacesPackage) (E : FinePotentialSpacesEvidence S) :
    FinePotentialSpacesClosed S := by
  exact And.intro E.finePotentialDefinedClosed
    (And.intro E.fineSpaceReflexiveClosed
      (And.intro E.decompositionTheoremClosed E.dualSpaceCharacterizationClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse