import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteCalciumDynamicsPackage where
  calciumWave : Prop
  ip3ReceptorDynamics : Prop
  erRelease : Prop
  mitochondrialUptake : Prop
  calciumWaveTerm : calciumWave
  ip3ReceptorDynamicsTerm : ip3ReceptorDynamics
  erReleaseTerm : erRelease
  mitochondrialUptakeTerm : mitochondrialUptake

structure AstrocyteCalciumDynamicsEvidence (A : AstrocyteCalciumDynamicsPackage) where
  calciumWaveClosed : A.calciumWave
  ip3ReceptorDynamicsClosed : A.ip3ReceptorDynamics
  erReleaseClosed : A.erRelease
  mitochondrialUptakeClosed : A.mitochondrialUptake

def AstrocyteCalciumDynamicsClosed (A : AstrocyteCalciumDynamicsPackage) : Prop :=
  A.calciumWave ∧ A.ip3ReceptorDynamics ∧ A.erRelease ∧ A.mitochondrialUptake

theorem astrocyte_calcium_dynamics_closed_from_evidence
    (A : AstrocyteCalciumDynamicsPackage) (E : AstrocyteCalciumDynamicsEvidence A) :
    AstrocyteCalciumDynamicsClosed A := by
  exact And.intro E.calciumWaveClosed
    (And.intro E.ip3ReceptorDynamicsClosed
      (And.intro E.erReleaseClosed E.mitochondrialUptakeClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse