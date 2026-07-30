import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NeuralSignalPackage where
  cholinergicNeuron : Type u
  vesicleDynamics : Type v
  calciumInflux : Prop
  vesicleFusion : Prop
  acetylcholineRelease : Prop
  calciumInfluxClosed : calciumInflux
  vesicleFusionClosed : vesicleFusion
  acetylcholineReleaseClosed : acetylcholineRelease

structure NeuralSignalEvidence (S : NeuralSignalPackage) where
  calciumInfluxClosed : S.calciumInflux
  vesicleFusionClosed : S.vesicleFusion
  acetylcholineReleaseClosed : S.acetylcholineRelease

def NeuralSignalClosed (S : NeuralSignalPackage) : Prop :=
  S.calciumInflux ∧ S.vesicleFusion ∧ S.acetylcholineRelease

theorem neural_signal_closed_from_evidence
    (S : NeuralSignalPackage) (E : NeuralSignalEvidence S) :
    NeuralSignalClosed S := by
  exact And.intro E.calciumInfluxClosed
    (And.intro E.vesicleFusionClosed E.acetylcholineReleaseClosed)

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
