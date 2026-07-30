import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure AstrocyteAnalyticProofCertificate where
  calciumSignalingClosed : Prop
  glutamateReleaseClosed : Prop
  hebbianPlasticityClosed : Prop
  calciumSignalingClosedTerm : calciumSignalingClosed
  glutamateReleaseClosedTerm : glutamateReleaseClosed
  hebbianPlasticityClosedTerm : hebbianPlasticityClosed

def AstrocyteAnalyticProofCertificateClosed (C : AstrocyteAnalyticProofCertificate) : Prop :=
  C.calciumSignalingClosed ∧ C.glutamateReleaseClosed ∧ C.hebbianPlasticityClosed

theorem astrocyte_analytic_proof_certificate_closed
    (C : AstrocyteAnalyticProofCertificate) : AstrocyteAnalyticProofCertificateClosed C := by
  exact And.intro C.calciumSignalingClosedTerm
    (And.intro C.glutamateReleaseClosedTerm C.hebbianPlasticityClosedTerm)

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse