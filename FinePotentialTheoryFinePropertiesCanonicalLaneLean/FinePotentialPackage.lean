import HautevilleHouse.FinePotentialTheoryFinePropertiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialPackage where
  finePotentialClass : Type u
  capacityDefined : Prop
  polarSetsClassified : Prop
  quasicontinuity : Prop
  fineTopologyRegular : Prop

structure FinePotentialEvidence (P : FinePotentialPackage) where
  capacityDefinedClosed : P.capacityDefined
  polarSetsClassifiedClosed : P.polarSetsClassified
  quasicontinuityClosed : P.quasicontinuity
  fineTopologyRegularClosed : P.fineTopologyRegular

def FinePotentialClosed (P : FinePotentialPackage) : Prop :=
  P.capacityDefined ∧ P.polarSetsClassified ∧ P.quasicontinuity ∧ P.fineTopologyRegular

theorem fine_potential_closed_from_evidence (P : FinePotentialPackage)
    (E : FinePotentialEvidence P) : FinePotentialClosed P := by
  exact And.intro E.capacityDefinedClosed
    (And.intro E.polarSetsClassifiedClosed
      (And.intro E.quasicontinuityClosed E.fineTopologyRegularClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse