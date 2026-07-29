import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.BanachManifoldAdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

-- Gate representing completeness of function spaces
structure FunctionSpaceGate (M : BanachAnalyticManifold) where
  functionSpace : Type 1
  normedSpaceStructure : NormedAddCommGroup functionSpace
  banachSpaceProperty : CompleteSpace functionSpace
  analyticMappingProperty : (f : functionSpace) → AnalyticOn f (Set.univ : Set M)

def gateClosed (M : BanachAnalyticManifold) (G : FunctionSpaceGate M) : Prop :=
  CompleteSpace G.functionSpace ∧
  ∀ f : G.functionSpace, AnalyticOn f (Set.univ : Set M)

theorem gate_from_admissible_class (M : BanachAnalyticManifold) (G : FunctionSpaceGate M) (A : AdmissibleClass) :
    gateClosed M G := by
  exact ⟨G.banachSpaceProperty, G.analyticMappingProperty⟩

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse