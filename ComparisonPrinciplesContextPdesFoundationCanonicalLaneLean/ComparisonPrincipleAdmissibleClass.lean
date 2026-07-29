import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

structure ComparisonAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  pdeSystem : Prop
  comparisonPrincipleHolds : Prop
  conclusion : comparisonPrincipleHolds

structure AdmissibleClass where
  object : ComparisonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComparisonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse