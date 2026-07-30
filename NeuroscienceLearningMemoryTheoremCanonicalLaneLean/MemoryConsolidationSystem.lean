import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure MemoryConsolidationPackage where
  shortTermToLongTerm : Prop
  synapticTagging : Prop
  captureProcess : Prop
  sleepDependent : Prop
  systemsConsolidation : Prop

structure MemoryConsolidationEvidence (M : MemoryConsolidationPackage) where
  shortTermToLongTermClosed : M.shortTermToLongTerm
  synapticTaggingClosed : M.synapticTagging
  captureProcessClosed : M.captureProcess
  sleepDependentClosed : M.sleepDependent
  systemsConsolidationClosed : M.systemsConsolidation

def MemoryConsolidationClosed (M : MemoryConsolidationPackage) : Prop :=
  M.shortTermToLongTerm ∧ M.synapticTagging ∧ M.captureProcess ∧
  M.sleepDependent ∧ M.systemsConsolidation

theorem memory_consolidation_closed_from_evidence (M : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence M) :
    MemoryConsolidationClosed M := by
  exact And.intro E.shortTermToLongTermClosed
    (And.intro E.synapticTaggingClosed
      (And.intro E.captureProcessClosed
        (And.intro E.sleepDependentClosed E.systemsConsolidationClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse