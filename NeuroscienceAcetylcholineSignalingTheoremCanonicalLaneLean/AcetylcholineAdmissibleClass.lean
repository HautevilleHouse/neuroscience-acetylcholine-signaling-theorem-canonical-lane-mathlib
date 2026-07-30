import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure AcetylcholineAdmittedObject where
  synapse : AcetylcholineSynapticModel
  hodgkinHuxley : HodgkinHuxleyPDEPackage
  hebbianPlasticity : HebbianPlasticityModel
  nicotinic : NicotinicReceptor
  muscarinic : MuscarinicReceptor
  circuit : CholinergicCircuit
  signalingComplete : Prop
  signalingCompleteClosed : signalingComplete

structure AcetylcholineEndgameState where
  object : AcetylcholineAdmittedObject

def AcetylcholineWitnessClosed (O : AcetylcholineAdmittedObject) : Prop :=
  O.signalingComplete

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse