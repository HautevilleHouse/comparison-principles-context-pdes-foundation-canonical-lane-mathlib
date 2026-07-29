import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ComparisonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComparisonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse