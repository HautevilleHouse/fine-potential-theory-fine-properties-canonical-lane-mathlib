import canonicalLaneMathlib.AdmissibleClass
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PotentialTheoryAdmissibleObject

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure ThinSetQuasiContinuityPackage where
  thinSetDefinition : Prop
  quasiContinuityDefinition : Prop
  thinSetQuasiContinuityEquivalence : Prop
  thinSetCountableCondition : Prop

structure ThinSetQuasiContinuityEvidence (T : ThinSetQuasiContinuityPackage) where
  thinSetDefinitionClosed : T.thinSetDefinition
  quasiContinuityDefinitionClosed : T.quasiContinuityDefinition
  thinSetQuasiContinuityEquivalenceClosed : T.thinSetQuasiContinuityEquivalence
  thinSetCountableConditionClosed : T.thinSetCountableCondition

def ThinSetQuasiContinuityClosed (T : ThinSetQuasiContinuityPackage) : Prop :=
  T.thinSetDefinition ∧ T.quasiContinuityDefinition ∧
  T.thinSetQuasiContinuityEquivalence ∧ T.thinSetCountableCondition

theorem thin_set_quasi_continuity_closed_from_evidence
    (T : ThinSetQuasiContinuityPackage) (E : ThinSetQuasiContinuityEvidence T) :
    ThinSetQuasiContinuityClosed T := by
  exact And.intro E.thinSetDefinitionClosed
    (And.intro E.quasiContinuityDefinitionClosed
      (And.intro E.thinSetQuasiContinuityEquivalenceClosed E.thinSetCountableConditionClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse