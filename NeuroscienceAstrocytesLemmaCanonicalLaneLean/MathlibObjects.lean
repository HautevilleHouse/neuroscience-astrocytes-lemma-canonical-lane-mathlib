import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AstrocyteAdmittedObject where
  space : AstrocyteSpace
  calciumWaveModel : Prop
  glutamateRelease : Prop
  hebbianPlasticity : Prop
  conclusion : calciumWaveModel ∧ glutamateRelease ∧ hebbianPlasticity

structure AstrocyteEndgameState where
  object : AstrocyteAdmittedObject

def AstrocyteWitnessClosed (O : AstrocyteAdmittedObject) : Prop :=
  O.calciumWaveModel ∧ O.glutamateRelease ∧ O.hebbianPlasticity

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse