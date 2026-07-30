import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DopamineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse