import FinePotentialTheoryFinePropertiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialAdmissibleObject where
  carrierSet : Type u
  potential : carrierSet → ℝ
  fineTopology : TopologicalSpace carrierSet
  finelyOpenSets : Set (Set carrierSet)
  potentialFinelyContinuous : Prop
  potentialFinelySubharmonic : Prop
  conclusion : potentialFinelySubharmonic

structure AdmissibleClass where
  object : FinePotentialAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FinePotentialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse