import NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.SynapticTransmission

/-!
# Dopamine Receptor Dynamics Package
-/

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineReceptorDynamicsPackage {S : SynapticTransmissionPackage} where
  receptorActivation : Prop
  gProteinCoupling : Prop
  downstreamSignaling : Prop
  desensitizationKinetics : Prop

structure DopamineReceptorDynamicsEvidence {S : SynapticTransmissionPackage}
    (D : DopamineReceptorDynamicsPackage S) where
  receptorActivationClosed : D.receptorActivation
  gProteinCouplingClosed : D.gProteinCoupling
  downstreamSignalingClosed : D.downstreamSignaling
  desensitizationKineticsClosed : D.desensitizationKinetics

def DopamineReceptorDynamicsClosed {S : SynapticTransmissionPackage}
    (D : DopamineReceptorDynamicsPackage S) : Prop :=
  D.receptorActivation ∧ D.gProteinCoupling ∧ D.downstreamSignaling ∧ D.desensitizationKinetics

theorem dopamine_receptor_dynamics_closed_from_evidence
    {S : SynapticTransmissionPackage} (D : DopamineReceptorDynamicsPackage S)
    (E : DopamineReceptorDynamicsEvidence D) : DopamineReceptorDynamicsClosed D := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.gProteinCouplingClosed
      (And.intro E.downstreamSignalingClosed E.desensitizationKineticsClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
