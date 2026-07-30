import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure CholinergicModulationPackage where
  presynapticReleaseModulated : Prop
  postsynapticExcitabilityAltered : Prop
  attentionCircuitryGate : Prop
  learningPlasticityContribution : Prop
  neuromodulatoryTone : Prop

structure CholinergicModulationEvidence (M : CholinergicModulationPackage) where
  presynapticReleaseModulatedClosed : M.presynapticReleaseModulated
  postsynapticExcitabilityAlteredClosed : M.postsynapticExcitabilityAltered
  attentionCircuitryGateClosed : M.attentionCircuitryGate
  learningPlasticityContributionClosed : M.learningPlasticityContribution
  neuromodulatoryToneClosed : M.neuromodulatoryTone

def CholinergicModulationClosed (M : CholinergicModulationPackage) : Prop :=
  M.presynapticReleaseModulated ∧ M.postsynapticExcitabilityAltered ∧
  M.attentionCircuitryGate ∧ M.learningPlasticityContribution ∧
  M.neuromodulatoryTone

theorem cholinergic_modulation_closed_from_evidence (M : CholinergicModulationPackage)
    (E : CholinergicModulationEvidence M) : CholinergicModulationClosed M := by
  exact And.intro E.presynapticReleaseModulatedClosed
    (And.intro E.postsynapticExcitabilityAlteredClosed
      (And.intro E.attentionCircuitryGateClosed
        (And.intro E.learningPlasticityContributionClosed E.neuromodulatoryToneClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse