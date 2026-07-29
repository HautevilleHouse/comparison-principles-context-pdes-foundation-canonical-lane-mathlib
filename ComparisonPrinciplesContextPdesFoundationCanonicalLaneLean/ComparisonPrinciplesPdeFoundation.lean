import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ParabolicOperatorType where
  coeffSecondOrder : Type
  coeffFirstOrder : Type
  coeffZeroOrder : Type
  uniformParabolicity : Prop

def ParabolicOperatorType.uniformParabolicityHolds (P : ParabolicOperatorType) : Prop :=
  P.uniformParabolicity

structure WeakMaximumPrinciplePackage (P : ParabolicOperatorType) where
  domainConnected : Prop
  interiorMaximumImpliesConstant : Prop
  boundaryComparison : Prop

def WeakMaximumPrincipleClosed (P : ParabolicOperatorType) (W : WeakMaximumPrinciplePackage P) : Prop :=
  W.interiorMaximumImpliesConstant ∧ W.boundaryComparison

theorem weak_maximum_principle_closed_from_package (P : ParabolicOperatorType) (W : WeakMaximumPrinciplePackage P) (h : W.interiorMaximumImpliesConstant) (h' : W.boundaryComparison) : WeakMaximumPrincipleClosed P W := by
  exact And.intro h h'

structure StrongMaximumPrincipleEvidence where
  nonnegativeSupremumNonnegative : Prop
  strictPositivityPropagation : Prop
  strongMaximumClosed : Prop

def StrongMaximumPrincipleClosed (E : StrongMaximumPrincipleEvidence) : Prop :=
  E.nonnegativeSupremumNonnegative ∧ E.strictPositivityPropagation ∧ E.strongMaximumClosed

theorem strong_maximum_principle_closed_from_evidence (E : StrongMaximumPrincipleEvidence) (h1 : E.nonnegativeSupremumNonnegative) (h2 : E.strictPositivityPropagation) (h3 : E.strongMaximumClosed) : StrongMaximumPrincipleClosed E := by
  exact And.intro h1 (And.intro h2 h3)

structure HopfLemmaPackage where
  boundaryPointType : Type
  interiorBallExists : Prop
  strictInequalityAtBoundary : Prop

def HopfLemmaClosed (H : HopfLemmaPackage) : Prop :=
  H.interiorBallExists ∧ H.strictInequalityAtBoundary

theorem hopf_lemma_closed_from_package (H : HopfLemmaPackage) (h1 : H.interiorBallExists) (h2 : H.strictInequalityAtBoundary) : HopfLemmaClosed H := by
  exact And.intro h1 h2

structure ComparisonFunction (U : Type) where
  supersolution : Prop
  subsolution : Prop
  comparisonInequality : Prop

def ComparisonFunction.comparisonHolds (f : ComparisonFunction U) : Prop :=
  f.supersolution ∧ f.subsolution ∧ f.comparisonInequality

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse
