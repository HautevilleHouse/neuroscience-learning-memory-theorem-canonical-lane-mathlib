import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure NeuralAdmittedObject where
  circuitModel : Type
  plasticityRule : Type
  hebbianUpdate : Prop
  stabilityCondition : Prop
  conclusion : stabilityCondition

structure AdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
