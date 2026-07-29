import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure CompleteIntersectionProperty where
  ideal : Type u
  height : Nat
  generators : Nat
  heightEqualsGenerators : Prop
  regularSequence : Prop
  heightEqualsGeneratorsTerm : heightEqualsGenerators
  regularSequenceTerm : regularSequence

structure CompleteIntersectionEvidence (C : CompleteIntersectionProperty) where
  heightEqualsGeneratorsClosed : C.heightEqualsGenerators
  regularSequenceClosed : C.regularSequence

def CompleteIntersectionClosed (C : CompleteIntersectionProperty) : Prop :=
  C.heightEqualsGenerators ∧ C.regularSequence

theorem complete_intersection_closed_from_evidence (C : CompleteIntersectionProperty) (E : CompleteIntersectionEvidence C) :
    CompleteIntersectionClosed C := by
  exact And.intro E.heightEqualsGeneratorsClosed E.regularSequenceClosed

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse