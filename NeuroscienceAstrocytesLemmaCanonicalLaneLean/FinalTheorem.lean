import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAstrocytesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

def ConstrainedAstrocytesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_astrocytes_lemma_endgame (A : AdmissibleClass) :
    ConstrainedAstrocytesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse