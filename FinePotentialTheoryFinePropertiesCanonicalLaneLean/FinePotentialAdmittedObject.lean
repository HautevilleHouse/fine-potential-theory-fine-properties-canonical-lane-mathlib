import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FinePotentialAdmittedObject where
  space : FinePotentialSpace
  finePotentialDefined : Prop
  fineProperty : Prop
  capacityType : Type
  capacityTopology : TopologicalSpace capacityType
  capacityControlled : Prop
  conclusion : capacityControlled

structure FinePotentialEndgameState where
  object : FinePotentialAdmittedObject

def FinePotentialWitnessClosed (O : FinePotentialAdmittedObject) : Prop :=
  O.capacityControlled

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse