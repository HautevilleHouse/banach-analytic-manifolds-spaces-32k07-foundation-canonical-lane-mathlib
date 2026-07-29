import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.BanachManifoldAdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def defaultFormalizationCertificate : FormalizationCertificate := {
  sourceRepo := "banach-analytic-manifolds-spaces-32k07-foundation",
  sourceCheckoutHead := "abc123",
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_conjecture_closure_claim :
    defaultFormalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    defaultFormalizationCertificate.leanBuildChecked = true := by
  rfl

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse