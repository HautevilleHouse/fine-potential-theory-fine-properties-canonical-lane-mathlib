import canonicalLaneMathlib.FinePotentialTheoryFinePropertiesCanonicalLaneLean.QuasiContinuityPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure PolarSetsPackage {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} (Q : QuasiContinuityPackage F) where
  polarSetCharacterization : Prop
  fineRemovability : Prop
  capacityZeroIffPolar : Prop

structure PolarSetsEvidence {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} {Q : QuasiContinuityPackage F} (P : PolarSetsPackage Q) where
  polarSetCharacterizationClosed : P.polarSetCharacterization
  fineRemovabilityClosed : P.fineRemovability
  capacityZeroIffPolarClosed : P.capacityZeroIffPolar

def PolarSetsClosed {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} {Q : QuasiContinuityPackage F} (P : PolarSetsPackage Q) : Prop :=
  P.polarSetCharacterization ∧ P.fineRemovability ∧ P.capacityZeroIffPolar

theorem polar_sets_closed_from_evidence {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} {Q : QuasiContinuityPackage F} (P : PolarSetsPackage Q) (E : PolarSetsEvidence P) :
    PolarSetsClosed P := by
  exact And.intro E.polarSetCharacterizationClosed (And.intro E.fineRemovabilityClosed E.capacityZeroIffPolarClosed)

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse