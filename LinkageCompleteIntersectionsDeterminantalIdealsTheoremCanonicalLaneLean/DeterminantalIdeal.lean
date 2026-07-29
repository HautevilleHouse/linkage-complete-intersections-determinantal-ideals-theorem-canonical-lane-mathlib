import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.MatrixAlgebra

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure DeterminantalIdealPackage where
  matrixSize : ℕ × ℕ
  matrix : Matrix (Fin matrixSize.1) (Fin matrixSize.2) (PolynomialRing ℚ 1)
  ideal : Ideal (PolynomialRing ℚ 1)
  generatorSize : ℕ
  generators : Fin generatorSize → (PolynomialRing ℚ 1)
  minorsGenerated : Ideal.generatedBy (Finset.image (λ i => generators i) Finset.univ) = ideal
  determinantCondition : (matrixSize.1 = matrixSize.2) ∨ (matrixSize.1 < matrixSize.2 ∨ matrixSize.2 < matrixSize.1)

def DeterminantalIdealClosed (D : DeterminantalIdealPackage) : Prop :=
  D.minorsGenerated ∧ D.determinantCondition

structure DeterminantalIdealEvidence (D : DeterminantalIdealPackage) where
  minorsGeneratedClosed : D.minorsGenerated
  determinantConditionClosed : D.determinantCondition

theorem determinantal_ideal_closed_from_evidence
    (D : DeterminantalIdealPackage) (E : DeterminantalIdealEvidence D) :
    DeterminantalIdealClosed D := by
  exact And.intro E.minorsGeneratedClosed E.determinantConditionClosed

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse
