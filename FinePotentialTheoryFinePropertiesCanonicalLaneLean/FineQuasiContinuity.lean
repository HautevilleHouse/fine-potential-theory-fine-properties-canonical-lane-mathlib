import FinePotentialTheoryFinePropertiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FineQuasiContinuityPackage {A : AdmissibleClass} where
  quasiContinuousRepresentative : Prop
  finelyQuasiContinuousRepresentative : Prop
  equalityFineEverywhere : Prop
  capacityZeroSet : Prop

structure FineQuasiContinuityEvidence {A : AdmissibleClass} (Q : FineQuasiContinuityPackage A) where
  quasiContinuousRepresentativeClosed : Q.quasiContinuousRepresentative
  finelyQuasiContinuousRepresentativeClosed : Q.finelyQuasiContinuousRepresentative
  equalityFineEverywhereClosed : Q.equalityFineEverywhere
  capacityZeroSetClosed : Q.capacityZeroSet

def FineQuasiContinuityClosed {A : AdmissibleClass} (Q : FineQuasiContinuityPackage A) : Prop :=
  Q.quasiContinuousRepresentative ∧ Q.finelyQuasiContinuousRepresentative ∧ Q.equalityFineEverywhere ∧ Q.capacityZeroSet

theorem fine_quasi_continuity_closed_from_evidence {A : AdmissibleClass} (Q : FineQuasiContinuityPackage A) (E : FineQuasiContinuityEvidence Q) : FineQuasiContinuityClosed Q := by
  exact And.intro E.quasiContinuousRepresentativeClosed (And.intro E.finelyQuasiContinuousRepresentativeClosed (And.intro E.equalityFineEverywhereClosed E.capacityZeroSetClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse