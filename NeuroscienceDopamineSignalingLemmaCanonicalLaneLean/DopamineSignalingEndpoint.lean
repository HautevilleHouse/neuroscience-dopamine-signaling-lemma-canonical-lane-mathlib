import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSignalingEndpointPackage where
  behavior : Type u
  motorLearning : Prop
  rewardPrediction : Prop
  reinforcement : Prop
  endpointClosed : Prop

structure DopamineSignalingEndpointEvidence (E : DopamineSignalingEndpointPackage) where
  motorLearningClosed : E.motorLearning
  rewardPredictionClosed : E.rewardPrediction
  reinforcementClosed : E.reinforcement
  endpointClosedClosed : E.endpointClosed

def DopamineSignalingEndpointClosed (E : DopamineSignalingEndpointPackage) : Prop :=
  E.motorLearning ∧ E.rewardPrediction ∧ E.reinforcement ∧ E.endpointClosed

theorem dopamine_signaling_endpoint_closed_from_evidence
    (E : DopamineSignalingEndpointPackage)
    (Ev : DopamineSignalingEndpointEvidence E) : DopamineSignalingEndpointClosed E := by
  exact And.intro Ev.motorLearningClosed
    (And.intro Ev.rewardPredictionClosed
      (And.intro Ev.reinforcementClosed Ev.endpointClosedClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse