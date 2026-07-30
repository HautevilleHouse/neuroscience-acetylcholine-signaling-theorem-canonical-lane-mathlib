import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure CholinergicCircuit where
  sourceNucleus : Type
  projectionPathways : Type
  targetRegions : Type
  achReleaseSites : Prop
  volumeTransmission : Prop
  synapticTransmission : Prop
  neuromodulatoryEffect : Prop
  cognitiveFunction : Prop
  memoryFormation : Prop
  attentionRegulation : Prop
  achReleaseSitesClosed : achReleaseSites
  volumeTransmissionClosed : volumeTransmission
  synapticTransmissionClosed : synapticTransmission
  neuromodulatoryEffectClosed : neuromodulatoryEffect
  cognitiveFunctionClosed : cognitiveFunction
  memoryFormationClosed : memoryFormation
  attentionRegulationClosed : attentionRegulation

structure CholinergicCircuitEvidence (C : CholinergicCircuit) where
  achReleaseSitesClosed : C.achReleaseSites
  volumeTransmissionClosed : C.volumeTransmission
  synapticTransmissionClosed : C.synapticTransmission
  neuromodulatoryEffectClosed : C.neuromodulatoryEffect
  cognitiveFunctionClosed : C.cognitiveFunction
  memoryFormationClosed : C.memoryFormation
  attentionRegulationClosed : C.attentionRegulation

def CholinergicCircuitClosed (C : CholinergicCircuit) : Prop :=
  C.achReleaseSites ∧ C.volumeTransmission ∧ C.synapticTransmission ∧
  C.neuromodulatoryEffect ∧ C.cognitiveFunction ∧ C.memoryFormation ∧ C.attentionRegulation

theorem cholinergic_circuit_closed_from_evidence (C : CholinergicCircuit)
    (E : CholinergicCircuitEvidence C) : CholinergicCircuitClosed C := by
  exact And.intro E.achReleaseSitesClosed
    (And.intro E.volumeTransmissionClosed
      (And.intro E.synapticTransmissionClosed
        (And.intro E.neuromodulatoryEffectClosed
          (And.intro E.cognitiveFunctionClosed
            (And.intro E.memoryFormationClosed E.attentionRegulationClosed)))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse