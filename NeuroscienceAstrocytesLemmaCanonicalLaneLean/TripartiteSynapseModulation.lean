import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.CalciumSignalingDynamics

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure TripartiteSynapsePackage {A : AstrocyteAdmissibleClass} (C : CalciumPackage A) where
  presynapticTerminalContact : Prop
  postsynapticReceptorActivation : Prop
  gliotransmitterRelease : Prop
  synapticPlasticityInduction : Prop
  evidence : A.object.tripartiteSynapseEstablished

structure TripartiteSynapseEvidence {A : AstrocyteAdmissibleClass} {C : CalciumPackage A} (T : TripartiteSynapsePackage C) where
  presynapticTerminalContactClosed : T.presynapticTerminalContact
  postsynapticReceptorActivationClosed : T.postsynapticReceptorActivation
  gliotransmitterReleaseClosed : T.gliotransmitterRelease
  synapticPlasticityInductionClosed : T.synapticPlasticityInduction

def TripartiteSynapseClosed {A : AstrocyteAdmissibleClass} {C : CalciumPackage A} (T : TripartiteSynapsePackage C) : Prop :=
  T.presynapticTerminalContact ∧ T.postsynapticReceptorActivation ∧ T.gliotransmitterRelease ∧ T.synapticPlasticityInduction

theorem tripartite_synapse_closed_from_evidence {A : AstrocyteAdmissibleClass} {C : CalciumPackage A} (T : TripartiteSynapsePackage C) (E : TripartiteSynapseEvidence T) : TripartiteSynapseClosed T :=
  And.intro E.presynapticTerminalContactClosed (And.intro E.postsynapticReceptorActivationClosed (And.intro E.gliotransmitterReleaseClosed E.synapticPlasticityInductionClosed))

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
