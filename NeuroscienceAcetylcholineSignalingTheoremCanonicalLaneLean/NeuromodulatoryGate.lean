import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.AcetylcholineReceptorDynamics

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NeuromodulatoryGatePackage where
  attentionModulation : Prop
  memoryConsolidation : Prop
  arousalRegulation : Prop
  cholinergicTone : Prop
  integrationWithOtherModulators : Prop

structure NeuromodulatoryGateEvidence (N : NeuromodulatoryGatePackage) where
  attentionModulationClosed : N.attentionModulation
  memoryConsolidationClosed : N.memoryConsolidation
  arousalRegulationClosed : N.arousalRegulation
  cholinergicToneClosed : N.cholinergicTone
  integrationWithOtherModulatorsClosed : N.integrationWithOtherModulators

def NeuromodulatoryGateClosed (N : NeuromodulatoryGatePackage) : Prop :=
  N.attentionModulation ∧ N.memoryConsolidation ∧
  N.arousalRegulation ∧ N.cholinergicTone ∧ N.integrationWithOtherModulators

theorem neuromodulatory_gate_closed_from_evidence (N : NeuromodulatoryGatePackage)
    (E : NeuromodulatoryGateEvidence N) : NeuromodulatoryGateClosed N := by
  exact And.intro E.attentionModulationClosed
    (And.intro E.memoryConsolidationClosed
      (And.intro E.arousalRegulationClosed
        (And.intro E.cholinergicToneClosed E.integrationWithOtherModulatorsClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse