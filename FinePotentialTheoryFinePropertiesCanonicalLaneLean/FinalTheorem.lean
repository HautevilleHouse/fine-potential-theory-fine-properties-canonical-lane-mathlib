import FinePotentialTheoryFinePropertiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

def ConstrainedFinePotentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fine_potential_endgame (A : AdmissibleClass) :
    ConstrainedFinePotentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse