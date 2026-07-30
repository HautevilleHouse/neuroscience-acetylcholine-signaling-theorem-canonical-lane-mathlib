import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure NeuralFieldKernel where
  spatialKernel : Float
  temporalKernel : Float
  connectivityRadius : Float
  synapticTimeConstant : Float

structure NeuralFieldEquation where
  firingRate : Float
  inputCurrent : Float
  adaptationVariable : Float
  kernel : NeuralFieldKernel

structure NeuralFieldEvidence (N : NeuralFieldEquation) where
  firingRateNonnegative : N.firingRate ≥ 0
  inputCurrentBounded : N.inputCurrent > 0 ∧ N.inputCurrent < 10
  adaptationVariableNegative : N.adaptationVariable < 0
  kernelParametersPositive : N.kernel.spatialKernel > 0 ∧ N.kernel.temporalKernel > 0 ∧
    N.kernel.connectivityRadius > 0 ∧ N.kernel.synapticTimeConstant > 0

def NeuralFieldClosed (N : NeuralFieldEquation) : Prop :=
  N.firingRate ≥ 0 ∧ N.inputCurrent > 0 ∧ N.inputCurrent < 10 ∧ N.adaptationVariable < 0 ∧
  N.kernel.spatialKernel > 0 ∧ N.kernel.temporalKernel > 0 ∧ N.kernel.connectivityRadius > 0 ∧ N.kernel.synapticTimeConstant > 0

theorem neural_field_closed_from_evidence
    (N : NeuralFieldEquation) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  have hkernel := E.kernelParametersPositive
  refine And.intro E.firingRateNonnegative
    (And.intro E.inputCurrentBounded.1
      (And.intro E.inputCurrentBounded.2
        (And.intro E.adaptationVariableNegative
          (And.intro hkernel.1 (And.intro hkernel.2.1 (And.intro hkernel.2.2.1 hkernel.2.2.2))))))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse