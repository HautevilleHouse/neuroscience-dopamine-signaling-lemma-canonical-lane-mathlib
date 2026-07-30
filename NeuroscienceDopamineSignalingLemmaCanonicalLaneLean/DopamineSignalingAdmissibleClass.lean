import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineReceptorBinding
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineSignalingPathway
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineModulationOfSynapticTransmission
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineRewardLearning

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSignalingAdmissibleClass where
  binding : DopamineReceptorBinding
  bindingEvidence : DopamineReceptorBindingEvidence binding
  pathway : DopamineSignalingPathway
  pathwayEvidence : DopamineSignalingPathwayEvidence pathway
  modulation : DopamineModulationOfSynapticTransmission
  modulationEvidence : DopamineModulationOfSynapticTransmissionEvidence modulation
  learning : DopamineRewardLearning
  learningEvidence : DopamineRewardLearningEvidence learning
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DopamineSignalingAdmissibleObject (A : DopamineSignalingAdmissibleClass) : Prop :=
  DopamineReceptorBindingClosed A.binding ∧
  DopamineSignalingPathwayClosed A.pathway ∧
  DopamineModulationOfSynapticTransmissionClosed A.modulation ∧
  DopamineRewardLearningClosed A.learning

theorem dopamine_signaling_admissible_object_from_evidence
    (A : DopamineSignalingAdmissibleClass) :
    DopamineSignalingAdmissibleObject A := by
  exact And.intro (dopamine_receptor_binding_closed_from_evidence A.binding A.bindingEvidence)
    (And.intro (dopamine_signaling_pathway_closed_from_evidence A.pathway A.pathwayEvidence)
      (And.intro (dopamine_modulation_of_synaptic_transmission_closed_from_evidence A.modulation A.modulationEvidence)
        (dopamine_reward_learning_closed_from_evidence A.learning A.learningEvidence)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse