import LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean.LinkageDefinitions

namespace HautevilleHouse
namespace LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LinkageAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinkageWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinkageCompleteIntersectionsDeterminantalIdealsTheoremCanonicalLaneLean
end HautevilleHouse