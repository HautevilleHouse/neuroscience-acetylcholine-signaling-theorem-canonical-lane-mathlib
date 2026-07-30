import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  hebbianMechanism : Prop
  calciumDependentSignaling : Prop
  ltpInduced : longTermPotentiation
  ltdInduced : longTermDepression
  hebbianMechanismClosed : hebbianMechanism
  calciumDependentSignalingClosed : calciumDependentSignaling

structure SynapticPlasticityEvidence
    (P : SynapticPlasticityPackage) where
  ltpInducedClosed : P.ltpInduced
  ltdInducedClosed : P.ltdInduced
  hebbianMechanismClosed : P.hebbianMechanism
  calciumDependentSignalingClosed : P.calciumDependentSignaling

def SynapticPlasticityClosed (P : SynapticPlasticityPackage) : Prop :=
  P.longTermPotentiation ∧ P.longTermDepression ∧
  P.hebbianMechanism ∧ P.calciumDependentSignaling

theorem synaptic_plasticity_closed_from_evidence
    (P : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence P) :
    SynapticPlasticityClosed P := by
  exact And.intro E.ltpInducedClosed
    (And.intro E.ltdInducedClosed
      (And.intro E.hebbianMechanismClosed
        E.calciumDependentSignalingClosed))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
