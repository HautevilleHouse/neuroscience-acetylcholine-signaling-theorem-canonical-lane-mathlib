import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure PostSynapticResponsePackage where
  nicotinicReceptor : Type u
  ionChannelGating : Type v
  excitatoryPostsynapticPotential : Prop
  secondMessengerCascade : Prop
  ePSPGenerated : Prop
  cascadeActivated : Prop
  ePSPGeneratedClosed : ePSPGenerated
  cascadeActivatedClosed : cascadeActivated

structure PostSynapticResponseEvidence
    (P : PostSynapticResponsePackage) where
  ePSPGeneratedClosed : P.ePSPGenerated
  cascadeActivatedClosed : P.cascadeActivated

def PostSynapticResponseClosed (P : PostSynapticResponsePackage) : Prop :=
  P.ePSPGenerated ∧ P.cascadeActivated

theorem post_synaptic_response_closed_from_evidence
    (P : PostSynapticResponsePackage)
    (E : PostSynapticResponseEvidence P) :
    PostSynapticResponseClosed P := by
  exact And.intro E.ePSPGeneratedClosed E.cascadeActivatedClosed

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse
