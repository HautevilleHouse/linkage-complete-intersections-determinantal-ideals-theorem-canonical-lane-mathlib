import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.TheoremStatement
import Mathlib.Algebra.Polynomial
import Mathlib.RingTheory.Ideal

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure AdmittedSpace where
  ring : Type
  polynomialRing : Type

structure AdmittedObject where
  space : AdmittedSpace
  determinantalIdeal : Ideal (space.polynomialRing)
  isCompleteIntersection : Prop
  isLinked : Prop
  conclusion : isLinked

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.isLinked

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse