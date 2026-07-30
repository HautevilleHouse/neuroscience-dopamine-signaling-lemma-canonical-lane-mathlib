import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineRewardLearning where
  rewardPredictionError : Prop
  phasicDopamineResponse : Prop
  striatalPlasticity : Prop
  goalDirectedBehavior : Prop
  reinforcementLearningModel : Prop

structure DopamineRewardLearningEvidence (L : DopamineRewardLearning) where
  rewardPredictionErrorClosed : L.rewardPredictionError
  phasicDopamineResponseClosed : L.phasicDopamineResponse
  striatalPlasticityClosed : L.striatalPlasticity
  goalDirectedBehaviorClosed : L.goalDirectedBehavior
  reinforcementLearningModelClosed : L.reinforcementLearningModel

def DopamineRewardLearningClosed (L : DopamineRewardLearning) : Prop :=
  L.rewardPredictionError ∧ L.phasicDopamineResponse ∧
  L.striatalPlasticity ∧ L.goalDirectedBehavior ∧
  L.reinforcementLearningModel

theorem dopamine_reward_learning_closed_from_evidence
    (L : DopamineRewardLearning) (E : DopamineRewardLearningEvidence L) :
    DopamineRewardLearningClosed L := by
  exact And.intro E.rewardPredictionErrorClosed
    (And.intro E.phasicDopamineResponseClosed
      (And.intro E.striatalPlasticityClosed
        (And.intro E.goalDirectedBehaviorClosed
          E.reinforcementLearningModelClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse