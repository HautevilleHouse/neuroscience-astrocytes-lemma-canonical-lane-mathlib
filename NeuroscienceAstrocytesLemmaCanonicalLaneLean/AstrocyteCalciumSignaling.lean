import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteCalciumPackage where
  inositolTrisphosphatePathway : Prop
  calciumInducedCalciumRelease : Prop
  calciumWavePropagation : Prop
  spontaneousOscillations : Prop
  gliotransmitterRelease : Prop

structure AstrocyteCalciumEvidence (A : AstrocyteCalciumPackage) where
  inositolTrisphosphatePathwayClosed : A.inositolTrisphosphatePathway
  calciumInducedCalciumReleaseClosed : A.calciumInducedCalciumRelease
  calciumWavePropagationClosed : A.calciumWavePropagation
  spontaneousOscillationsClosed : A.spontaneousOscillations
  gliotransmitterReleaseClosed : A.gliotransmitterRelease

def AstrocyteCalciumClosed (A : AstrocyteCalciumPackage) : Prop :=
  A.inositolTrisphosphatePathway ∧ A.calciumInducedCalciumRelease ∧
  A.calciumWavePropagation ∧ A.spontaneousOscillations ∧
  A.gliotransmitterRelease

theorem astrocyte_calcium_closed_from_evidence (A : AstrocyteCalciumPackage)
    (E : AstrocyteCalciumEvidence A) : AstrocyteCalciumClosed A := by
  exact And.intro E.inositolTrisphosphatePathwayClosed
    (And.intro E.calciumInducedCalciumReleaseClosed
      (And.intro E.calciumWavePropagationClosed
        (And.intro E.spontaneousOscillationsClosed E.gliotransmitterReleaseClosed)))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse