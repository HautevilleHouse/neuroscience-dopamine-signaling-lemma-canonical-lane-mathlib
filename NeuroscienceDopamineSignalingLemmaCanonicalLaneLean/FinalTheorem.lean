import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.NeuroscienceDopamineSignalingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

def ConstrainedDopamineSignalingClosure (A : DopamineSignalingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dopamine_signaling_endgame (A : DopamineSignalingAdmissibleClass) :
    ConstrainedDopamineSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse