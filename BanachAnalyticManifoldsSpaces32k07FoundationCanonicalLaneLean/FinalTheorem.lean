import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

def ConstrainedBanachManifoldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_manifold_closure (A : AdmissibleClass) :
    ConstrainedBanachManifoldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse