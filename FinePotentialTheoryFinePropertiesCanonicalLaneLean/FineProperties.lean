import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotential

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePropertiesPackage {P : FineTopologyPackage}
    {C : CapacityPackage P} (F : FinePotentialPackage C) where
  quasiContinuity : Prop
  quasiEverywhereDefinition : Prop
  fineMaximumPrinciple : Prop
  fineConvergenceTheorems : Prop

structure FinePropertiesEvidence {P : FineTopologyPackage}
    {C : CapacityPackage P} {F : FinePotentialPackage C}
    (R : FinePropertiesPackage F) where
  quasiContinuityClosed : R.quasiContinuity
  quasiEverywhereDefinitionClosed : R.quasiEverywhereDefinition
  fineMaximumPrincipleClosed : R.fineMaximumPrinciple
  fineConvergenceTheoremsClosed : R.fineConvergenceTheorems

def FinePropertiesClosed {P : FineTopologyPackage}
    {C : CapacityPackage P} {F : FinePotentialPackage C}
    (R : FinePropertiesPackage F) : Prop :=
  R.quasiContinuity ∧ R.quasiEverywhereDefinition ∧
  R.fineMaximumPrinciple ∧ R.fineConvergenceTheorems

theorem fine_properties_closed_from_evidence {P : FineTopologyPackage}
    {C : CapacityPackage P} {F : FinePotentialPackage C}
    (R : FinePropertiesPackage F) (E : FinePropertiesEvidence R) :
    FinePropertiesClosed R := by
  exact And.intro E.quasiContinuityClosed
    (And.intro E.quasiEverywhereDefinitionClosed
      (And.intro E.fineMaximumPrincipleClosed E.fineConvergenceTheoremsClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse
