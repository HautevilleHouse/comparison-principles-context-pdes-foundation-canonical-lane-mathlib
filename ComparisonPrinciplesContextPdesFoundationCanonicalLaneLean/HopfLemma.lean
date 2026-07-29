import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure HopfLemmaPackage where
  interiorMaximum : Prop
  strictInequality : Prop
  outwardNormalDerivativePositive : Prop
  operatorUniformlyParabolic : Prop

structure HopfLemmaEvidence (H : HopfLemmaPackage) where
  interiorMaximumClosed : H.interiorMaximum
  strictInequalityClosed : H.strictInequality
  outwardNormalDerivativePositiveClosed : H.outwardNormalDerivativePositive
  operatorUniformlyParabolicClosed : H.operatorUniformlyParabolic

def HopfLemmaClosed (H : HopfLemmaPackage) : Prop :=
  H.interiorMaximum ∧ H.strictInequality ∧ H.outwardNormalDerivativePositive ∧ H.operatorUniformlyParabolic

theorem hopf_lemma_closed_from_evidence (H : HopfLemmaPackage)
    (E : HopfLemmaEvidence H) : HopfLemmaClosed H := by
  exact And.intro E.interiorMaximumClosed
    (And.intro E.strictInequalityClosed
      (And.intro E.outwardNormalDerivativePositiveClosed E.operatorUniformlyParabolicClosed))

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse