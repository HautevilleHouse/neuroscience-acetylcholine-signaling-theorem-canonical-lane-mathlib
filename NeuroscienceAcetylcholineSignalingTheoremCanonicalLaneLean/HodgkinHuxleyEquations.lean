import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakageCurrent : Prop
  gatingDynamics : Prop
  actionPotentialGeneration : Prop
  leakageCurrentClosed : leakageCurrent
  gatingDynamicsClosed : gatingDynamics
  actionPotentialGenerationClosed : actionPotentialGeneration

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  leakageCurrentClosed : H.leakageCurrent
  gatingDynamicsClosed : H.gatingDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.leakageCurrent ∧ H.gatingDynamics ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence
    (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.leakageCurrentClosed
    (And.intro E.gatingDynamicsClosed E.actionPotentialGenerationClosed)

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
