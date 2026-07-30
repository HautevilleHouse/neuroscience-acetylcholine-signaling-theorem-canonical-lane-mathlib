import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HebbianPlasticityModel where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  temporalCoincidence : Prop
  synapticWeightChange : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  neuromodulatorGate : Prop
  presynapticActivityClosed : presynapticActivity
  postsynapticActivityClosed : postsynapticActivity
  temporalCoincidenceClosed : temporalCoincidence
  synapticWeightChangeClosed : synapticWeightChange
  longTermPotentiationClosed : longTermPotentiation
  longTermDepressionClosed : longTermDepression
  neuromodulatorGateClosed : neuromodulatorGate

structure HebbianPlasticityEvidence (H : HebbianPlasticityModel) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  temporalCoincidenceClosed : H.temporalCoincidence
  synapticWeightChangeClosed : H.synapticWeightChange
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  neuromodulatorGateClosed : H.neuromodulatorGate

def HebbianPlasticityClosed (H : HebbianPlasticityModel) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.temporalCoincidence ∧
  H.synapticWeightChange ∧ H.longTermPotentiation ∧ H.longTermDepression ∧
  H.neuromodulatorGate

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityModel)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro H.presynapticActivityClosed
    (And.intro H.postsynapticActivityClosed
      (And.intro H.temporalCoincidenceClosed
        (And.intro H.synapticWeightChangeClosed
          (And.intro H.longTermPotentiationClosed
            (And.intro H.longTermDepressionClosed H.neuromodulatorGateClosed)))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse