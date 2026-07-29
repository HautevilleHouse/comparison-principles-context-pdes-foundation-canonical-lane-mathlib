import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ParabolicDomain where
  spaceDomain : Type
  timeInterval : Type
  parabolicBoundary : Type
  domainTopology : Prop
  domainRegularity : Prop

def ParabolicDomainClosed (D : ParabolicDomain) : Prop :=
  D.domainTopology ∧ D.domainRegularity

theorem parabolic_domain_closed_from_evidence (D : ParabolicDomain) (h1 : D.domainTopology) (h2 : D.domainRegularity) : ParabolicDomainClosed D := by
  exact And.intro h1 h2

structure ParabolicMaximumPrinciplePackage (D : ParabolicDomain) where
  maximumAttainedOnParabolicBoundary : Prop
  interiorMaximumImpliesPastConstant : Prop
  comparisonWithSupersolutions : Prop

def ParabolicMaximumPrincipleClosed (D : ParabolicDomain) (P : ParabolicMaximumPrinciplePackage D) : Prop :=
  P.maximumAttainedOnParabolicBoundary ∧ P.interiorMaximumImpliesPastConstant ∧ P.comparisonWithSupersolutions

theorem parabolic_maximum_principle_closed_from_evidence (D : ParabolicDomain) (P : ParabolicMaximumPrinciplePackage D) (h1 : P.maximumAttainedOnParabolicBoundary) (h2 : P.interiorMaximumImpliesPastConstant) (h3 : P.comparisonWithSupersolutions) : ParabolicMaximumPrincipleClosed D P := by
  exact And.intro h1 (And.intro h2 h3)

structure ParabolicHarnackInequalityPackage (D : ParabolicDomain) where
  harnackConstant : Prop
  positivityCondition : Prop
  localUniformBound : Prop

def ParabolicHarnackInequalityClosed (D : ParabolicDomain) (H : ParabolicHarnackInequalityPackage D) : Prop :=
  H.harnackConstant ∧ H.positivityCondition ∧ H.localUniformBound

theorem parabolic_harnack_inequality_closed_from_evidence (D : ParabolicDomain) (H : ParabolicHarnackInequalityPackage D) (h1 : H.harnackConstant) (h2 : H.positivityCondition) (h3 : H.localUniformBound) : ParabolicHarnackInequalityClosed D H := by
  exact And.intro h1 (And.intro h2 h3)

structure EllipticComparisonPackage (D : ParabolicDomain) where
  ellipticOperator : Type
  weakMaximumPrincipleElliptic : Prop
  strongMaximumPrincipleElliptic : Prop
  hopfLemmaElliptic : Prop

def EllipticComparisonClosed (D : ParabolicDomain) (E : EllipticComparisonPackage D) : Prop :=
  E.weakMaximumPrincipleElliptic ∧ E.strongMaximumPrincipleElliptic ∧ E.hopfLemmaElliptic

theorem elliptic_comparison_closed_from_evidence (D : ParabolicDomain) (E : EllipticComparisonPackage D) (h1 : E.weakMaximumPrincipleElliptic) (h2 : E.strongMaximumPrincipleElliptic) (h3 : E.hopfLemmaElliptic) : EllipticComparisonClosed D E := by
  exact And.intro h1 (And.intro h2 h3)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse
