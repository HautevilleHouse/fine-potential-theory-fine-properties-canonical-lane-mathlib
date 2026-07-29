import FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialAdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePotentialWitnessClosed (O : FinePotentialAdmissibleObject) : Prop where
  finelyOpenCoverage : Prop
  potentialFineContinuity : Prop
  subharmonicCondition : Prop
  fineBoundaryBehavior : Prop

theorem fine_potential_witness_closed_from_admissible (A : AdmissibleClass) :
    FinePotentialWitnessClosed A.object := by
  exact A.object.conclusion

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse