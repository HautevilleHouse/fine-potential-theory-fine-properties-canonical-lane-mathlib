import canonicalLaneMathlib.AdmissibleClass
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.PotentialTheoryAdmissibleObject
import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FineContinuityFineTopology

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure BrelotConvergenceTheoremPackage where
  increasingSequenceCondition : Prop
  supremumFineUpperSemicontinuous : Prop
  convergenceOnDenseSet : Prop
  limitIsPotential : Prop

structure BrelotConvergenceTheoremEvidence (B : BrelotConvergenceTheoremPackage) where
  increasingSequenceConditionClosed : B.increasingSequenceCondition
  supremumFineUpperSemicontinuousClosed : B.supremumFineUpperSemicontinuous
  convergenceOnDenseSetClosed : B.convergenceOnDenseSet
  limitIsPotentialClosed : B.limitIsPotential

def BrelotConvergenceTheoremClosed (B : BrelotConvergenceTheoremPackage) : Prop :=
  B.increasingSequenceCondition ∧ B.supremumFineUpperSemicontinuous ∧
  B.convergenceOnDenseSet ∧ B.limitIsPotential

theorem brelot_convergence_theorem_closed_from_evidence
    (B : BrelotConvergenceTheoremPackage) (E : BrelotConvergenceTheoremEvidence B) :
    BrelotConvergenceTheoremClosed B := by
  exact And.intro E.increasingSequenceConditionClosed
    (And.intro E.supremumFineUpperSemicontinuousClosed
      (And.intro E.convergenceOnDenseSetClosed E.limitIsPotentialClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse