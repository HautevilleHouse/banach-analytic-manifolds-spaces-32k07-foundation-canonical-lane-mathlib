import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.chartAtlasChecked,
    A.object.analyticTransitionMapsChecked,
    A.object.modelSpaceChecked,
    A.object.classicalRemainderCarried⟩

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse