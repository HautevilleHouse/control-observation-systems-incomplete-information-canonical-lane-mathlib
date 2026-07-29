import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure ControlObservationSystem where
  stateSpace : Type u
  observationSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observation : stateSpace → observationSpace
  initialDistribution : stateSpace → ℝ
  timeHorizon : ℕ

structure InformationSet where
  histories : List observationSpace
  informationStructure : Prop
  recallMemory : Prop

structure ControlPolicy where
  policy : List observationSpace → controlSpace
  admissible : Prop

def informationSetClosed (I : InformationSet) : Prop :=
  I.informationStructure ∧ I.recallMemory

theorem information_set_closed_from_evidence (I : InformationSet) : informationSetClosed I :=
  And.intro I.informationStructure I.recallMemory

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse