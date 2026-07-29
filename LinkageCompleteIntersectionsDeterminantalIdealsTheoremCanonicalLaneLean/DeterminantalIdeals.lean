import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.LinkageDefinitions

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure DeterminantalIdeal where
  ring : Type
  size : ℕ × ℕ
  minors : Type
  idealGenerated : Prop
  heightIdeal : ℕ
  heightIdealTerm : idealGenerated

structure DeterminantalIdealEvidence (I : DeterminantalIdeal) where
  idealGeneratedClosed : I.idealGenerated

def DeterminantalIdealClosed (I : DeterminantalIdeal) : Prop :=
  I.idealGenerated

theorem determinantal_ideal_closed_from_evidence (I : DeterminantalIdeal)
    (E : DeterminantalIdealEvidence I) : DeterminantalIdealClosed I := by
  exact E.idealGeneratedClosed

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse