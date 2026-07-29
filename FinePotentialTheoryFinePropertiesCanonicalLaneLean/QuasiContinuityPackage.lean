import canonicalLaneMathlib.FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePropertiesPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure QuasiContinuityPackage {C : CapacityAnalyticPackage} (F : FinePropertiesPackage C) where
  quasiContinuityDefined : Prop
  fineApproximation : Prop
  potentialAnalytic : Prop

structure QuasiContinuityEvidence {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} (Q : QuasiContinuityPackage F) where
  quasiContinuityDefinedClosed : Q.quasiContinuityDefined
  fineApproximationClosed : Q.fineApproximation
  potentialAnalyticClosed : Q.potentialAnalytic

def QuasiContinuityClosed {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} (Q : QuasiContinuityPackage F) : Prop :=
  Q.quasiContinuityDefined ∧ Q.fineApproximation ∧ Q.potentialAnalytic

theorem quasi_continuity_closed_from_evidence {C : CapacityAnalyticPackage} {F : FinePropertiesPackage C} (Q : QuasiContinuityPackage F) (E : QuasiContinuityEvidence Q) :
    QuasiContinuityClosed Q := by
  exact And.intro E.quasiContinuityDefinedClosed (And.intro E.fineApproximationClosed E.potentialAnalyticClosed)

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse