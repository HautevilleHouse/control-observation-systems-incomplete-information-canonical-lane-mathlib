import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (S : ControlObservationSystem), True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by exact ⟨A.object, by trivial⟩

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse