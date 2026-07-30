import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteNetworkPackage where
  gapJunctionCoupling : Prop
  calciumWavePropagation : Prop
  longRangeSignaling : Prop
  networkSynchronization : Prop

structure AstrocyteNetworkEvidence (A : AstrocyteNetworkPackage) where
  gapJunctionCouplingClosed : A.gapJunctionCoupling
  calciumWavePropagationClosed : A.calciumWavePropagation
  longRangeSignalingClosed : A.longRangeSignaling
  networkSynchronizationClosed : A.networkSynchronization

def AstrocyteNetworkClosed (A : AstrocyteNetworkPackage) : Prop :=
  A.gapJunctionCoupling ∧ A.calciumWavePropagation ∧
  A.longRangeSignaling ∧ A.networkSynchronization

theorem astrocyte_network_closed_from_evidence (A : AstrocyteNetworkPackage)
    (E : AstrocyteNetworkEvidence A) : AstrocyteNetworkClosed A := by
  exact And.intro E.gapJunctionCouplingClosed
    (And.intro E.calciumWavePropagationClosed
      (And.intro E.longRangeSignalingClosed E.networkSynchronizationClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse