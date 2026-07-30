import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineReuptakeMechanismPackage where
  transporterFunction : Prop
  reuptakeKinetics : Prop
  pharmacologicalModulation : Prop
  synapticClearance : Prop

structure DopamineReuptakeMechanismEvidence (D : DopamineReuptakeMechanismPackage) where
  transporterFunctionClosed : D.transporterFunction
  reuptakeKineticsClosed : D.reuptakeKinetics
  pharmacologicalModulationClosed : D.pharmacologicalModulation
  synapticClearanceClosed : D.synapticClearance

def DopamineReuptakeMechanismClosed (D : DopamineReuptakeMechanismPackage) : Prop :=
  D.transporterFunction ∧ D.reuptakeKinetics ∧ D.pharmacologicalModulation ∧ D.synapticClearance

theorem dopamine_reuptake_mechanism_closed_from_evidence
    (D : DopamineReuptakeMechanismPackage) (E : DopamineReuptakeMechanismEvidence D) :
    DopamineReuptakeMechanismClosed D := by
  exact And.intro E.transporterFunctionClosed
    (And.intro E.reuptakeKineticsClosed
      (And.intro E.pharmacologicalModulationClosed E.synapticClearanceClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse