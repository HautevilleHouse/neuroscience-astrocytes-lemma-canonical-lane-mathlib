import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAstrocytesLemmaCanonicalLaneLean

structure GliotransmissionPackage where
  glutamateRelease : Prop
  dSerineRelease : Prop
  atpRelease : Prop
  tnfAlphaRelease : Prop
  glutamateReleaseTerm : glutamateRelease
  dSerineReleaseTerm : dSerineRelease
  atpReleaseTerm : atpRelease
  tnfAlphaReleaseTerm : tnfAlphaRelease

structure GliotransmissionEvidence (G : GliotransmissionPackage) where
  glutamateReleaseClosed : G.glutamateRelease
  dSerineReleaseClosed : G.dSerineRelease
  atpReleaseClosed : G.atpRelease
  tnfAlphaReleaseClosed : G.tnfAlphaRelease

def GliotransmissionClosed (G : GliotransmissionPackage) : Prop :=
  G.glutamateRelease ∧ G.dSerineRelease ∧ G.atpRelease ∧ G.tnfAlphaRelease

theorem gliotransmission_closed_from_evidence
    (G : GliotransmissionPackage) (E : GliotransmissionEvidence G) :
    GliotransmissionClosed G := by
  exact And.intro E.glutamateReleaseClosed
    (And.intro E.dSerineReleaseClosed
      (And.intro E.atpReleaseClosed E.tnfAlphaReleaseClosed))

end NeuroscienceAstrocytesLemmaCanonicalLaneLean
end HautevilleHouse