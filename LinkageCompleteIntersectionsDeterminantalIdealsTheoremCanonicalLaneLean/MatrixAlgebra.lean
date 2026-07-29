import Mathlib.Data.Matrix.Basic

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

open Matrix

-- dummy matrix algebra structure
def Matrix (m n : ℕ) (R : Type u) : Type u := Matrix (Fin m) (Fin n) R

instance (m n : ℕ) (R : Type u) [CommRing R] : CommRing (Matrix m n R) := by
  exact inferInstanceAs (CommRing (Matrix (Fin m) (Fin n) R))

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse
