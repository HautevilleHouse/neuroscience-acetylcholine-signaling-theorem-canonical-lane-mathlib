import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  learningRate : Float
  preSynapticActivity : Float
  postSynapticActivity : Float
  weightChange : Float

structure SynapticPlasticityParameters where
  hebbianRules : List HebbianPlasticityRule
  ltpThreshold : Float
  ltdThreshold : Float
  spikeTimingDependence : Bool

structure SynapticPlasticityEvidence (P : SynapticPlasticityParameters) where
  learningRatePositive : ∀ r ∈ P.hebbianRules, r.learningRate > 0
  ltpThresholdDefined : P.ltpThreshold > 0
  ltdThresholdNegative : P.ltdThreshold < 0
  spikeTimingDependenceActive : P.spikeTimingDependence

def SynapticPlasticityClosed (P : SynapticPlasticityParameters) : Prop :=
  (∀ r ∈ P.hebbianRules, r.learningRate > 0) ∧ P.ltpThreshold > 0 ∧ P.ltdThreshold < 0 ∧ P.spikeTimingDependence

theorem synaptic_plasticity_closed_from_evidence
    (P : SynapticPlasticityParameters) (E : SynapticPlasticityEvidence P) :
    SynapticPlasticityClosed P := by
  exact And.intro E.learningRatePositive
    (And.intro E.ltpThresholdDefined
      (And.intro E.ltdThresholdNegative E.spikeTimingDependenceActive))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse