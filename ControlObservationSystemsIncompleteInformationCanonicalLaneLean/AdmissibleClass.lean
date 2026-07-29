import ControlObservationSystemsIncompleteInformationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure AdmissibleClass where
  object : ControlObservationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlObservationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse