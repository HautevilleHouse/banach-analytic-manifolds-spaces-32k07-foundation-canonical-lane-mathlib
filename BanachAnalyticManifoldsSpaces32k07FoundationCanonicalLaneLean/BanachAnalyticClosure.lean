import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.BanachAnalyticCertificate
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

def banachAdmissibleClass : AdmissibleClass := {
  object := defaultAdmittedObject,
  endpointSatisfied := CertificateClosed defaultCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl default_certificate_closed
}

def BanachAnalyticClosureClosed : Prop :=
  ConstrainedTheoremClosure banachAdmissibleClass

theorem banach_analytic_closure_checked : BanachAnalyticClosureClosed := by
  exact constrained_banach_analytic_closure banachAdmissibleClass

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse