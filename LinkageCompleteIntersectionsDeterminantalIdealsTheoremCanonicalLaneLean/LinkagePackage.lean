import canonicalLaneMathlib.AdmissibleClass
import Mathlib.RingTheory.Ideal.Basic

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure LinkagePackage {R : Type u} [CommRing R] (I J : Ideal R) where
  linkedViaRegularSequence : Prop
  lengthCondition : Prop
  evidence : linkedViaRegularSequence ∧ lengthCondition

def LinkageClosed {R : Type u} [CommRing R] {I J : Ideal R} (L : LinkagePackage R I J) : Prop :=
  L.linkedViaRegularSequence ∧ L.lengthCondition

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse