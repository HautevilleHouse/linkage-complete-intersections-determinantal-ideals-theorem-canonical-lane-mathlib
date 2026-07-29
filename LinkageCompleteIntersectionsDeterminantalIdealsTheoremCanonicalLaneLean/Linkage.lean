import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.DeterminantalIdeals

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkagePackage (P : DeterminantalIdealPackage) where
  linkedIdeal : Ideal P.ring
  linkageSequence : ℕ → Ideal P.ring
  completeIntersectionLink : Prop
  gradePreserved : Prop
  heightPreserved : Prop

def LinkageClosed (P : DeterminantalIdealPackage) (L : LinkagePackage P) : Prop :=
  L.completeIntersectionLink ∧ L.gradePreserved ∧ L.heightPreserved

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse