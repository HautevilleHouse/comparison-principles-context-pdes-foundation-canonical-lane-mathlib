import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.ComparisonPrinciplesFoundation

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure EllipticComparisonPackage {C : ComparisonPrinciplesPackage} where
  ellipticOperator : Type u
  strongMaximumPrinciple : Prop
  comparisonPrincipleElliptic : Prop
  aPrioriEstimates : Prop

structure EllipticComparisonEvidence {C : ComparisonPrinciplesPackage}
    (E : EllipticComparisonPackage C) where
  strongMaximumPrincipleClosed : E.strongMaximumPrinciple
  comparisonPrincipleEllipticClosed : E.comparisonPrincipleElliptic
  aPrioriEstimatesClosed : E.aPrioriEstimates

def EllipticComparisonClosed {C : ComparisonPrinciplesPackage}
    (E : EllipticComparisonPackage C) : Prop :=
  E.strongMaximumPrinciple ∧ E.comparisonPrincipleElliptic ∧ E.aPrioriEstimates

theorem elliptic_comparison_closed_from_evidence {C : ComparisonPrinciplesPackage}
    (E : EllipticComparisonPackage C) (Ev : EllipticComparisonEvidence E) :
    EllipticComparisonClosed E := by
  exact And.intro Ev.strongMaximumPrincipleClosed
    (And.intro Ev.comparisonPrincipleEllipticClosed Ev.aPrioriEstimatesClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse