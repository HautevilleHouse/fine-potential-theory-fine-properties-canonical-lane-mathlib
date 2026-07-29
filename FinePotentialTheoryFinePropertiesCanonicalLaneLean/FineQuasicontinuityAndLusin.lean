import HautevilleHouse.FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure QuasicontinuityPackage where
  quasicontinuousRepresentative : Prop
  lusinProperty : Prop
  fineApproximationTheorem : Prop
  stabilityUnderSums : Prop

structure QuasicontinuityEvidence (Q : QuasicontinuityPackage) where
  quasicontinuousRepresentativeClosed : Q.quasicontinuousRepresentative
  lusinPropertyClosed : Q.lusinProperty
  fineApproximationTheoremClosed : Q.fineApproximationTheorem
  stabilityUnderSumsClosed : Q.stabilityUnderSums

def QuasicontinuityClosed (Q : QuasicontinuityPackage) : Prop :=
  Q.quasicontinuousRepresentative ∧ Q.lusinProperty ∧
  Q.fineApproximationTheorem ∧ Q.stabilityUnderSums

theorem quasicontinuity_closed_from_evidence (Q : QuasicontinuityPackage)
    (E : QuasicontinuityEvidence Q) : QuasicontinuityClosed Q := by
  exact And.intro E.quasicontinuousRepresentativeClosed
    (And.intro E.lusinPropertyClosed
      (And.intro E.fineApproximationTheoremClosed E.stabilityUnderSumsClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse