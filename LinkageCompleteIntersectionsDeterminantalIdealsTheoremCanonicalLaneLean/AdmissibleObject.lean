import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkageAdmittedObject where
  targetRing : Type u
  ideal : Type v
  grade : ℕ
  gradeSatisfied : Prop
  genericallyCompleteIntersection : Prop
  linkedIdeal : Type v
  linkageClass : Prop
  conclusion : gradeSatisfied ∧ genericallyCompleteIntersection ∧ linkageClass

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse
