import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure AdmittedBanachManifoldObject where
  sourceKey : String
  theoremObject : String
  chartAtlasChecked : Prop
  analyticTransitionMapsChecked : Prop
  modelSpaceChecked : Prop
  classicalRemainderCarried : Bool

structure AdmissibleClass where
  object : AdmittedBanachManifoldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse