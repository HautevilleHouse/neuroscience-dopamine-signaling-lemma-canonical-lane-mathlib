import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure DopamineSynthesisPathwayPackage where
  precursorAvailability : Prop
  enzymeActivity : Prop
  synthesisRateRegulation : Prop
  vesicleTransport : Prop

structure DopamineSynthesisPathwayEvidence (D : DopamineSynthesisPathwayPackage) where
  precursorAvailabilityClosed : D.precursorAvailability
  enzymeActivityClosed : D.enzymeActivity
  synthesisRateRegulationClosed : D.synthesisRateRegulation
  vesicleTransportClosed : D.vesicleTransport

def DopamineSynthesisPathwayClosed (D : DopamineSynthesisPathwayPackage) : Prop :=
  D.precursorAvailability ∧ D.enzymeActivity ∧ D.synthesisRateRegulation ∧ D.vesicleTransport

theorem dopamine_synthesis_pathway_closed_from_evidence
    (D : DopamineSynthesisPathwayPackage) (E : DopamineSynthesisPathwayEvidence D) :
    DopamineSynthesisPathwayClosed D := by
  exact And.intro E.precursorAvailabilityClosed
    (And.intro E.enzymeActivityClosed
      (And.intro E.synthesisRateRegulationClosed E.vesicleTransportClosed))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse