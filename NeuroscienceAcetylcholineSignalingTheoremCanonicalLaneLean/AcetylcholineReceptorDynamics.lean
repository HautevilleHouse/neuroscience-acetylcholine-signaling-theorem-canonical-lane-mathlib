import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.HebbianPlasticity

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure AcetylcholineReceptorDynamicsPackage where
  receptorTypes : Type
  bindingAffinity : ℝ
  channelConductance : ℝ
  desensitizationRate : ℝ
  synapticPlasticityCoupling : Prop

structure AcetylcholineReceptorDynamicsEvidence (A : AcetylcholineReceptorDynamicsPackage) where
  bindingAffinityClosed : A.bindingAffinity > 0
  channelConductanceClosed : A.channelConductance > 0
  desensitizationRateClosed : A.desensitizationRate > 0
  synapticPlasticityCouplingClosed : A.synapticPlasticityCoupling

def AcetylcholineReceptorDynamicsClosed (A : AcetylcholineReceptorDynamicsPackage) : Prop :=
  A.bindingAffinity > 0 ∧ A.channelConductance > 0 ∧
  A.desensitizationRate > 0 ∧ A.synapticPlasticityCoupling

theorem acetylcholine_receptor_dynamics_closed_from_evidence
    (A : AcetylcholineReceptorDynamicsPackage)
    (E : AcetylcholineReceptorDynamicsEvidence A) :
    AcetylcholineReceptorDynamicsClosed A := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.channelConductanceClosed
      (And.intro E.desensitizationRateClosed E.synapticPlasticityCouplingClosed))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse