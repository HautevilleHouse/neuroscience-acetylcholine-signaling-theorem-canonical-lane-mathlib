import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

def ConstrainedAcetylcholineSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_acetylcholine_signaling_endgame (A : AdmissibleClass) :
    ConstrainedAcetylcholineSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse