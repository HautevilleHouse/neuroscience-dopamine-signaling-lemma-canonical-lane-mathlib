import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSynapticPlasticityPackage where
  neuronType : Type u
  dopamineReceptorType : Type v
  presynapticActivity : Prop
  postsynapticDepolarization : Prop
  dopamineRelease : Prop
  synapticWeightChange : Prop
  plasticityRuleClosed : Prop

structure DopamineSynapticPlasticityEvidence (D : DopamineSynapticPlasticityPackage) where
  presynapticActivityClosed : D.presynapticActivity
  postsynapticDepolarizationClosed : D.postsynapticDepolarization
  dopamineReleaseClosed : D.dopamineRelease
  synapticWeightChangeClosed : D.synapticWeightChange
  plasticityRuleClosedClosed : D.plasticityRuleClosed

def DopamineSynapticPlasticityClosed (D : DopamineSynapticPlasticityPackage) : Prop :=
  D.presynapticActivity ∧ D.postsynapticDepolarization ∧ D.dopamineRelease ∧
  D.synapticWeightChange ∧ D.plasticityRuleClosed

theorem dopamine_synaptic_plasticity_closed_from_evidence (D : DopamineSynapticPlasticityPackage)
    (E : DopamineSynapticPlasticityEvidence D) : DopamineSynapticPlasticityClosed D := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticDepolarizationClosed
      (And.intro E.dopamineReleaseClosed
        (And.intro E.synapticWeightChangeClosed E.plasticityRuleClosedClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse