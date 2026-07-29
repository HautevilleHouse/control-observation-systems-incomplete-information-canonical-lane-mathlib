import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure RateDistortionProblem where
  source : DiscreteProbabilitySpace
  reconstructionSpace : Type u
  distortionMeasure : source.outcomes → reconstructionSpace → ℝ
  distortionNonnegative : ∀ s r, distortionMeasure s r ≥ 0

structure AchievableRateDistortion where
  rate : ℝ
  expectedDistortion : ℝ
  condition : rate ≥ 0 ∧ expectedDistortion ≥ 0

def rateDistortionFunction (R : RateDistortionProblem) : ℝ → ℝ :=
  λ D => inf { r | ∃ (ach : AchievableRateDistortion), ach.rate = r ∧ ach.expectedDistortion ≤ D }

theorem rateDistortionNonincreasing (R : RateDistortionProblem) : ∀ D1 D2, D1 ≤ D2 → rateDistortionFunction R D2 ≤ rateDistortionFunction R D1 :=
  by
    intro D1 D2 h
    apply csInf_le_csInf
    · intro r hr
      rcases hr with ⟨ach, hr_eq, hD⟩
      refine ⟨ach, hr_eq, ?_⟩
      exact le_trans h hD
    · exact Set.Nonempty.bddBelow ?_  -- Need to show the set is bounded below
    sorry

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse