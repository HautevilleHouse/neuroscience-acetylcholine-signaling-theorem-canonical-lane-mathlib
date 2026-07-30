import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NicotinicReceptorKineticsPackage where
  channelOpeningRate : Prop
  channelClosingRate : Prop
  desensitizationRate : Prop
  recoveryRate : Prop
  openProbabilitySteadyState : Prop
  calciumPermeability : Prop

structure NicotinicReceptorKineticsEvidence (K : NicotinicReceptorKineticsPackage) where
  channelOpeningRateClosed : K.channelOpeningRate
  channelClosingRateClosed : K.channelClosingRate
  desensitizationRateClosed : K.desensitizationRate
  recoveryRateClosed : K.recoveryRate
  openProbabilitySteadyStateClosed : K.openProbabilitySteadyState
  calciumPermeabilityClosed : K.calciumPermeability

def NicotinicReceptorKineticsClosed (K : NicotinicReceptorKineticsPackage) : Prop :=
  K.channelOpeningRate ∧ K.channelClosingRate ∧ K.desensitizationRate ∧
  K.recoveryRate ∧ K.openProbabilitySteadyState ∧ K.calciumPermeability

theorem nicotinic_receptor_kinetics_closed_from_evidence
    (K : NicotinicReceptorKineticsPackage) (E : NicotinicReceptorKineticsEvidence K) :
    NicotinicReceptorKineticsClosed K := by
  exact And.intro E.channelOpeningRateClosed
    (And.intro E.channelClosingRateClosed
      (And.intro E.desensitizationRateClosed
        (And.intro E.recoveryRateClosed
          (And.intro E.openProbabilitySteadyStateClosed
            E.calciumPermeabilityClosed))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse