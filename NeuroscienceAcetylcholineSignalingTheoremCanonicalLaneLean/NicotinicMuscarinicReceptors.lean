import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NicotinicReceptor where
  ionotropic : Prop
  sodiumPermeability : Prop
  fastSynapticTransmission : Prop
  channelOpening : Prop
  ionotropicClosed : ionotropic
  sodiumPermeabilityClosed : sodiumPermeability
  fastSynapticTransmissionClosed : fastSynapticTransmission
  channelOpeningClosed : channelOpening

structure MuscarinicReceptor where
  metabotropic : Prop
  gProteinCoupled : Prop
  secondMessengerCascade : Prop
  slowModulation : Prop
  metabotropicClosed : metabotropic
  gProteinCoupledClosed : gProteinCoupled
  secondMessengerCascadeClosed : secondMessengerCascade
  slowModulationClosed : slowModulation

structure CholinergicReceptorEvidence (N : NicotinicReceptor) (M : MuscarinicReceptor) where
  nicotinicClosed : N.ionotropic ∧ N.sodiumPermeability ∧ N.fastSynapticTransmission ∧ N.channelOpening
  muscarinicClosed : M.metabotropic ∧ M.gProteinCoupled ∧ M.secondMessengerCascade ∧ M.slowModulation

def CholinergicReceptorClosed (N : NicotinicReceptor) (M : MuscarinicReceptor) : Prop :=
  (N.ionotropic ∧ N.sodiumPermeability ∧ N.fastSynapticTransmission ∧ N.channelOpening) ∧
  (M.metabotropic ∧ M.gProteinCoupled ∧ M.secondMessengerCascade ∧ M.slowModulation)

def nicotinic_receptor_closed (N : NicotinicReceptor) : Prop :=
  N.ionotropic ∧ N.sodiumPermeability ∧ N.fastSynapticTransmission ∧ N.channelOpening

def muscarinic_receptor_closed (M : MuscarinicReceptor) : Prop :=
  M.metabotropic ∧ M.gProteinCoupled ∧ M.secondMessengerCascade ∧ M.slowModulation

def cholinergic_receptor_closed_from_evidence (N : NicotinicReceptor) (M : MuscarinicReceptor)
    (E : CholinergicReceptorEvidence N M) : CholinergicReceptorClosed N M := by
  exact And.intro E.nicotinicClosed E.muscarinicClosed

theorem nicotinic_receptor_closed_from_evidence (N : NicotinicReceptor)
    (E : N.ionotropic ∧ N.sodiumPermeability ∧ N.fastSynapticTransmission ∧ N.channelOpening) :
    nicotinic_receptor_closed N := by
  exact E

theorem muscarinic_receptor_closed_from_evidence (M : MuscarinicReceptor)
    (E : M.metabotropic ∧ M.gProteinCoupled ∧ M.secondMessengerCascade ∧ M.slowModulation) :
    muscarinic_receptor_closed M := by
  exact E

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse