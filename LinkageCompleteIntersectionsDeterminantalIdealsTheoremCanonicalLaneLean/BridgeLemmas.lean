import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.LinkageDefinitions

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinkageWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse