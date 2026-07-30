import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure IonChannelDynamics where
  sodiumActivation : Type u
  potassiumActivation : Type v
  inactivation : Type w

structure MembranePotential where
  time : Type t
  voltage : Type u
  capacitance : Prop
  leakCurrent : Prop
  sodiumCurrent : IonChannelDynamics -> Prop
  potassiumCurrent : IonChannelDynamics -> Prop
  sodiumCurrentClosed : sodiumCurrent
  potassiumCurrentClosed : potassiumCurrent

structure HodgkinHuxleyPackage (M : MembranePotential) where
  ionChannelDynamics : IonChannelDynamics
  gatingVariables : Prop
  rateEquations : Prop
  actionPotentialModel : Prop
  gatingVariablesClosed : gatingVariables
  rateEquationsClosed : rateEquations
  actionPotentialModelClosed : actionPotentialModel

structure HodgkinHuxleyEvidence (M : MembranePotential) (H : HodgkinHuxleyPackage M) where
  membraneCapacitanceClosed : M.capacitance
  leakCurrentClosed : M.leakCurrent
  sodiumDynamicsClosed : H.gatingVariablesClosed
  potassiumDynamicsClosed : H.gatingVariablesClosed

def HodgkinHuxleyClosed (M : MembranePotential) (H : HodgkinHuxleyPackage M) : Prop :=
  M.capacitance ∧ M.leakCurrent ∧ H.gatingVariablesClosed ∧ H.rateEquationsClosed

theorem hodgkin_huxley_closed_from_evidence (M : MembranePotential) (H : HodgkinHuxleyPackage M) (E : HodgkinHuxleyEvidence M H) :
    HodgkinHuxleyClosed M H := by
  exact And.intro E.membraneCapacitanceClosed (And.intro E.leakCurrentClosed (And.intro E.sodiumDynamicsClosed E.potassiumDynamicsClosed))

end HautevilleHouse.NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse