import NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.ActionPotentialDynamics

/-!
# Hodgkin-Huxley Dopamine Modulation Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyDopamineModulationPackage {A : ActionPotentialDynamicsPackage} where
  ionChannelConductances : Prop
  dopamineModulationRate : Prop
  firingRateAdaptation : Prop
  synapticPlasticity : Prop

structure HodgkinHuxleyDopamineModulationEvidence {A : ActionPotentialDynamicsPackage}
    (H : HodgkinHuxleyDopamineModulationPackage A) where
  ionChannelConductancesClosed : H.ionChannelConductances
  dopamineModulationRateClosed : H.dopamineModulationRate
  firingRateAdaptationClosed : H.firingRateAdaptation
  synapticPlasticityClosed : H.synapticPlasticity

def HodgkinHuxleyDopamineModulationClosed {A : ActionPotentialDynamicsPackage}
    (H : HodgkinHuxleyDopamineModulationPackage A) : Prop :=
  H.ionChannelConductances ∧ H.dopamineModulationRate ∧ H.firingRateAdaptation ∧ H.synapticPlasticity

theorem hodgkin_huxley_dopamine_modulation_closed_from_evidence
    {A : ActionPotentialDynamicsPackage} (H : HodgkinHuxleyDopamineModulationPackage A)
    (E : HodgkinHuxleyDopamineModulationEvidence H) :
    HodgkinHuxleyDopamineModulationClosed H := by
  exact And.intro E.ionChannelConductancesClosed
    (And.intro E.dopamineModulationRateClosed
      (And.intro E.firingRateAdaptationClosed E.synapticPlasticityClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
