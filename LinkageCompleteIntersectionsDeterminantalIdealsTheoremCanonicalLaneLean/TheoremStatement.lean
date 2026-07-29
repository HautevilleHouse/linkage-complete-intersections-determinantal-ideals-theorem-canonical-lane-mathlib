import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "linkage-complete-intersections-determinantal-ideals",
  theoremName := "linkage-complete-intersections-determinantal-ideals",
  theoremObject := "Peskine-Szpiro linkage theorem for determinantal ideals",
  classicalBoundary := "source theorem boundary",
  manifoldConstrainedStatement := "admissible-class closure of linkage complete intersections determinantal ideals",
  certificateLane := "admissible_class",
  carriedRemainder := "classical source boundary carried"
}

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse