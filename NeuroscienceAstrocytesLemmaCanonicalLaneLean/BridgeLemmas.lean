import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAstrocytesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AstrocyteWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse