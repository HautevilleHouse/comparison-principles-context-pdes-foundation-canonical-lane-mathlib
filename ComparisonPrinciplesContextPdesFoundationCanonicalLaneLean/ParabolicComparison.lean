import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.ComparisonPrinciplesFoundation

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ParabolicComparisonPackage {C : ComparisonPrinciplesPackage} where
  parabolicOperator : Type u
  subsolutionClass : Type v
  supersolutionClass : Type w
  maximumPrinciple : Prop
  comparisonPrincipleParabolic : Prop
  harnackInequality : Prop

structure ParabolicComparisonEvidence {C : ComparisonPrinciplesPackage}
    (P : ParabolicComparisonPackage C) where
  maximumPrincipleClosed : P.maximumPrinciple
  comparisonPrincipleParabolicClosed : P.comparisonPrincipleParabolic
  harnackInequalityClosed : P.harnackInequality

def ParabolicComparisonClosed {C : ComparisonPrinciplesPackage}
    (P : ParabolicComparisonPackage C) : Prop :=
  P.maximumPrinciple ∧ P.comparisonPrincipleParabolic ∧ P.harnackInequality

theorem parabolic_comparison_closed_from_evidence {C : ComparisonPrinciplesPackage}
    (P : ParabolicComparisonPackage C) (E : ParabolicComparisonEvidence P) :
    ParabolicComparisonClosed P := by
  exact And.intro E.maximumPrincipleClosed
    (And.intro E.comparisonPrincipleParabolicClosed E.harnackInequalityClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse