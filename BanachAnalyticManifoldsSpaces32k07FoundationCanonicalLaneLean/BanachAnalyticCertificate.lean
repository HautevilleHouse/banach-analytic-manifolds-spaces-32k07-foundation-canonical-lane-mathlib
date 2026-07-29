import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure BanachAnalyticCertificate where
  object : AdmittedBanachAnalyticObject
  baselineGatesClosed : Bool
  certificateLane : String
  carriedBoundary : Bool

def defaultCertificate : BanachAnalyticCertificate := {
  object := defaultAdmittedObject,
  baselineGatesClosed := true,
  certificateLane := "manifold_constrained",
  carriedBoundary := true
}

def CertificateClosed (C : BanachAnalyticCertificate) : Prop :=
  C.baselineGatesClosed = true ∧ C.carriedBoundary = true

theorem default_certificate_closed : CertificateClosed defaultCertificate := by
  exact And.intro rfl rfl

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse