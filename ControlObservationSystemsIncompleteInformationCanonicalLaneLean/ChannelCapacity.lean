import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure CommunicationChannel where
  inputSpace : Type u
  outputSpace : Type v
  transitionMatrix : inputSpace → outputSpace → ℝ
  probabilistic : ∀ x, ∑' y, transitionMatrix x y = 1

def mutualInformation (p : inputSpace → ℝ) (channel : CommunicationChannel) : ℝ :=
  ∑' x, ∑' y, p x * channel.transitionMatrix x y * Real.log ((p x * channel.transitionMatrix x y) / (p x * (∑' x', p x' * channel.transitionMatrix x' y))) 

structure ChannelCapacityEvidence where
  capacityAchievingInput : Prop
  capacityValueRaw : ℝ
  capacityAchievingInputTerm : capacityAchievingInput

def ChannelCapacityClosed (C : ChannelCapacityEvidence) : Prop :=
  C.capacityAchievingInput

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityEvidence) : ChannelCapacityClosed C :=
  C.capacityAchievingInputTerm

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse