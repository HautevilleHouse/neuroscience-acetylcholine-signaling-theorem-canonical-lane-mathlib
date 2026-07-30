import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse