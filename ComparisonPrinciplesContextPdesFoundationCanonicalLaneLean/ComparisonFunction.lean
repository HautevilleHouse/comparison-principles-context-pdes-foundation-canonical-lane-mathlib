import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ComparisonFunctionPackage where
  subSolution : Prop
  superSolution : Prop
  differentialInequality : Prop
  orderingPreserved : Prop

structure ComparisonFunctionEvidence (C : ComparisonFunctionPackage) where
  subSolutionClosed : C.subSolution
  superSolutionClosed : C.superSolution
  differentialInequalityClosed : C.differentialInequality
  orderingPreservedClosed : C.orderingPreserved

def ComparisonFunctionClosed (C : ComparisonFunctionPackage) : Prop :=
  C.subSolution ∧ C.superSolution ∧ C.differentialInequality ∧ C.orderingPreserved

theorem comparison_function_closed_from_evidence (C : ComparisonFunctionPackage)
    (E : ComparisonFunctionEvidence C) : ComparisonFunctionClosed C := by
  exact And.intro E.subSolutionClosed
    (And.intro E.superSolutionClosed
      (And.intro E.differentialInequalityClosed E.orderingPreservedClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse