import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  nGate : ℝ → ℝ
  mGate : ℝ → ℝ
  hGate : ℝ → ℝ
  conductances : Prop
  equationsClosed : Prop
  equationsClosedTerm : equationsClosed

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  conductancesClosed : H.conductances
  equationsClosedClosed : H.equationsClosed

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.conductances ∧ H.equationsClosed

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.conductancesClosed E.equationsClosedClosed

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse