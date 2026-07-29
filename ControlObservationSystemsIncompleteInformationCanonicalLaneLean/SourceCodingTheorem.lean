import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure SourceCode where
  source : DiscreteProbabilitySpace
  encoder : source.outcomes → List Bool
  decoder : List Bool → source.outcomes
  lossless : ∀ s, decoder (encoder s) = s

def expectedCodeLength (code : SourceCode) : ℝ :=
  ∑' x, code.source.probabilityMassFunction x * Real.card (code.encoder x)

theorem source_coding_theorem_lower_bound (code : SourceCode) :
    expectedCodeLength code ≥ shannonEntropy code.source :=
  by
    -- Shannon's source coding theorem: expected length of any lossless code is at least entropy
    have h : false := sorry
    exact False.elim h

theorem source_coding_theorem_upper_bound (source : DiscreteProbabilitySpace) :
    ∃ code : SourceCode, code.source = source ∧ expectedCodeLength code < shannonEntropy source + 1 :=
  by
    -- Shannon-Fano coding achieves length within 1 of entropy
    sorry

structure SourceCodingEvidence where
  lowerBoundClosed : Prop
  upperBoundClosed : Prop
  lowerBoundTerm : lowerBoundClosed
  upperBoundTerm : upperBoundClosed

def SourceCodingClosed (E : SourceCodingEvidence) : Prop :=
  E.lowerBoundClosed ∧ E.upperBoundClosed

theorem source_coding_closed_from_evidence (E : SourceCodingEvidence) : SourceCodingClosed E :=
  And.intro E.lowerBoundTerm E.upperBoundTerm

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse