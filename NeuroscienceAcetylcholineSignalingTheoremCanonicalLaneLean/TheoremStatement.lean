import HautevilleHouse.NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure AcetylcholineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AcetylcholineAdmittedObject where
  space : AcetylcholineSpace
  signalingCircuit : Prop
  acetylcholineReceptorActivation : Prop
  synapticTransmission : Prop
  conclusion : synapticTransmission

def AcetylcholineWitnessClosed (O : AcetylcholineAdmittedObject) : Prop :=
  O.synapticTransmission

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse