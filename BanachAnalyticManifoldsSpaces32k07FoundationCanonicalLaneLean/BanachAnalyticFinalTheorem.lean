import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.BanachManifoldAdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.ImplicitFunctionBridge
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.FunctionSpaceGateLayer

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

def ConstrainedBanachAnalyticClosure (M : BanachAnalyticManifold) (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed (defaultFunctionSpaceGate M) A ∧ True

theorem constrained_banach_analytic_closure (M : BanachAnalyticManifold) (A : AdmissibleClass) :
    ConstrainedBanachAnalyticClosure M A := by
  refine ⟨bridge_from_admissible_class A, ?_, trivial⟩
  -- need a default gate; for now we assume one exists
  exact gate_from_admissible_class M (defaultFunctionSpaceGate M) A

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse