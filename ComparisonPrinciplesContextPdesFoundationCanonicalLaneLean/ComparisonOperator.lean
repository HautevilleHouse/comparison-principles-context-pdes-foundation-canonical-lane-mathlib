import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ComparisonOperator where
  operator : Type
  comparisonInequality : Prop
  parabolicCoefficient : Prop
  monotonicityProperty : Prop

structure ComparisonOperatorEvidence (C : ComparisonOperator) where
  comparisonInequalityClosed : C.comparisonInequality
  parabolicCoefficientClosed : C.parabolicCoefficient
  monotonicityPropertyClosed : C.monotonicityProperty

def ComparisonOperatorClosed (C : ComparisonOperator) : Prop :=
  C.comparisonInequality ∧ C.parabolicCoefficient ∧ C.monotonicityProperty

theorem comparison_operator_closed_from_evidence (C : ComparisonOperator)
    (E : ComparisonOperatorEvidence C) : ComparisonOperatorClosed C := by
  exact And.intro E.comparisonInequalityClosed
    (And.intro E.parabolicCoefficientClosed E.monotonicityPropertyClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse