import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NeuromodulationPackage where
  presynapticTerminal : Type u
  muscarinicReceptor : Type v
  gProteinCascade : Prop
  ionChannelModulation : Prop
  neurotransmitterRelease : Prop
  gProteinCascadeClosed : gProteinCascade
  ionChannelModulationClosed : ionChannelModulation
  neurotransmitterReleaseClosed : neurotransmitterRelease

structure NeuromodulationEvidence (M : NeuromodulationPackage) where
  gProteinCascadeClosed : M.gProteinCascade
  ionChannelModulationClosed : M.ionChannelModulation
  neurotransmitterReleaseClosed : M.neurotransmitterRelease

def NeuromodulationClosed (M : NeuromodulationPackage) : Prop :=
  M.gProteinCascade ∧ M.ionChannelModulation ∧ M.neurotransmitterRelease

theorem neuromodulation_closed_from_evidence
    (M : NeuromodulationPackage) (E : NeuromodulationEvidence M) :
    NeuromodulationClosed M := by
  exact And.intro E.gProteinCascadeClosed
    (And.intro E.ionChannelModulationClosed
      E.neurotransmitterReleaseClosed)

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
