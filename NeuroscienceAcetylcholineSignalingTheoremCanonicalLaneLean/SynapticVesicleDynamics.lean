import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure VesicleExocytosisPackage where
  vesicleFusionTriggered : Prop
  calciumInfluxSensed : Prop
  snareComplexFormed : Prop
  quantalReleaseOccurred : Prop
  vesicleDockingState : Prop

structure VesicleExocytosisEvidence (P : VesicleExocytosisPackage) where
  vesicleFusionTriggeredClosed : P.vesicleFusionTriggered
  calciumInfluxSensedClosed : P.calciumInfluxSensed
  snareComplexFormedClosed : P.snareComplexFormed
  quantalReleaseOccurredClosed : P.quantalReleaseOccurred
  vesicleDockingStateClosed : P.vesicleDockingState

def VesicleExocytosisClosed (P : VesicleExocytosisPackage) : Prop :=
  P.vesicleFusionTriggered ∧ P.calciumInfluxSensed ∧ P.snareComplexFormed ∧
  P.quantalReleaseOccurred ∧ P.vesicleDockingState

theorem vesicle_exocytosis_closed_from_evidence (P : VesicleExocytosisPackage)
    (E : VesicleExocytosisEvidence P) : VesicleExocytosisClosed P := by
  exact And.intro E.vesicleFusionTriggeredClosed
    (And.intro E.calciumInfluxSensedClosed
      (And.intro E.snareComplexFormedClosed
        (And.intro E.quantalReleaseOccurredClosed E.vesicleDockingStateClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse