import canonicalLaneMathlib.AdmissibleClass

/-!
# Comparison Principles for PDEs Package
-/

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ComparisonPDEPackage where
  domain : Type u
  topology : TopologicalSpace domain
  operator : Type v
  comparisonInequality : Prop
  maximumPrinciple : Prop
  hopfLemma : Prop

structure ComparisonPDEEvidence (P : ComparisonPDEPackage) where
  comparisonInequalityClosed : P.comparisonInequality
  maximumPrincipleClosed : P.maximumPrinciple
  hopfLemmaClosed : P.hopfLemma

def ComparisonPDEClosed (P : ComparisonPDEPackage) : Prop :=
  P.comparisonInequality ∧ P.maximumPrinciple ∧ P.hopfLemma

theorem comparison_pde_closed_from_evidence (P : ComparisonPDEPackage)
    (E : ComparisonPDEEvidence P) : ComparisonPDEClosed P := by
  exact And.intro E.comparisonInequalityClosed
    (And.intro E.maximumPrincipleClosed E.hopfLemmaClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse