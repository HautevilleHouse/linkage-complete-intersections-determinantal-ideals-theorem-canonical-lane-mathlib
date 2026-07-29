import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure CompleteIntersectionPackage where
  ring : Type u
  ideal : Ideal ring
  generators : List ring
  regularSequence : Prop
  gradeEqualsLength : Prop
  cohenMacaulay : Prop

def CompleteIntersectionClosed (C : CompleteIntersectionPackage) : Prop :=
  C.regularSequence ∧ C.gradeEqualsLength ∧ C.cohenMacaulay

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse