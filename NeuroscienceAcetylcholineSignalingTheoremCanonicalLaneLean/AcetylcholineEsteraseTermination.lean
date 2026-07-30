import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean

structure AcetylcholineEsterasePackage where
  catalyticSitePresent : Prop
  neurotransmitterHydrolyzed : Prop
  cholineReuptakeInitiated : Prop
  signalTerminationRapid : Prop
  inhibitionByOrganophosphates : Prop

structure AcetylcholineEsteraseEvidence (A : AcetylcholineEsterasePackage) where
  catalyticSitePresentClosed : A.catalyticSitePresent
  neurotransmitterHydrolyzedClosed : A.neurotransmitterHydrolyzed
  cholineReuptakeInitiatedClosed : A.cholineReuptakeInitiated
  signalTerminationRapidClosed : A.signalTerminationRapid
  inhibitionByOrganophosphatesClosed : A.inhibitionByOrganophosphates

def AcetylcholineEsteraseClosed (A : AcetylcholineEsterasePackage) : Prop :=
  A.catalyticSitePresent ∧ A.neurotransmitterHydrolyzed ∧
  A.cholineReuptakeInitiated ∧ A.signalTerminationRapid ∧
  A.inhibitionByOrganophosphates

theorem acetylcholine_esterase_closed_from_evidence (A : AcetylcholineEsterasePackage)
    (E : AcetylcholineEsteraseEvidence A) : AcetylcholineEsteraseClosed A := by
  exact And.intro E.catalyticSitePresentClosed
    (And.intro E.neurotransmitterHydrolyzedClosed
      (And.intro E.cholineReuptakeInitiatedClosed
        (And.intro E.signalTerminationRapidClosed E.inhibitionByOrganophosphatesClosed)))

end NeuroscienceAcetylcholineSignalingTheoremCanonicalLaneLean
end HautevilleHouse