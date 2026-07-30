import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.HodgkinHuxleyModel

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  ltpInduction : Prop
  ltdInduction : Prop
  spikeTimingDependence : Prop
  calciumDynamics : Prop
  acetylcholineModulation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction
  spikeTimingDependenceClosed : H.spikeTimingDependence
  calciumDynamicsClosed : H.calciumDynamics
  acetylcholineModulationClosed : H.acetylcholineModulation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.ltpInduction ∧ H.ltdInduction ∧ H.spikeTimingDependence ∧
  H.calciumDynamics ∧ H.acetylcholineModulation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.ltpInductionClosed
    (And.intro E.ltdInductionClosed
      (And.intro E.spikeTimingDependenceClosed
        (And.intro E.calciumDynamicsClosed E.acetylcholineModulationClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse