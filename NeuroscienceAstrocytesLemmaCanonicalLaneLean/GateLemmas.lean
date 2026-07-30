import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAstrocytesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse