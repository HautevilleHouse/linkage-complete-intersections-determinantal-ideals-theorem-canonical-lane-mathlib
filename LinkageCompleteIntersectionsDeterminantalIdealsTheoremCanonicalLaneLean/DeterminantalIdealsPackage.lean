import canonicalLaneMathlib.AdmissibleClass
import Mathlib.RingTheory.Ideal.Basic
import Mathlib.LinearAlgebra.Matrix.Basic

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure DeterminantalIdealsPackage {R : Type u} [CommRing R] where
  matrix : Matrix (Fin m) (Fin n) R
  minorSize : ℕ
  ideal : Ideal R
  idealGeneratedByMinors : Prop
  idealIsDeterminantal : Prop
  evidence : idealGeneratedByMinors ∧ idealIsDeterminantal

def DeterminantalIdealsClosed {R : Type u} [CommRing R] (D : DeterminantalIdealsPackage R) : Prop :=
  D.idealGeneratedByMinors ∧ D.idealIsDeterminantal

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse