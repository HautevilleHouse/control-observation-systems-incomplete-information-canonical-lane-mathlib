import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

def ConstrainedInformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_information_endgame (A : AdmissibleClass) : ConstrainedInformationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse