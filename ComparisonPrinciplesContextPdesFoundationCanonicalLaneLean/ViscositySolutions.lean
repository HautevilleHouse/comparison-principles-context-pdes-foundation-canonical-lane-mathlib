import ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.MaximumPrinciplePDE

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ViscositySolutionPackage where
  testFunctionClass : Type u
  viscositySubsolution : Prop
  viscositySupersolution : Prop
  uniquenessTheorem : Prop

structure ViscositySolutionEvidence (V : ViscositySolutionPackage) where
  viscositySubsolutionClosed : V.viscositySubsolution
  viscositySupersolutionClosed : V.viscositySupersolution
  uniquenessTheoremClosed : V.uniquenessTheorem

def ViscositySolutionClosed (V : ViscositySolutionPackage) : Prop :=
  V.viscositySubsolution ∧ V.viscositySupersolution ∧ V.uniquenessTheorem

theorem viscosity_solution_closed_from_evidence (V : ViscositySolutionPackage)
    (E : ViscositySolutionEvidence V) : ViscositySolutionClosed V := by
  exact And.intro E.viscositySubsolutionClosed
    (And.intro E.viscositySupersolutionClosed E.uniquenessTheoremClosed)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse