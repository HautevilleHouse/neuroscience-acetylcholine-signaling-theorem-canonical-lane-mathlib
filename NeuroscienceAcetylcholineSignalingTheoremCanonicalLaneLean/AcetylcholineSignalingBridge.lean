import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.AcetylcholineReceptorDynamics
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.HodgkinHuxleyModel
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.SynapticPlasticityHebbian
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.NeuralFieldTheory
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.ConnectomicsCircuit

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AcetylcholineReceptorDynamicsClosed A.object ∧
  HodgkinHuxleyClosed A.object ∧
  SynapticPlasticityClosed A.object ∧
  NeuralFieldClosed A.object ∧
  ConnectomicsCircuitClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  have h1 : AcetylcholineReceptorDynamicsClosed A.object := by
    apply AcetylcholineReceptorDynamicsClosed.admissible (h := A.property)
  have h2 : HodgkinHuxleyClosed A.object := by
    apply HodgkinHuxleyClosed.admissible (h := A.property)
  have h3 : SynapticPlasticityClosed A.object := by
    apply SynapticPlasticityClosed.admissible (h := A.property)
  have h4 : NeuralFieldClosed A.object := by
    apply NeuralFieldClosed.admissible (h := A.property)
  have h5 : ConnectomicsCircuitClosed A.object := by
    apply ConnectomicsCircuitClosed.admissible (h := A.property)
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse