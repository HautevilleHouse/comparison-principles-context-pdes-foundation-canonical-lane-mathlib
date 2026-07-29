import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.ParabolicComparison
import HautevilleHouse.ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.EllipticComparison

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure BarrierFunctionsPackage {C : ComparisonPrinciplesPackage}
    {P : ParabolicComparisonPackage C} {E : EllipticComparisonPackage C} where
  barrierFunction : Type u
  boundaryComparison : Prop
  interiorComparison : Prop
  regularityTransfer : Prop

structure BarrierFunctionsEvidence {C : ComparisonPrinciplesPackage}
    {P : ParabolicComparisonPackage C} {E : EllipticComparisonPackage C}
    (B : BarrierFunctionsPackage C P E) where
  boundaryComparisonClosed : B.boundaryComparison
  interiorComparisonClosed : B.interiorComparison
  regularityTransferClosed : B.regularityTransfer

def BarrierFunctionsClosed {C : ComparisonPrinciplesPackage}
    {P : ParabolicComparisonPackage C} {E : EllipticComparisonPackage C}
    (B : BarrierFunctionsPackage C P E) : Prop :=
  B.boundaryComparison ∧ B.interiorComparison ∧ B.regularityTransfer

theorem barrier_functions_closed_from_evidence {C : ComparisonPrinciplesPackage}
    {P : ParabolicComparisonPackage C} {E : EllipticComparisonPackage C}
    (B : BarrierFunctionsPackage C P E) (Ev : BarrierFunctionsEvidence B) :
    BarrierFunctionsClosed B := by
  exact And.intro Ev.boundaryComparisonClosed
    (And.intro Ev.interiorComparisonClosed Ev.regularityTransferClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse