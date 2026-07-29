import Mathlib.RingTheory.Polynomial

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

-- dummy graded algebra structure
def PolynomialRing (R : Type u) (n : ℕ) : Type u := MvPolynomial (Fin n) R

instance : CommRing (PolynomialRing ℚ 3) := by
  exact inferInstanceAs (CommRing (MvPolynomial (Fin 3) ℚ))

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse
