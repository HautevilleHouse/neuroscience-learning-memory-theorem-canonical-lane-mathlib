import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure AdmissibleNeuralObject where
  object : AdmittedObject
  synapticClosure : Prop
  plasticityBound : Prop
  gateWitness : synapticClosure ∨ plasticityBound

def admittedNeuralClosure (A : AdmissibleNeuralObject) : Prop :=
  AdmittedObjectClosed A.object ∧ (A.synapticClosure ∨ A.plasticityBound)

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
