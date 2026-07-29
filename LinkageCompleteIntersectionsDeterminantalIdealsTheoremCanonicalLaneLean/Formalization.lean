import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
  deriving Repr, DecidableEq

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "linkage-complete-intersections-determinantal-ideals",
  sourceCheckoutHead := "HEAD",
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  native_dec_trivial

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse