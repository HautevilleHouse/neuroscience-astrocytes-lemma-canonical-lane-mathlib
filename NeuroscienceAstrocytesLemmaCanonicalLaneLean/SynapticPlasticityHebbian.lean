import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  ltpInduction : Prop
  ltdInduction : Prop
  spikeTimingDependence : Prop
  astrocyteModulation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction
  spikeTimingDependenceClosed : H.spikeTimingDependence
  astrocyteModulationClosed : H.astrocyteModulation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.ltpInduction ∧ H.ltdInduction ∧
  H.spikeTimingDependence ∧ H.astrocyteModulation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.spikeTimingDependenceClosed E.astrocyteModulationClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse