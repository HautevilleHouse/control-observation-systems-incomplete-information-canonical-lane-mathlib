import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure EntropyPackage where
  randomVariable : Type u
  probabilityDistribution : randomVariable → ℝ
  entropyValue : ℝ
  nonnegativity : Prop
  chainRule : Prop

structure EntropyEvidence (E : EntropyPackage) where
  nonnegativityClosed : E.nonnegativity
  chainRuleClosed : E.chainRule

def EntropyClosed (E : EntropyPackage) : Prop :=
  E.nonnegativity ∧ E.chainRule

theorem entropy_closed_from_evidence (E : EntropyPackage) (Ev : EntropyEvidence E) :
    EntropyClosed E := by
  exact And.intro Ev.nonnegativityClosed Ev.chainRuleClosed

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse