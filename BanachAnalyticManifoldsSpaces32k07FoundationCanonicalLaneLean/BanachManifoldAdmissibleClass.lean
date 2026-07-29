import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure BanachAnalyticManifold where
  carrier : Type 1
  atlas : Set (Set carrier)
  charts : (s : Set carrier) → s ∈ atlas → carrier ≃ᵃ (BanachSpace : Type 1)
  analyticTransition : ∀ (s t : Set carrier) (hs : s ∈ atlas) (ht : t ∈ atlas),
    AnalyticOn (charts s hs ∘ (charts t ht)⁻¹) (charts t ht '' (s ∩ t))

default instance : Inhabited BanachAnalyticManifold := ⟨{
  carrier := Unit,
  atlas := {Set.univ},
  charts := λ s hs => by
    rcases hs with rfl
    exact {
      toFun := λ _ => 0,
      invFun := λ _ => (),
      left_inv := λ _ => rfl,
      right_inv := λ _ => rfl,
      analytic := λ _ => by exact analytic_const (0 : BanachSpace)
    },
  analyticTransition := λ s t hs ht => by
    simp; exact analyticOn_const _
}⟩

structure BanachAnalyticAdmissibleClass (M : BanachAnalyticManifold) where
  object : AdmittedTheoremObject
  manifold : M
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def banachAnalyticClosed (M : BanachAnalyticManifold) (A : BanachAnalyticAdmissibleClass M) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse