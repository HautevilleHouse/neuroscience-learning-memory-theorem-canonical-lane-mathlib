import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  learningRule : Prop
  synapticModulation : Prop
  spikeTimingDependence : Prop
  cooperativity : Prop
  structuralPlasticity : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  learningRuleClosed : H.learningRule
  synapticModulationClosed : H.synapticModulation
  spikeTimingDependenceClosed : H.spikeTimingDependence
  cooperativityClosed : H.cooperativity
  structuralPlasticityClosed : H.structuralPlasticity

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.learningRule ∧ H.synapticModulation ∧ H.spikeTimingDependence ∧ H.cooperativity ∧ H.structuralPlasticity

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.learningRuleClosed (And.intro E.synapticModulationClosed (And.intro E.spikeTimingDependenceClosed (And.intro E.cooperativityClosed E.structuralPlasticityClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
