import NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineSynthesis

/-!
# Synaptic Transmission Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitterRelease : Prop
  receptorBinding : Prop
  postsynapticPotential : Prop
  reuptakeMechanism : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorBindingClosed : S.receptorBinding
  postsynapticPotentialClosed : S.postsynapticPotential
  reuptakeMechanismClosed : S.reuptakeMechanism

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.neurotransmitterRelease ∧ S.receptorBinding ∧ S.postsynapticPotential ∧ S.reuptakeMechanism

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage)
    (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S := by
  exact And.intro E.neurotransmitterReleaseClosed
    (And.intro E.receptorBindingClosed
      (And.intro E.postsynapticPotentialClosed E.reuptakeMechanismClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
