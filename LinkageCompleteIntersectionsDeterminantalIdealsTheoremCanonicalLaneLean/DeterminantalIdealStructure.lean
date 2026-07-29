import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure DeterminantalIdealData where
  ring : Type u
  matrixSize : Nat × Nat
  idealGeneratedByMinors : Prop
  height : Nat
  codimension : Prop
  heightMatchesExpected : Prop
  heightMatchesExpectedTerm : heightMatchesExpected

structure DeterminantalIdealEvidence (D : DeterminantalIdealData) where
  idealGeneratedByMinorsClosed : D.idealGeneratedByMinors
  codimensionClosed : D.codimension
  heightMatchesExpectedClosed : D.heightMatchesExpected

def DeterminantalIdealClosed (D : DeterminantalIdealData) : Prop :=
  D.idealGeneratedByMinors ∧ D.codimension ∧ D.heightMatchesExpected

theorem determinantal_ideal_closed_from_evidence (D : DeterminantalIdealData) (E : DeterminantalIdealEvidence D) :
    DeterminantalIdealClosed D := by
  exact And.intro E.idealGeneratedByMinorsClosed (And.intro E.codimensionClosed E.heightMatchesExpectedClosed)

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse