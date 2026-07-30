import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteNeuronMetabolicCouplingPackage where
  lactateShuttle : Prop
  glutamateGlutamineCycle : Prop
  glycogenMobilization : Prop
  lactateShuttleTerm : lactateShuttle
  glutamateGlutamineCycleTerm : glutamateGlutamineCycle
  glycogenMobilizationTerm : glycogenMobilization

structure AstrocyteNeuronMetabolicCouplingEvidence
    (M : AstrocyteNeuronMetabolicCouplingPackage) where
  lactateShuttleClosed : M.lactateShuttle
  glutamateGlutamineCycleClosed : M.glutamateGlutamineCycle
  glycogenMobilizationClosed : M.glycogenMobilization

def AstrocyteNeuronMetabolicCouplingClosed
    (M : AstrocyteNeuronMetabolicCouplingPackage) : Prop :=
  M.lactateShuttle ∧ M.glutamateGlutamineCycle ∧ M.glycogenMobilization

theorem astrocyte_neuron_metabolic_coupling_closed_from_evidence
    (M : AstrocyteNeuronMetabolicCouplingPackage)
    (E : AstrocyteNeuronMetabolicCouplingEvidence M) :
    AstrocyteNeuronMetabolicCouplingClosed M := by
  exact And.intro E.lactateShuttleClosed
    (And.intro E.glutamateGlutamineCycleClosed E.glycogenMobilizationClosed)

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse