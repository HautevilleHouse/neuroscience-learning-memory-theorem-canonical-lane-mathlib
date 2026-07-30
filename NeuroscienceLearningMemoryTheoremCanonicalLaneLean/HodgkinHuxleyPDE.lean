import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannels : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  gatingVariables : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  gatingVariablesClosed : H.gatingVariables
  actionPotentialPropagationClosed : H.actionPotentialPropagation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.gatingVariables ∧ H.actionPotentialPropagation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed (And.intro E.potassiumCurrentClosed (And.intro E.leakCurrentClosed (And.intro E.gatingVariablesClosed E.actionPotentialPropagationClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse