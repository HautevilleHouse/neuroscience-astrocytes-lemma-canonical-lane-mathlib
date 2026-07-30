import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.AstrocyteBridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def gateClosed (A : AstrocyteAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AstrocyteAdmissibleClass) : gateClosed A :=
  A.gateWitness

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
