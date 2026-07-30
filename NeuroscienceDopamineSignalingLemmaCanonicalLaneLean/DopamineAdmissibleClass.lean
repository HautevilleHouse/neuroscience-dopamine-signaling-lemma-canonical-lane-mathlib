import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DopamineAdmittedObject where
  space : DopamineSpace
  presynaptic : Prop
  postsynaptic : Prop
  dopamineReceptor : Type
  receptorTopology : TopologicalSpace dopamineReceptor
  signalingPathway : Prop
  conclusion : signalingPathway

structure DopamineEndgameState where
  object : DopamineAdmittedObject

def DopamineWitnessClosed (O : DopamineAdmittedObject) : Prop :=
  O.signalingPathway

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse