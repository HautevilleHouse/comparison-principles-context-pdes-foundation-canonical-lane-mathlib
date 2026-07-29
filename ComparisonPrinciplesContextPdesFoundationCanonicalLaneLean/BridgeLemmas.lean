import ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComparisonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComparisonPrinciplesContextPdesFoundationCanonicalLaneLean
end HautevilleHouse