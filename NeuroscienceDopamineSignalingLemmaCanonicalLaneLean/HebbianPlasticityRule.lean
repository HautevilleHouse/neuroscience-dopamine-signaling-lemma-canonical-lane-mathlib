import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineSignalingPathway

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure HebbianPlasticityRule (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) where
  synapticWeightDynamics : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop
  dopamineModulation : Prop

structure HebbianPlasticityEvidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P) where
  synapticWeightDynamicsClosed : R.synapticWeightDynamics
  longTermPotentiationClosed : R.longTermPotentiation
  longTermDepressionClosed : R.longTermDepression
  spikeTimingDependentPlasticityClosed : R.spikeTimingDependentPlasticity
  dopamineModulationClosed : R.dopamineModulation

def HebbianPlasticityClosed (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P) : Prop :=
  R.synapticWeightDynamics ∧ R.longTermPotentiation ∧ R.longTermDepression ∧
  R.spikeTimingDependentPlasticity ∧ R.dopamineModulation

theorem hebbian_plasticity_closed_from_evidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (E : HebbianPlasticityEvidence M H P R) : HebbianPlasticityClosed M H P R := by
  exact And.intro E.synapticWeightDynamicsClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.longTermDepressionClosed
        (And.intro E.spikeTimingDependentPlasticityClosed E.dopamineModulationClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
