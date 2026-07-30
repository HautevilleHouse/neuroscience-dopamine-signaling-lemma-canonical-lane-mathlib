import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSignalingCascadePackage where
  campPathway : Prop
  proteinPhosphorylation : Prop
  geneExpressionRegulation : Prop
  neuronalExcitability : Prop

structure DopamineSignalingCascadeEvidence (D : DopamineSignalingCascadePackage) where
  campPathwayClosed : D.campPathway
  proteinPhosphorylationClosed : D.proteinPhosphorylation
  geneExpressionRegulationClosed : D.geneExpressionRegulation
  neuronalExcitabilityClosed : D.neuronalExcitability

def DopamineSignalingCascadeClosed (D : DopamineSignalingCascadePackage) : Prop :=
  D.campPathway ∧ D.proteinPhosphorylation ∧ D.geneExpressionRegulation ∧ D.neuronalExcitability

theorem dopamine_signaling_cascade_closed_from_evidence
    (D : DopamineSignalingCascadePackage) (E : DopamineSignalingCascadeEvidence D) :
    DopamineSignalingCascadeClosed D := by
  exact And.intro E.campPathwayClosed
    (And.intro E.proteinPhosphorylationClosed
      (And.intro E.geneExpressionRegulationClosed E.neuronalExcitabilityClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse