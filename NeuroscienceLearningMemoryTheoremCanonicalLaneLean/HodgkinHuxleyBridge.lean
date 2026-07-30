import NeuroscienceLearningMemoryTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  ionChannels : Type
  membranePotential : Type
  gatingVariables : Type
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  capacitanceEquation : Prop
  conductanceModelClosed : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  capacitanceEquationClosed : H.capacitanceEquation
  conductanceModelClosedClosed : H.conductanceModelClosed

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧
  H.capacitanceEquation ∧ H.conductanceModelClosed

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed
      (And.intro E.leakCurrentClosed
        (And.intro E.capacitanceEquationClosed E.conductanceModelClosedClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
