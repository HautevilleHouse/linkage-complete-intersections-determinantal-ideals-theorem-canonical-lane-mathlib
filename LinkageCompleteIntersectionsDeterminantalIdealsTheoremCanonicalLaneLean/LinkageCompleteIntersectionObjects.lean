import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.PrimeSpectrum
import Mathlib.RingTheory.Ideal.Basic

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkageCompleteIntersectionSpace where
  carrier : Type
  ringStructure : CommRing carrier

structure LinkageCompleteIntersectionAdmittedObject where
  space : LinkageCompleteIntersectionSpace
  isCompleteIntersection : Prop
  isDeterminantalIdeal : Prop
  isLinked : Prop
  conclusion : isCompleteIntersection ∧ isDeterminantalIdeal ∧ isLinked

def LinkageCompleteIntersectionWitnessClosed (O : LinkageCompleteIntersectionAdmittedObject) : Prop :=
  O.isCompleteIntersection ∧ O.isDeterminantalIdeal ∧ O.isLinked

structure LinkageCompleteIntersectionEndgameState where
  object : LinkageCompleteIntersectionAdmittedObject

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse