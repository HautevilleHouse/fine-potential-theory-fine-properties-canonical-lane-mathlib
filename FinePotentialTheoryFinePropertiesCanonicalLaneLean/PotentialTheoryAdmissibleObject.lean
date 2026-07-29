import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FinePotentialAdmittedObject where
  space : FinePotentialSpace
  polarSet : Set carrier
  fineTopology : TopologicalSpace carrier
  fineTopologyRefines : fineTopology ≤ space.topology
  thinSet : Set carrier
  thinCountableUnion : Set.Countable (Set.univ : Set (Set carrier))
  conclusion : Prop

def FinePotentialWitnessClosed (O : FinePotentialAdmittedObject) : Prop :=
  O.conclusion

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse