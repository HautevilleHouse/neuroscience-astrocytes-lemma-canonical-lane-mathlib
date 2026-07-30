import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure NeuroinflammationPackage where
  reactiveGliosis : Prop
  cytokineRelease : Prop
  complementActivation : Prop
  resolutionPhase : Prop

structure NeuroinflammationEvidence (N : NeuroinflammationPackage) where
  reactiveGliosisClosed : N.reactiveGliosis
  cytokineReleaseClosed : N.cytokineRelease
  complementActivationClosed : N.complementActivation
  resolutionPhaseClosed : N.resolutionPhase

def NeuroinflammationClosed (N : NeuroinflammationPackage) : Prop :=
  N.reactiveGliosis ∧ N.cytokineRelease ∧
  N.complementActivation ∧ N.resolutionPhase

theorem neuroinflammation_closed_from_evidence (N : NeuroinflammationPackage)
    (E : NeuroinflammationEvidence N) : NeuroinflammationClosed N := by
  exact And.intro E.reactiveGliosisClosed
    (And.intro E.cytokineReleaseClosed
      (And.intro E.complementActivationClosed E.resolutionPhaseClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse