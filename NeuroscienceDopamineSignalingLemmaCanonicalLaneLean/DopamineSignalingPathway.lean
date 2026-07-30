import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineNeuronModel
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.HodgkinHuxleyDynamics

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSignalingPathway (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M) where
  vesicleRelease : Prop
  dopamineReceptorBinding : Prop
  postsynapticResponse : Prop
  reuptakeMechanism : Prop
  feedbackRegulation : Prop

structure DopamineSignalingEvidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) where
  vesicleReleaseClosed : P.vesicleRelease
  dopamineReceptorBindingClosed : P.dopamineReceptorBinding
  postsynapticResponseClosed : P.postsynapticResponse
  reuptakeMechanismClosed : P.reuptakeMechanism
  feedbackRegulationClosed : P.feedbackRegulation

def DopamineSignalingClosed (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) : Prop :=
  P.vesicleRelease ∧ P.dopamineReceptorBinding ∧ P.postsynapticResponse ∧
  P.reuptakeMechanism ∧ P.feedbackRegulation

theorem dopamine_signaling_closed_from_evidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (E : DopamineSignalingEvidence M H P) :
    DopamineSignalingClosed M H P := by
  exact And.intro E.vesicleReleaseClosed
    (And.intro E.dopamineReceptorBindingClosed
      (And.intro E.postsynapticResponseClosed
        (And.intro E.reuptakeMechanismClosed E.feedbackRegulationClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
