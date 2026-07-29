import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

def linkageProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem linkage_projection_idempotent (x : EndgameState) :
    linkageProjection.toFun (linkageProjection.toFun x) = linkageProjection.toFun x := by
  exact linkageProjection.idempotent x

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse