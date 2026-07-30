import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure AcetylcholineSynapticModel where
  presynapticTerminal : Type
  postsynapticReceptor : Type
  achRelease : Prop
  receptorBinding : Prop
  signalTransduction : Prop
  synapseGap : Type
  diffusionDynamics : Prop
  vesicleFusion : Prop
  reuptakeMechanism : Prop
  achReleaseClosed : achRelease
  receptorBindingClosed : receptorBinding
  signalTransductionClosed : signalTransduction
  diffusionDynamicsClosed : diffusionDynamics
  vesicleFusionClosed : vesicleFusion
  reuptakeMechanismClosed : reuptakeMechanism

structure AcetylcholineSynapticEvidence (M : AcetylcholineSynapticModel) where
  achReleaseClosed : M.achRelease
  receptorBindingClosed : M.receptorBinding
  signalTransductionClosed : M.signalTransduction
  diffusionDynamicsClosed : M.diffusionDynamics
  vesicleFusionClosed : M.vesicleFusion
  reuptakeMechanismClosed : M.reuptakeMechanism

def AcetylcholineSynapticClosed (M : AcetylcholineSynapticModel) : Prop :=
  M.achRelease ∧ M.receptorBinding ∧ M.signalTransduction ∧
  M.diffusionDynamics ∧ M.vesicleFusion ∧ M.reuptakeMechanism

theorem acetylcholine_synaptic_closed_from_evidence (M : AcetylcholineSynapticModel)
    (E : AcetylcholineSynapticEvidence M) : AcetylcholineSynapticClosed M := by
  exact And.intro E.achReleaseClosed
    (And.intro E.receptorBindingClosed
      (And.intro E.signalTransductionClosed
        (And.intro E.diffusionDynamicsClosed
          (And.intro E.vesicleFusionClosed E.reuptakeMechanismClosed))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse