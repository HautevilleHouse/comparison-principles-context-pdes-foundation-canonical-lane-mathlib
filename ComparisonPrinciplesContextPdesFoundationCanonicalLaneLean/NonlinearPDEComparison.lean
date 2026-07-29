import ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.ViscositySolutions

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure NonlinearComparisonPackage where
  hamiltonJacobiComparison : Prop
  porousMediumComparison : Prop
  pLaplacianComparison : Prop
  fullyNonlinearComparison : Prop

structure NonlinearComparisonEvidence (N : NonlinearComparisonPackage) where
  hamiltonJacobiClosed : N.hamiltonJacobiComparison
  porousMediumClosed : N.porousMediumComparison
  pLaplacianClosed : N.pLaplacianComparison
  fullyNonlinearClosed : N.fullyNonlinearComparison

def NonlinearComparisonClosed (N : NonlinearComparisonPackage) : Prop :=
  N.hamiltonJacobiComparison ∧ N.porousMediumComparison ∧
  N.pLaplacianComparison ∧ N.fullyNonlinearComparison

theorem nonlinear_comparison_closed_from_evidence (N : NonlinearComparisonPackage)
    (E : NonlinearComparisonEvidence N) : NonlinearComparisonClosed N := by
  exact And.intro E.hamiltonJacobiClosed
    (And.intro E.porousMediumClosed
      (And.intro E.pLaplacianClosed E.fullyNonlinearClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse