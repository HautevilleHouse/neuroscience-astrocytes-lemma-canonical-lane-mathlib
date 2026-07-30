import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.NeurovascularCoupling

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure MolecularNetworkPackage {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} {N : NeurovascularCouplingPackage C T} where
  geneRegulationNetworks : Prop
  metabolicPathways : Prop
  signalingPathways : Prop
  proteostasis : Prop

structure MolecularNetworkEvidence {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} {N : NeurovascularCouplingPackage C T} (M : MolecularNetworkPackage C T N) where
  geneRegulationNetworksClosed : M.geneRegulationNetworks
  metabolicPathwaysClosed : M.metabolicPathways
  signalingPathwaysClosed : M.signalingPathways
  proteostasisClosed : M.proteostasis

def MolecularNetworkClosed {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} {N : NeurovascularCouplingPackage C T} (M : MolecularNetworkPackage C T N) : Prop :=
  M.geneRegulationNetworks ∧ M.metabolicPathways ∧ M.signalingPathways ∧ M.proteostasis

theorem molecular_network_closed_from_evidence {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} {N : NeurovascularCouplingPackage C T} (M : MolecularNetworkPackage C T N) (E : MolecularNetworkEvidence M) : MolecularNetworkClosed M := by
  exact And.intro E.geneRegulationNetworksClosed (And.intro E.metabolicPathwaysClosed (And.intro E.signalingPathwaysClosed E.proteostasisClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse