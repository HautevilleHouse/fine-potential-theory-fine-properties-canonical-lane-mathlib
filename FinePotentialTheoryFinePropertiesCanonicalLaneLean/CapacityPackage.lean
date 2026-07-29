import FinePotentialTheoryFinePropertiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure CapacityPackage where
  capacityFunctional : Type u
  subadditivity : Prop
  outerRegularity : Prop
  continuity : Prop

structure CapacityEvidence (C : CapacityPackage) where
  subadditivityClosed : C.subadditivity
  outerRegularityClosed : C.outerRegularity
  continuityClosed : C.continuity

def CapacityClosed (C : CapacityPackage) : Prop :=
  C.subadditivity ∧ C.outerRegularity ∧ C.continuity

theorem capacity_closed_from_evidence (C : CapacityPackage) (E : CapacityEvidence C) :
    CapacityClosed C := by
  exact And.intro E.subadditivityClosed (And.intro E.outerRegularityClosed E.continuityClosed)

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse