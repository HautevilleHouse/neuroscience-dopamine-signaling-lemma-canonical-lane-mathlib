import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineNeuronModel

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamics (M : DopamineNeuronModel) where
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakageCurrent : Prop
  voltageClampEquation : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M) where
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakageCurrentClosed : H.leakageCurrent
  voltageClampEquationClosed : H.voltageClampEquation
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M) : Prop :=
  H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakageCurrent ∧ H.voltageClampEquation ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (E : HodgkinHuxleyEvidence M H) : HodgkinHuxleyClosed M H := by
  exact And.intro E.sodiumChannelClosed
    (And.intro E.potassiumChannelClosed
      (And.intro E.leakageCurrentClosed
        (And.intro E.voltageClampEquationClosed E.actionPotentialGenerationClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
