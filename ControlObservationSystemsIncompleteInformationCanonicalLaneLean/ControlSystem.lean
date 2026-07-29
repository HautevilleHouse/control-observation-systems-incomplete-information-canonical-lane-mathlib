import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure ControlSystemPackage where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  observationSpace : Type w
  observationFunction : stateSpace → observationSpace
  incompleteInformation : Prop

structure ControlSystemEvidence (C : ControlSystemPackage) where
  incompleteInformationClosed : C.incompleteInformation

def ControlSystemClosed (C : ControlSystemPackage) : Prop :=
  C.incompleteInformation

theorem control_system_closed_from_evidence (C : ControlSystemPackage) 
    (E : ControlSystemEvidence C) : ControlSystemClosed C := by
  exact E.incompleteInformationClosed

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse