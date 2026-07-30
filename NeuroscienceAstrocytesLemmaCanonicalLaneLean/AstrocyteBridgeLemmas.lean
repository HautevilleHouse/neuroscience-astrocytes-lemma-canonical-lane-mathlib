import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.AstrocyteAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def bridgeClosed (A : AstrocyteAdmissibleClass) : Prop :=
  A.object.caSignal ∧ A.object.synapticModulation ∧ A.object.gliotransmitterRelease ∧ A.object.tripartiteSynapseEstablished

theorem bridge_from_admissible_class (A : AstrocyteAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
