import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.GradedAlgebra

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure CompleteIntersectionLinkagePackage where
  idealI : Ideal (PolynomialRing ℚ 3)
  idealJ : Ideal (PolynomialRing ℚ 3)
  idealIGeneratedByRegularSequence : Prop
  idealJGeneratedByRegularSequence : Prop
  linkageRelation : idealI :ideal: idealJ
  gradeThree : grade idealI = 3 ∧ grade idealJ = 3

structure CompleteIntersectionLinkageEvidence (C : CompleteIntersectionLinkagePackage) where
  idealIGeneratedByRegularSequenceClosed : C.idealIGeneratedByRegularSequence
  idealJGeneratedByRegularSequenceClosed : C.idealJGeneratedByRegularSequence
  linkageRelationClosed : C.linkageRelation
  gradeThreeClosed : C.gradeThree.1 ∧ C.gradeThree.2

def CompleteIntersectionLinkageClosed (C : CompleteIntersectionLinkagePackage) : Prop :=
  C.idealIGeneratedByRegularSequence ∧ C.idealJGeneratedByRegularSequence ∧
  C.linkageRelation ∧ C.gradeThree.1 ∧ C.gradeThree.2

theorem complete_intersection_linkage_closed_from_evidence
    (C : CompleteIntersectionLinkagePackage)
    (E : CompleteIntersectionLinkageEvidence C) :
    CompleteIntersectionLinkageClosed C := by
  exact And.intro E.idealIGeneratedByRegularSequenceClosed
    (And.intro E.idealJGeneratedByRegularSequenceClosed
      (And.intro E.linkageRelationClosed
        (And.intro E.gradeThreeClosed.1 E.gradeThreeClosed.2)))

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse
