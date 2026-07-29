import canonicalLaneMathlib.FinePotentialTheoryFinePropertiesCanonicalLaneLean.FinePotentialAdmittedObject

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure CapacityAnalyticPackage where
  capacityFunctional : Type u
  capacityRegularity : Prop
  finePotentialLinking : Prop
  capacityMonotonicity : Prop
  capacitySubadditivity : Prop

structure CapacityAnalyticEvidence (C : CapacityAnalyticPackage) where
  capacityRegularityClosed : C.capacityRegularity
  finePotentialLinkingClosed : C.finePotentialLinking
  capacityMonotonicityClosed : C.capacityMonotonicity
  capacitySubadditivityClosed : C.capacitySubadditivity

def CapacityAnalyticClosed (C : CapacityAnalyticPackage) : Prop :=
  C.capacityRegularity ∧ C.finePotentialLinking ∧ C.capacityMonotonicity ∧ C.capacitySubadditivity

theorem capacity_analytic_closed_from_evidence (C : CapacityAnalyticPackage) (E : CapacityAnalyticEvidence C) :
    CapacityAnalyticClosed C := by
  exact And.intro E.capacityRegularityClosed (And.intro E.finePotentialLinkingClosed (And.intro E.capacityMonotonicityClosed E.capacitySubadditivityClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse