import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure NeuralFieldDynamicsPackage where
  membranePotential : Prop
  firingRate : Prop
  synapticCurrent : Prop
  networkConnectivity : Prop
  fieldEquations : Prop

structure NeuralFieldDynamicsEvidence (N : NeuralFieldDynamicsPackage) where
  membranePotentialClosed : N.membranePotential
  firingRateClosed : N.firingRate
  synapticCurrentClosed : N.synapticCurrent
  networkConnectivityClosed : N.networkConnectivity
  fieldEquationsClosed : N.fieldEquations

def NeuralFieldDynamicsClosed (N : NeuralFieldDynamicsPackage) : Prop :=
  N.membranePotential ∧ N.firingRate ∧ N.synapticCurrent ∧ N.networkConnectivity ∧ N.fieldEquations

theorem neural_field_dynamics_closed_from_evidence (N : NeuralFieldDynamicsPackage) (E : NeuralFieldDynamicsEvidence N) : NeuralFieldDynamicsClosed N := by
  exact And.intro E.membranePotentialClosed (And.intro E.firingRateClosed (And.intro E.synapticCurrentClosed (And.intro E.networkConnectivityClosed E.fieldEquationsClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
