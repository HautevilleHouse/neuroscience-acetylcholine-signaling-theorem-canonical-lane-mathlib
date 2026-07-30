import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure SynapticConnection where
  preNeuron : String
  postNeuron : String
  synapseType : String
  strength : Float

structure NeuralCircuit where
  neurons : List String
  connections : List SynapticConnection
  acetylcholineReceptorsPresent : Bool

structure ConnectomicsEvidence (C : NeuralCircuit) where
  neuronsNonempty : C.neurons ≠ []
  connectionsValid : ∀ c ∈ C.connections, c.preNeuron ∈ C.neurons ∧ c.postNeuron ∈ C.neurons
  acetylcholineReceptorsPresent : C.acetylcholineReceptorsPresent
  connectionsPositiveStrength : ∀ c ∈ C.connections, c.strength > 0

def ConnectomicsCircuitClosed (C : NeuralCircuit) : Prop :=
  C.neurons ≠ [] ∧ (∀ c ∈ C.connections, c.preNeuron ∈ C.neurons ∧ c.postNeuron ∈ C.neurons) ∧
  C.acetylcholineReceptorsPresent ∧ (∀ c ∈ C.connections, c.strength > 0)

theorem connectomics_circuit_closed_from_evidence
    (C : NeuralCircuit) (E : ConnectomicsEvidence C) :
    ConnectomicsCircuitClosed C := by
  exact And.intro E.neuronsNonempty
    (And.intro E.connectionsValid
      (And.intro E.acetylcholineReceptorsPresent E.connectionsPositiveStrength))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse