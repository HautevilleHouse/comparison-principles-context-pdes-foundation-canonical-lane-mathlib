import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure MaximumPrinciplePackage where
  initialCondition : Prop
  boundaryCondition : Prop
  pdeSatisfied : Prop
  maximumAttainedOnParabolicBoundary : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  initialConditionClosed : M.initialCondition
  boundaryConditionClosed : M.boundaryCondition
  pdeSatisfiedClosed : M.pdeSatisfied
  maximumAttainedOnParabolicBoundaryClosed : M.maximumAttainedOnParabolicBoundary

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.initialCondition ∧ M.boundaryCondition ∧ M.pdeSatisfied ∧ M.maximumAttainedOnParabolicBoundary

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.initialConditionClosed
    (And.intro E.boundaryConditionClosed
      (And.intro E.pdeSatisfiedClosed E.maximumAttainedOnParabolicBoundaryClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse