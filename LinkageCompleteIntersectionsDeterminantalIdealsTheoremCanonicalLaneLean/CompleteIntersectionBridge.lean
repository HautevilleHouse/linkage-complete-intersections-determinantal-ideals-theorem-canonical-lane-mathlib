import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.DeterminantalIdeals
import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.LinkageClass

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure CompleteIntersectionBridge where
  ideal : DeterminantalIdeal
  linkage : LinkageClassPackage
  bridgeCondition : Prop
  bridgeConditionTerm : bridgeCondition

def CompleteIntersectionBridgeClosed (B : CompleteIntersectionBridge) : Prop :=
  DeterminantalIdealClosed B.ideal ∧ LinkageClassClosed B.linkage ∧ B.bridgeCondition

theorem complete_intersection_bridge_closed (B : CompleteIntersectionBridge)
    (detEv : DeterminantalIdealEvidence B.ideal) (linkEv : LinkageClassEvidence B.linkage) :
    CompleteIntersectionBridgeClosed B := by
  refine And.intro (determinantal_ideal_closed_from_evidence B.ideal detEv)
    (And.intro (linkage_class_closed_from_evidence B.linkage linkEv) B.bridgeConditionTerm)

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse