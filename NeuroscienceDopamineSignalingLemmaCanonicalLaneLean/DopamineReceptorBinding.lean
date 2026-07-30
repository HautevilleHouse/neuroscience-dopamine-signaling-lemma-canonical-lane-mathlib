import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineReceptorBindingPackage where
  receptorType : Type u
  ligandAffinity : Type v
  bindingKinetics : Prop
  gProteinCoupling : Prop
  signalingCascade : Prop

structure DopamineReceptorBindingEvidence (D : DopamineReceptorBindingPackage) where
  bindingKineticsClosed : D.bindingKinetics
  gProteinCouplingClosed : D.gProteinCoupling
  signalingCascadeClosed : D.signalingCascade

def DopamineReceptorBindingClosed (D : DopamineReceptorBindingPackage) : Prop :=
  D.bindingKinetics ∧ D.gProteinCoupling ∧ D.signalingCascade

theorem dopamine_receptor_binding_closed_from_evidence
    (D : DopamineReceptorBindingPackage) (E : DopamineReceptorBindingEvidence D) :
    DopamineReceptorBindingClosed D := by
  exact And.intro E.bindingKineticsClosed (And.intro E.gProteinCouplingClosed E.signalingCascadeClosed)

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse