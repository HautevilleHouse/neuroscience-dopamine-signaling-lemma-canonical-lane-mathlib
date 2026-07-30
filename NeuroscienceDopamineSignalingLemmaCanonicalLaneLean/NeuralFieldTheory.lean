import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.HebbianPlasticityRule

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure NeuralFieldTheory (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P) where
  populationActivity : Prop
  spatialPropagation : Prop
  oscillatoryDynamics : Prop
  synchronization : Prop
  fieldInteractions : Prop

structure NeuralFieldEvidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) where
  populationActivityClosed : F.populationActivity
  spatialPropagationClosed : F.spatialPropagation
  oscillatoryDynamicsClosed : F.oscillatoryDynamics
  synchronizationClosed : F.synchronization
  fieldInteractionsClosed : F.fieldInteractions

def NeuralFieldClosed (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) : Prop :=
  F.populationActivity ∧ F.spatialPropagation ∧ F.oscillatoryDynamics ∧
  F.synchronization ∧ F.fieldInteractions

theorem neural_field_closed_from_evidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) (E : NeuralFieldEvidence M H P R F) :
    NeuralFieldClosed M H P R F := by
  exact And.intro E.populationActivityClosed
    (And.intro E.spatialPropagationClosed
      (And.intro E.oscillatoryDynamicsClosed
        (And.intro E.synchronizationClosed E.fieldInteractionsClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
