import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure TripartiteSynapsePackage where
  synapseStructure : Prop
  astrocyteProcessEnsheathment : Prop
  glutamateGlutamineCycle : Prop
  potassiumBuffering : Prop
  synapticPlasticityModulation : Prop

structure TripartiteSynapseEvidence (T : TripartiteSynapsePackage) where
  synapseStructureClosed : T.synapseStructure
  astrocyteProcessEnsheathmentClosed : T.astrocyteProcessEnsheathment
  glutamateGlutamineCycleClosed : T.glutamateGlutamineCycle
  potassiumBufferingClosed : T.potassiumBuffering
  synapticPlasticityModulationClosed : T.synapticPlasticityModulation

def TripartiteSynapseClosed (T : TripartiteSynapsePackage) : Prop :=
  T.synapseStructure ∧ T.astrocyteProcessEnsheathment ∧
  T.glutamateGlutamineCycle ∧ T.potassiumBuffering ∧
  T.synapticPlasticityModulation

theorem tripartite_synapse_closed_from_evidence (T : TripartiteSynapsePackage)
    (E : TripartiteSynapseEvidence T) : TripartiteSynapseClosed T := by
  exact And.intro E.synapseStructureClosed
    (And.intro E.astrocyteProcessEnsheathmentClosed
      (And.intro E.glutamateGlutamineCycleClosed
        (And.intro E.potassiumBufferingClosed E.synapticPlasticityModulationClosed)))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse