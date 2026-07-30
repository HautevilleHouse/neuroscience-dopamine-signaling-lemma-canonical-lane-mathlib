import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

def ConstrainedDopamineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dopamine_endgame (A : AdmissibleClass) :
    ConstrainedDopamineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse