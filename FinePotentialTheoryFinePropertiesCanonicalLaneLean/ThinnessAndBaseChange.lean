import HautevilleHouse.FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure ThinnessPackage where
  thinSetCharacterization : Prop
  baseChangeFormula : Prop
  invarianceUnderQuasiIsometries : Prop
  stabilityUnderLimits : Prop

structure ThinnessEvidence (T : ThinnessPackage) where
  thinSetCharacterizationClosed : T.thinSetCharacterization
  baseChangeFormulaClosed : T.baseChangeFormula
  invarianceUnderQuasiIsometriesClosed : T.invarianceUnderQuasiIsometries
  stabilityUnderLimitsClosed : T.stabilityUnderLimits

def ThinnessClosed (T : ThinnessPackage) : Prop :=
  T.thinSetCharacterization ∧ T.baseChangeFormula ∧
  T.invarianceUnderQuasiIsometries ∧ T.stabilityUnderLimits

theorem thinness_closed_from_evidence (T : ThinnessPackage) (E : ThinnessEvidence T) :
    ThinnessClosed T := by
  exact And.intro E.thinSetCharacterizationClosed
    (And.intro E.baseChangeFormulaClosed
      (And.intro E.invarianceUnderQuasiIsometriesClosed E.stabilityUnderLimitsClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse