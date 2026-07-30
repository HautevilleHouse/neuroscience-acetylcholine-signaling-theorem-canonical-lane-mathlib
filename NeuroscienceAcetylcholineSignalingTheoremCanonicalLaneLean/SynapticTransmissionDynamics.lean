import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure SynapticTransmissionDynamicsPackage where
  presynapticRelease : Prop
  postsynapticReceptorBinding : Prop
  synapticCleftDiffusion : Prop
  signalAmplification : Prop
  longTermPotentiation : Prop

structure SynapticTransmissionDynamicsEvidence (D : SynapticTransmissionDynamicsPackage) where
  presynapticReleaseClosed : D.presynapticRelease
  postsynapticReceptorBindingClosed : D.postsynapticReceptorBinding
  synapticCleftDiffusionClosed : D.synapticCleftDiffusion
  signalAmplificationClosed : D.signalAmplification
  longTermPotentiationClosed : D.longTermPotentiation

def SynapticTransmissionDynamicsClosed (D : SynapticTransmissionDynamicsPackage) : Prop :=
  D.presynapticRelease ∧ D.postsynapticReceptorBinding ∧
  D.synapticCleftDiffusion ∧ D.signalAmplification ∧ D.longTermPotentiation

theorem synaptic_transmission_dynamics_closed_from_evidence
    (D : SynapticTransmissionDynamicsPackage) (E : SynapticTransmissionDynamicsEvidence D) :
    SynapticTransmissionDynamicsClosed D := by
  exact And.intro E.presynapticReleaseClosed
    (And.intro E.postsynapticReceptorBindingClosed
      (And.intro E.synapticCleftDiffusionClosed
        (And.intro E.signalAmplificationClosed E.longTermPotentiationClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse