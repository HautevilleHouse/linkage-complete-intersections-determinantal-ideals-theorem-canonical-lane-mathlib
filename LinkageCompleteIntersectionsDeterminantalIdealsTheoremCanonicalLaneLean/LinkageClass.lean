import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.LinkageDefinitions

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkageClassPackage where
  ring : Type
  ideal : Type
  linkedIdeal : Type
  linkageRelation : Prop
  linkageEquivalence : Prop
  linkageEquivalenceTerm : linkageRelation → linkageEquivalence

structure LinkageClassEvidence (L : LinkageClassPackage) where
  linkageRelationClosed : L.linkageRelation
  linkageEquivalenceClosed : L.linkageEquivalence

def LinkageClassClosed (L : LinkageClassPackage) : Prop :=
  L.linkageRelation ∧ L.linkageEquivalence

theorem linkage_class_closed_from_evidence (L : LinkageClassPackage)
    (E : LinkageClassEvidence L) : LinkageClassClosed L := by
  exact And.intro E.linkageRelationClosed E.linkageEquivalenceClosed

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse