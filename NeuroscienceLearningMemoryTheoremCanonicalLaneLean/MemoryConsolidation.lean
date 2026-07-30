import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure MemoryConsolidationPackage where
  engramFormation : Prop
  synapticConsolidation : Prop
  systemConsolidation : Prop
  reconsolidation : Prop
  memoryRetrieval : Prop

structure MemoryConsolidationEvidence (M : MemoryConsolidationPackage) where
  engramFormationClosed : M.engramFormation
  synapticConsolidationClosed : M.synapticConsolidation
  systemConsolidationClosed : M.systemConsolidation
  reconsolidationClosed : M.reconsolidation
  memoryRetrievalClosed : M.memoryRetrieval

def MemoryConsolidationClosed (M : MemoryConsolidationPackage) : Prop :=
  M.engramFormation ∧ M.synapticConsolidation ∧ M.systemConsolidation ∧ M.reconsolidation ∧ M.memoryRetrieval

theorem memory_consolidation_closed_from_evidence (M : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence M) : MemoryConsolidationClosed M := by
  exact And.intro E.engramFormationClosed (And.intro E.synapticConsolidationClosed (And.intro E.systemConsolidationClosed (And.intro E.reconsolidationClosed E.memoryRetrievalClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse