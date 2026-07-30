import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.AcetylcholineSignalingBridge

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

def ConstrainedAcetylcholineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_acetylcholine_endgame (A : AdmissibleClass) :
    ConstrainedAcetylcholineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse