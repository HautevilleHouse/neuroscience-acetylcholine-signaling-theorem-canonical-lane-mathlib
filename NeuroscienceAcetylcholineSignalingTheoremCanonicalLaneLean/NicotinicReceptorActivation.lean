import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NicotinicReceptorPackage where
  ligandBindingSite : Prop
  pentamericChannelAssembly : Prop
  cationSelectivePore : Prop
  fastExcitatoryResponse : Prop
  desensitizationKinetics : Prop

structure NicotinicReceptorEvidence (R : NicotinicReceptorPackage) where
  ligandBindingSiteClosed : R.ligandBindingSite
  pentamericChannelAssemblyClosed : R.pentamericChannelAssembly
  cationSelectivePoreClosed : R.cationSelectivePore
  fastExcitatoryResponseClosed : R.fastExcitatoryResponse
  desensitizationKineticsClosed : R.desensitizationKinetics

def NicotinicReceptorClosed (R : NicotinicReceptorPackage) : Prop :=
  R.ligandBindingSite ∧ R.pentamericChannelAssembly ∧ R.cationSelectivePore ∧
  R.fastExcitatoryResponse ∧ R.desensitizationKinetics

theorem nicotinic_receptor_closed_from_evidence (R : NicotinicReceptorPackage)
    (E : NicotinicReceptorEvidence R) : NicotinicReceptorClosed R := by
  exact And.intro E.ligandBindingSiteClosed
    (And.intro E.pentamericChannelAssemblyClosed
      (And.intro E.cationSelectivePoreClosed
        (And.intro E.fastExcitatoryResponseClosed E.desensitizationKineticsClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse