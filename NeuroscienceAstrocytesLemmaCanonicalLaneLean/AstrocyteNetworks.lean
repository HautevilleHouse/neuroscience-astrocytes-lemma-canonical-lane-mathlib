import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteNetworkPackage where
  gapJunctionCoupling : Prop
  intercellularCalciumWaves : Prop
  networkSynchronization : Prop
  metabolicCoupling : Prop
  neurovascularCoupling : Prop

structure AstrocyteNetworkEvidence (N : AstrocyteNetworkPackage) where
  gapJunctionCouplingClosed : N.gapJunctionCoupling
  intercellularCalciumWavesClosed : N.intercellularCalciumWaves
  networkSynchronizationClosed : N.networkSynchronization
  metabolicCouplingClosed : N.metabolicCoupling
  neurovascularCouplingClosed : N.neurovascularCoupling

def AstrocyteNetworkClosed (N : AstrocyteNetworkPackage) : Prop :=
  N.gapJunctionCoupling ∧ N.intercellularCalciumWaves ∧
  N.networkSynchronization ∧ N.metabolicCoupling ∧
  N.neurovascularCoupling

theorem astrocyte_network_closed_from_evidence (N : AstrocyteNetworkPackage)
    (E : AstrocyteNetworkEvidence N) : AstrocyteNetworkClosed N := by
  exact And.intro E.gapJunctionCouplingClosed
    (And.intro E.intercellularCalciumWavesClosed
      (And.intro E.networkSynchronizationClosed
        (And.intro E.metabolicCouplingClosed E.neurovascularCouplingClosed)))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse