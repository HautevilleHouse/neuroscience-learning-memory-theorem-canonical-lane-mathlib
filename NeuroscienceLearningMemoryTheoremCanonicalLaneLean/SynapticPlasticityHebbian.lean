import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  coincidenceDetection : Prop
  weightUpdateRule : Prop
  longTermPotentiation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  coincidenceDetectionClosed : H.coincidenceDetection
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧
  H.coincidenceDetection ∧ H.weightUpdateRule ∧ H.longTermPotentiation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.preSynapticActivityClosed
    (And.intro E.postSynapticActivityClosed
      (And.intro E.coincidenceDetectionClosed
        (And.intro E.weightUpdateRuleClosed E.longTermPotentiationClosed)))

end NeuroscienceLearningMemoryTheoremCanonicalLaneLean
end HautevilleHouse