import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.AstrocyteAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure CalciumPackage (A : AstrocyteAdmissibleClass) where
  ip3Production : Prop
  erRelease : Prop
  oscillatoryPattern : Prop
  wavePropagation : Prop
  evidence : A.object.caSignal

structure CalciumEvidence {A : AstrocyteAdmissibleClass} (C : CalciumPackage A) where
  ip3ProductionClosed : C.ip3Production
  erReleaseClosed : C.erRelease
  oscillatoryPatternClosed : C.oscillatoryPattern
  wavePropagationClosed : C.wavePropagation

def CalciumClosed {A : AstrocyteAdmissibleClass} (C : CalciumPackage A) : Prop :=
  C.ip3Production ∧ C.erRelease ∧ C.oscillatoryPattern ∧ C.wavePropagation

theorem calcium_closed_from_evidence {A : AstrocyteAdmissibleClass} (C : CalciumPackage A) (E : CalciumEvidence C) : CalciumClosed C :=
  And.intro E.ip3ProductionClosed (And.intro E.erReleaseClosed (And.intro E.oscillatoryPatternClosed E.wavePropagationClosed))

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
