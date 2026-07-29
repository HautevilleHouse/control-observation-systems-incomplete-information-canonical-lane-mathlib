import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsIncompleteInformationCanonicalLaneLean

structure ObservationModelPackage where
  hiddenState : Type u
  observation : Type v
  emissionDistribution : hiddenState → observation → ℝ
  markovProperty : Prop
  conditionalIndependence : Prop

structure ObservationModelEvidence (O : ObservationModelPackage) where
  markovPropertyClosed : O.markovProperty
  conditionalIndependenceClosed : O.conditionalIndependence

def ObservationModelClosed (O : ObservationModelPackage) : Prop :=
  O.markovProperty ∧ O.conditionalIndependence

theorem observation_model_closed_from_evidence (O : ObservationModelPackage) 
    (E : ObservationModelEvidence O) : ObservationModelClosed O := by
  exact And.intro E.markovPropertyClosed E.conditionalIndependenceClosed

end ControlObservationSystemsIncompleteInformationCanonicalLaneLean
end HautevilleHouse