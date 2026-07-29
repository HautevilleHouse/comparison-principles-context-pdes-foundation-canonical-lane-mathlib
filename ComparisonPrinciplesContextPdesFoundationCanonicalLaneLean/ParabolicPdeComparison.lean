import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ParabolicPdeComparisonPackage where
  parabolicOperator : Prop
  comparisonFunction : ComparisonFunctionPackage
  maximumPrinciple : MaximumPrinciplePackage
  hopfLemma : HopfLemmaPackage
  uniquenessOfSolution : Prop

structure ParabolicPdeComparisonEvidence (P : ParabolicPdeComparisonPackage) where
  parabolicOperatorClosed : P.parabolicOperator
  comparisonFunctionEvidence : ComparisonFunctionEvidence P.comparisonFunction
  maximumPrincipleEvidence : MaximumPrincipleEvidence P.maximumPrinciple
  hopfLemmaEvidence : HopfLemmaEvidence P.hopfLemma
  uniquenessOfSolutionClosed : P.uniquenessOfSolution

def ParabolicPdeComparisonClosed (P : ParabolicPdeComparisonPackage) : Prop :=
  P.parabolicOperator ∧
  ComparisonFunctionClosed P.comparisonFunction ∧
  MaximumPrincipleClosed P.maximumPrinciple ∧
  HopfLemmaClosed P.hopfLemma ∧
  P.uniquenessOfSolution

theorem parabolic_pde_comparison_closed_from_evidence
    (P : ParabolicPdeComparisonPackage)
    (E : ParabolicPdeComparisonEvidence P) : ParabolicPdeComparisonClosed P := by
  exact And.intro E.parabolicOperatorClosed
    (And.intro (comparison_function_closed_from_evidence P.comparisonFunction E.comparisonFunctionEvidence)
      (And.intro (maximum_principle_closed_from_evidence P.maximumPrinciple E.maximumPrincipleEvidence)
        (And.intro (hopf_lemma_closed_from_evidence P.hopfLemma E.hopfLemmaEvidence)
          E.uniquenessOfSolutionClosed)))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse