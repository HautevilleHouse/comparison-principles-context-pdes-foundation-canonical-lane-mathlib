import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

def ConstrainedComparisonPrinciplesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_comparison_principles_endgame (A : AdmissibleClass) :
    ConstrainedComparisonPrinciplesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse