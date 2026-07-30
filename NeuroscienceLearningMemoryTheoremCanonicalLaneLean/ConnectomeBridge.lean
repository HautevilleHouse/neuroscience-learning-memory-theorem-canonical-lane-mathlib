import NeuroscienceLearningMemoryTheoremCanonicalLaneLean.NeuralFieldTheory

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure ConnectomePackage where
  neuronList : Type
  synapseList : Type
  connectivityMatrix : Type
  graphMetricsComputed : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  hubIdentification : Prop

def ConnectomeClosed (C : ConnectomePackage) : Prop :=
  C.graphMetricsComputed ∧ C.smallWorldProperty ∧ C.modularStructure ∧ C.hubIdentification

theorem connectome_closed_from_evidence (C : ConnectomePackage)
    (E : ConnectomeEvidence C) : ConnectomeClosed C := by
  exact And.intro E.graphMetricsComputedClosed
    (And.intro E.smallWorldPropertyClosed
      (And.intro E.modularStructureClosed E.hubIdentificationClosed))

structure ConnectomeEvidence (C : ConnectomePackage) where
  graphMetricsComputedClosed : C.graphMetricsComputed
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubIdentificationClosed : C.hubIdentification

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse
