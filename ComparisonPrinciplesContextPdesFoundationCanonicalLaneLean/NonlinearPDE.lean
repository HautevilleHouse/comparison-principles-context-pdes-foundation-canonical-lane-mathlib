import canonicalLaneMathlib.AdmissibleClass

/-!
# Nonlinear PDE Package
-/

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure NonlinearPDEPackage where
  nonlinearOperator : Prop
  regularizingEffect : Prop
  comparisonPrincipleHolds : Prop
  stabilityResult : Prop

structure NonlinearPDEEvidence (N : NonlinearPDEPackage) where
  nonlinearOperatorClosed : N.nonlinearOperator
  regularizingEffectClosed : N.regularizingEffect
  comparisonPrincipleHoldsClosed : N.comparisonPrincipleHolds
  stabilityResultClosed : N.stabilityResult

def NonlinearPDEClosed (N : NonlinearPDEPackage) : Prop :=
  N.nonlinearOperator ∧ N.regularizingEffect ∧
  N.comparisonPrincipleHolds ∧ N.stabilityResult

theorem nonlinear_pde_closed_from_evidence (N : NonlinearPDEPackage)
    (E : NonlinearPDEEvidence N) : NonlinearPDEClosed N := by
  exact And.intro E.nonlinearOperatorClosed
    (And.intro E.regularizingEffectClosed
      (And.intro E.comparisonPrincipleHoldsClosed E.stabilityResultClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse