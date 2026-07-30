import HautevilleHouse.NeuroscienceAstrocytesLemmaCanonicalLaneLean.AstrocyteGateLemmas

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def ConstrainedAstrocyteClosure (A : AstrocyteAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_astrocyte_endgame (A : AstrocyteAdmissibleClass) : ConstrainedAstrocyteClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end NeuroscienceAstrocytesLemmaCanonicalLaneLean
