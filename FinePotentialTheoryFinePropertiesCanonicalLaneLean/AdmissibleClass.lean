import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FinePotentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FinePotentialAdmittedObject where
  space : FinePotentialSpace
  potentialFunction : carrier → ℝ
  fineTopologyGenerated : Prop
  finelyOpenSets : Prop
  capacityFinite : Prop
  conclusion : capacityFinite

structure FinePotentialEndgameState where
  object : FinePotentialAdmittedObject

def FinePotentialWitnessClosed (O : FinePotentialAdmittedObject) : Prop :=
  O.capacityFinite

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse
