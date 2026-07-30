import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannelConductances : Type v
  sodiumChannelState : Prop
  potassiumChannelState : Prop
  leakChannelState : Prop
  actionPotentialGeneration : Prop
  currentBalanceEquationClosed : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumChannelStateClosed : H.sodiumChannelState
  potassiumChannelStateClosed : H.potassiumChannelState
  leakChannelStateClosed : H.leakChannelState
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  currentBalanceEquationClosedClosed : H.currentBalanceEquationClosed

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumChannelState ∧ H.potassiumChannelState ∧ H.leakChannelState ∧
  H.actionPotentialGeneration ∧ H.currentBalanceEquationClosed

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelStateClosed
    (And.intro E.potassiumChannelStateClosed
      (And.intro E.leakChannelStateClosed
        (And.intro E.actionPotentialGenerationClosed E.currentBalanceEquationClosedClosed)))

end NeuroscienceDopamineSignalingLemmaCanonicalLaneLean
end HautevilleHouse