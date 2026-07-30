import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure HodgkinHuxleyPDEPackage where
  membranePotential : Type
  ionConductances : Type
  gatingVariables : Type
  capacitance : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  stimulusCurrent : Prop
  odeSystem : Prop
  capacitanceClosed : capacitance
  sodiumCurrentClosed : sodiumCurrent
  potassiumCurrentClosed : potassiumCurrent
  leakCurrentClosed : leakCurrent
  stimulusCurrentClosed : stimulusCurrent
  odeSystemClosed : odeSystem

structure HodgkinHuxleyPDEEvidence (H : HodgkinHuxleyPDEPackage) where
  capacitanceClosed : H.capacitance
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  stimulusCurrentClosed : H.stimulusCurrent
  odeSystemClosed : H.odeSystem

def HodgkinHuxleyPDEClosed (H : HodgkinHuxleyPDEPackage) : Prop :=
  H.capacitance ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧
  H.leakCurrent ∧ H.stimulusCurrent ∧ H.odeSystem

theorem hodgkin_huxley_pde_closed_from_evidence (H : HodgkinHuxleyPDEPackage)
    (E : HodgkinHuxleyPDEEvidence H) : HodgkinHuxleyPDEClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.sodiumCurrentClosed
      (And.intro E.potassiumCurrentClosed
        (And.intro E.leakCurrentClosed
          (And.intro E.stimulusCurrentClosed E.odeSystemClosed))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse