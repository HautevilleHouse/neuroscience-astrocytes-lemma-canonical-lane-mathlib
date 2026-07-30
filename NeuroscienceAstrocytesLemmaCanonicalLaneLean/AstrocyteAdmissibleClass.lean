import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteAdmittedObject where
  id : Nat
  caSignal : Prop
  synapticModulation : Prop
  gliotransmitterRelease : Prop
  tripartiteSynapseEstablished : Prop
  conclusion : caSignal ∧ synapticModulation ∧ gliotransmitterRelease ∧ tripartiteSynapseEstablished

structure AstrocyteAdmissibleClass where
  object : AstrocyteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def astrocyteAdmittedClosure (A : AstrocyteAdmissibleClass) : Prop :=
  (A.object.caSignal ∧ A.object.synapticModulation ∧ A.object.gliotransmitterRelease ∧ A.object.tripartiteSynapseEstablished) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
