import ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure MaximumPrinciplePackage where
  parabolicMaximumPrinciple : Prop
  ellipticMaximumPrinciple : Prop
  comparisonFunction : Prop
  boundaryCondition : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  parabolicMPClosed : M.parabolicMaximumPrinciple
  ellipticMPClosed : M.ellipticMaximumPrinciple
  comparisonFunctionClosed : M.comparisonFunction
  boundaryConditionClosed : M.boundaryCondition

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.parabolicMaximumPrinciple ∧ M.ellipticMaximumPrinciple ∧
  M.comparisonFunction ∧ M.boundaryCondition

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.parabolicMPClosed
    (And.intro E.ellipticMPClosed
      (And.intro E.comparisonFunctionClosed E.boundaryConditionClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse