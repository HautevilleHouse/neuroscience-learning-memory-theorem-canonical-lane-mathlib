import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivity : Type u
  connectivityKernel : Type v
  firingRateFunction : Prop
  wavePropagation : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  firingRateFunctionClosed : N.firingRateFunction
  wavePropagationClosed : N.wavePropagation
  patternFormationClosed : N.patternFormation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.firingRateFunction ∧ N.wavePropagation ∧ N.patternFormation

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.firingRateFunctionClosed (And.intro E.wavePropagationClosed E.patternFormationClosed)

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse