import canonicalLaneMathlib.FinePotentialTheoryFinePropertiesCanonicalLaneLean.CapacityAnalyticPackage

namespace HautevilleHouse
namespace FinePotentialTheoryFinePropertiesCanonicalLaneLean

structure FinePropertiesPackage (C : CapacityAnalyticPackage) where
  fineSupremumRegular : Prop
  fineLimitExchange : Prop
  fineContinuity : Prop
  fineCompactness : Prop

structure FinePropertiesEvidence {C : CapacityAnalyticPackage} (F : FinePropertiesPackage C) where
  fineSupremumRegularClosed : F.fineSupremumRegular
  fineLimitExchangeClosed : F.fineLimitExchange
  fineContinuityClosed : F.fineContinuity
  fineCompactnessClosed : F.fineCompactness

def FinePropertiesClosed {C : CapacityAnalyticPackage} (F : FinePropertiesPackage C) : Prop :=
  F.fineSupremumRegular ∧ F.fineLimitExchange ∧ F.fineContinuity ∧ F.fineCompactness

theorem fine_properties_closed_from_evidence {C : CapacityAnalyticPackage} (F : FinePropertiesPackage C) (E : FinePropertiesEvidence F) :
    FinePropertiesClosed F := by
  exact And.intro E.fineSupremumRegularClosed (And.intro E.fineLimitExchangeClosed (And.intro E.fineContinuityClosed E.fineCompactnessClosed))

end FinePotentialTheoryFinePropertiesCanonicalLaneLean
end HautevilleHouse