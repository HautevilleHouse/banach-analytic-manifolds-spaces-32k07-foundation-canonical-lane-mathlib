import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Analytic.Basic
import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.NormedSpace.BanachSpace

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

universe u

-- Core objects for Banach analytic manifolds
structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate (E : Type u) [NormedAddCommGroup E] [BanachSpace E] where
  operatorCarrier : Type u
  spectralSet : Set E
  invariantOrSelfAdjointGate : Prop
  spectralPersistenceBridge : Prop
  sourceBoundaryLedger : Set String

structure AdmittedTheoremObject (E : Type u) [NormedAddCommGroup E] [BanachSpace E] where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate E
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : Prop
  sourceKeyChecked : object.sourceKey = "banach-analytic-manifolds-spaces-32k07-foundation"
  theoremObjectChecked : object.theoremObject = "Banach Analytic Manifolds Spaces 32K07 Foundation"

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  O.operatorModelChecked ∧ O.spectralPersistenceBridgeChecked ∧ O.sourceBoundaryLedgerChecked

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse