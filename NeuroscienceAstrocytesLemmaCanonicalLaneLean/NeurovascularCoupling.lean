import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.TripartiteSynapse

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure NeurovascularCouplingPackage {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} where
  vasoactiveSubstanceRelease : Prop
  bloodFlowRegulation : Prop
  hemodynamicResponse : Prop
  neurovascularUnitIntegrity : Prop

structure NeurovascularCouplingEvidence {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} (N : NeurovascularCouplingPackage C T) where
  vasoactiveSubstanceReleaseClosed : N.vasoactiveSubstanceRelease
  bloodFlowRegulationClosed : N.bloodFlowRegulation
  hemodynamicResponseClosed : N.hemodynamicResponse
  neurovascularUnitIntegrityClosed : N.neurovascularUnitIntegrity

def NeurovascularCouplingClosed {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} (N : NeurovascularCouplingPackage C T) : Prop :=
  N.vasoactiveSubstanceRelease ∧ N.bloodFlowRegulation ∧ N.hemodynamicResponse ∧ N.neurovascularUnitIntegrity

theorem neurovascular_coupling_closed_from_evidence {C : CalciumSignalingPackage} {T : TripartiteSynapsePackage C} (N : NeurovascularCouplingPackage C T) (E : NeurovascularCouplingEvidence N) : NeurovascularCouplingClosed N := by
  exact And.intro E.vasoactiveSubstanceReleaseClosed (And.intro E.bloodFlowRegulationClosed (And.intro E.hemodynamicResponseClosed E.neurovascularUnitIntegrityClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse