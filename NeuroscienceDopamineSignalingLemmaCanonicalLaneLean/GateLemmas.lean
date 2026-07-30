import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.DopamineSignalingAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

def gateClosed (A : DopamineSignalingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DopamineSignalingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse