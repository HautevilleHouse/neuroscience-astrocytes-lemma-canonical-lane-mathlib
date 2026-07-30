import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.AstrocyteMolecularNetworks

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteFoundationalPackage where
  calciumSignaling : CalciumSignalingPackage
  tripartiteSynapse : TripartiteSynapsePackage calciumSignaling
  neurovascularCoupling : NeurovascularCouplingPackage calciumSignaling tripartiteSynapse
  molecularNetworks : MolecularNetworkPackage calciumSignaling tripartiteSynapse neurovascularCoupling

structure AstrocyteFoundationalEvidence (A : AstrocyteFoundationalPackage) where
  calciumSignalingEvidence : CalciumSignalingEvidence A.calciumSignaling
  tripartiteSynapseEvidence : TripartiteSynapseEvidence A.tripartiteSynapse
  neurovascularCouplingEvidence : NeurovascularCouplingEvidence A.neurovascularCoupling
  molecularNetworkEvidence : MolecularNetworkEvidence A.molecularNetworks

def AstrocyteFoundationalClosed (A : AstrocyteFoundationalPackage) : Prop :=
  CalciumSignalingClosed A.calciumSignaling ∧ TripartiteSynapseClosed A.tripartiteSynapse ∧ NeurovascularCouplingClosed A.neurovascularCoupling ∧ MolecularNetworkClosed A.molecularNetworks

theorem astrocyte_foundational_closed_from_evidence (A : AstrocyteFoundationalPackage) (E : AstrocyteFoundationalEvidence A) : AstrocyteFoundationalClosed A := by
  refine And.intro (calcium_signaling_closed_from_evidence A.calciumSignaling E.calciumSignalingEvidence)
    (And.intro (tripartite_synapse_closed_from_evidence A.tripartiteSynapse E.tripartiteSynapseEvidence)
      (And.intro (neurovascular_coupling_closed_from_evidence A.neurovascularCoupling E.neurovascularCouplingEvidence)
        (molecular_network_closed_from_evidence A.molecularNetworks E.molecularNetworkEvidence)))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse