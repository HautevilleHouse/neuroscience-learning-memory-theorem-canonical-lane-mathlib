import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  ionChannels : Prop
  gatingVariables : Prop
  membraneCapacitance : Prop
  reversalPotentials : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  ionChannelsClosed : H.ionChannels
  gatingVariablesClosed : H.gatingVariables
  membraneCapacitanceClosed : H.membraneCapacitance
  reversalPotentialsClosed : H.reversalPotentials
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.ionChannels ∧ H.gatingVariables ∧ H.membraneCapacitance ∧ H.reversalPotentials ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.ionChannelsClosed (And.intro E.gatingVariablesClosed (And.intro E.membraneCapacitanceClosed (And.intro E.reversalPotentialsClosed E.actionPotentialGenerationClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
