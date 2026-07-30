import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure MetabolicCouplingPackage where
  lactateShuttle : Prop
  glycogenMetabolism : Prop
  glucoseUptakeRegulation : Prop
  neurovascularCoupling : Prop

structure MetabolicCouplingEvidence (M : MetabolicCouplingPackage) where
  lactateShuttleClosed : M.lactateShuttle
  glycogenMetabolismClosed : M.glycogenMetabolism
  glucoseUptakeRegulationClosed : M.glucoseUptakeRegulation
  neurovascularCouplingClosed : M.neurovascularCoupling

def MetabolicCouplingClosed (M : MetabolicCouplingPackage) : Prop :=
  M.lactateShuttle ∧ M.glycogenMetabolism ∧
  M.glucoseUptakeRegulation ∧ M.neurovascularCoupling

theorem metabolic_coupling_closed_from_evidence (M : MetabolicCouplingPackage)
    (E : MetabolicCouplingEvidence M) : MetabolicCouplingClosed M := by
  exact And.intro E.lactateShuttleClosed
    (And.intro E.glycogenMetabolismClosed
      (And.intro E.glucoseUptakeRegulationClosed E.neurovascularCouplingClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse