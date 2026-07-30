import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure TripartiteSynapsePackage where
  glutamateUptake : Prop
  gliotransmitterRelease : Prop
  synapticCleftModulation : Prop
  ephapticCoupling : Prop

structure TripartiteSynapseEvidence (T : TripartiteSynapsePackage) where
  glutamateUptakeClosed : T.glutamateUptake
  gliotransmitterReleaseClosed : T.gliotransmitterRelease
  synapticCleftModulationClosed : T.synapticCleftModulation
  ephapticCouplingClosed : T.ephapticCoupling

def TripartiteSynapseClosed (T : TripartiteSynapsePackage) : Prop :=
  T.glutamateUptake ∧ T.gliotransmitterRelease ∧
  T.synapticCleftModulation ∧ T.ephapticCoupling

theorem tripartite_synapse_closed_from_evidence (T : TripartiteSynapsePackage)
    (E : TripartiteSynapseEvidence T) : TripartiteSynapseClosed T := by
  exact And.intro E.glutamateUptakeClosed
    (And.intro E.gliotransmitterReleaseClosed
      (And.intro E.synapticCleftModulationClosed E.ephapticCouplingClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse