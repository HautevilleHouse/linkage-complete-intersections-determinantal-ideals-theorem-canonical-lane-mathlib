import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkageData where
  ideal : Type u
  linkedIdeal : Type v
  linkageClass : Prop
  linkageMatrix : Prop
  linkageClassClosed : Prop
  linkageMatrixClosed : Prop
  linkageClassTerm : linkageClassClosed
  linkageMatrixTerm : linkageMatrixClosed

structure LinkageEvidence (L : LinkageData) where
  linkageClassClosed : L.linkageClassClosed
  linkageMatrixClosed : L.linkageMatrixClosed

def LinkageClosed (L : LinkageData) : Prop :=
  L.linkageClassClosed ∧ L.linkageMatrixClosed

theorem linkage_closed_from_evidence (L : LinkageData) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.linkageClassClosed E.linkageMatrixClosed

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse