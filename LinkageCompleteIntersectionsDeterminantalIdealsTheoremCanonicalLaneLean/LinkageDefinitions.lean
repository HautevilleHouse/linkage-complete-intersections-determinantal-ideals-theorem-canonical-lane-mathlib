import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkageAdmittedObject where
  ring : Type
  ideal : Type
  codimensionIdeal : Prop
  isDeterminantal : Prop
  linkageClass : Prop
  conclusion : isDeterminantal ∧ linkageClass

def LinkageWitnessClosed (O : LinkageAdmittedObject) : Prop :=
  O.isDeterminantal ∧ O.linkageClass

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse