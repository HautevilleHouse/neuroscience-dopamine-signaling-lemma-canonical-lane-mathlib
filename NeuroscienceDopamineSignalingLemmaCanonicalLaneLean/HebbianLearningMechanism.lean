import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure HebbianLearningMechanismPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  spikeTiming : Prop
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  learningClosed : Prop

structure HebbianLearningMechanismEvidence (H : HebbianLearningMechanismPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  spikeTimingClosed : H.spikeTiming
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  learningClosedClosed : H.learningClosed

def HebbianLearningClosed (H : HebbianLearningMechanismPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.spikeTiming ∧
  H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.learningClosed

theorem hebbian_learning_closed_from_evidence
    (H : HebbianLearningMechanismPackage)
    (E : HebbianLearningMechanismEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.spikeTimingClosed
        (And.intro E.weightUpdateRuleClosed
          (And.intro E.longTermPotentiationClosed
            (And.intro E.longTermDepressionClosed E.learningClosedClosed)))))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse