import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure DiscreteProbabilitySpace where
  outcomes : Type u
  probabilityMassFunction : outcomes → ℝ
  sumToOne : ∑' x, probabilityMassFunction x = 1

def shannonEntropy (p : DiscreteProbabilitySpace) : ℝ :=
  -∑' x, p.probabilityMassFunction x * Real.log (p.probabilityMassFunction x)

theorem shannonEntropy_nonneg (p : DiscreteProbabilitySpace) : shannonEntropy p ≥ 0 :=
  by
    have h : ∀ (x : ℝ), x ≥ 0 ∧ x ≤ 1 → x * Real.log x ≥ 0 := sorry
    sorry

structure EntropyEvidence where
  entropyNonnegative : Prop
  entropyNonnegativeTerm : entropyNonnegative

def EntropyClosed (E : EntropyEvidence) : Prop :=
  E.entropyNonnegative

theorem entropy_closed_from_evidence (E : EntropyEvidence) : EntropyClosed E :=
  E.entropyNonnegativeTerm

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse