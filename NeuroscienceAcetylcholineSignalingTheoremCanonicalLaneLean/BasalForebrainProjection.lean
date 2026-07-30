import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure BasalForebrainProjectionPackage where
  nucleusBasalisOrigin : Prop
  corticalTargetInnervation : Prop
  hippocampalInputRegulated : Prop
  arousalStateModulation : Prop
  degenerationInAlzheimer : Prop

structure BasalForebrainProjectionEvidence (B : BasalForebrainProjectionPackage) where
  nucleusBasalisOriginClosed : B.nucleusBasalisOrigin
  corticalTargetInnervationClosed : B.corticalTargetInnervation
  hippocampalInputRegulatedClosed : B.hippocampalInputRegulated
  arousalStateModulationClosed : B.arousalStateModulation
  degenerationInAlzheimerClosed : B.degenerationInAlzheimer

def BasalForebrainProjectionClosed (B : BasalForebrainProjectionPackage) : Prop :=
  B.nucleusBasalisOrigin ∧ B.corticalTargetInnervation ∧
  B.hippocampalInputRegulated ∧ B.arousalStateModulation ∧
  B.degenerationInAlzheimer

theorem basal_forebrain_projection_closed_from_evidence (B : BasalForebrainProjectionPackage)
    (E : BasalForebrainProjectionEvidence B) : BasalForebrainProjectionClosed B := by
  exact And.intro E.nucleusBasalisOriginClosed
    (And.intro E.corticalTargetInnervationClosed
      (And.intro E.hippocampalInputRegulatedClosed
        (And.intro E.arousalStateModulationClosed E.degenerationInAlzheimerClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse