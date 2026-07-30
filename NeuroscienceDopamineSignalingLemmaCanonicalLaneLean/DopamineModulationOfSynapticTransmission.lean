import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineModulationOfSynapticTransmission where
  presynapticTerminal : Type
  postsynapticDensity : Type
  vesicleReleaseProbability : Prop
  postsynapticReceptorSensitivity : Prop
  modulationTimeCourse : Prop
  plasticityInduction : Prop

structure DopamineModulationOfSynapticTransmissionEvidence
    (M : DopamineModulationOfSynapticTransmission) where
  vesicleReleaseProbabilityClosed : M.vesicleReleaseProbability
  postsynapticReceptorSensitivityClosed : M.postsynapticReceptorSensitivity
  modulationTimeCourseClosed : M.modulationTimeCourse
  plasticityInductionClosed : M.plasticityInduction

def DopamineModulationOfSynapticTransmissionClosed
    (M : DopamineModulationOfSynapticTransmission) : Prop :=
  M.vesicleReleaseProbability ∧ M.postsynapticReceptorSensitivity ∧
  M.modulationTimeCourse ∧ M.plasticityInduction

theorem dopamine_modulation_of_synaptic_transmission_closed_from_evidence
    (M : DopamineModulationOfSynapticTransmission)
    (E : DopamineModulationOfSynapticTransmissionEvidence M) :
    DopamineModulationOfSynapticTransmissionClosed M := by
  exact And.intro E.vesicleReleaseProbabilityClosed
    (And.intro E.postsynapticReceptorSensitivityClosed
      (And.intro E.modulationTimeCourseClosed E.plasticityInductionClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse