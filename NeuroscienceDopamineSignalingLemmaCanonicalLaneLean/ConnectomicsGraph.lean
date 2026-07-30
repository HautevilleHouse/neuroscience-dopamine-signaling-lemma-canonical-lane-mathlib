import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.NeuralFieldTheory

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure ConnectomicsGraph (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  smallWorldProperty : Prop
  modularOrganization : Prop
  dopamineModulatedConnectome : Prop

structure ConnectomicsEvidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) (C : ConnectomicsGraph M H P R F) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  smallWorldPropertyClosed : C.smallWorldProperty
  modularOrganizationClosed : C.modularOrganization
  dopamineModulatedConnectomeClosed : C.dopamineModulatedConnectome

def ConnectomicsClosed (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) (C : ConnectomicsGraph M H P R F) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧ C.smallWorldProperty ∧
  C.modularOrganization ∧ C.dopamineModulatedConnectome

theorem connectomics_closed_from_evidence (M : DopamineNeuronModel) (H : HodgkinHuxleyDynamics M)
    (P : DopamineSignalingPathway M H) (R : HebbianPlasticityRule M H P)
    (F : NeuralFieldTheory M H P R) (C : ConnectomicsGraph M H P R F)
    (E : ConnectomicsEvidence M H P R F C) : ConnectomicsClosed M H P R F C := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.smallWorldPropertyClosed
        (And.intro E.modularOrganizationClosed E.dopamineModulatedConnectomeClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse
