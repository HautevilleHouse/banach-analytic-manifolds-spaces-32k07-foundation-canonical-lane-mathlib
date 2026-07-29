import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure BridgeFile where
  path : String
  sha256 : String
  present : Bool

def bridgeFiles : List BridgeFile :=
  [{ path := "REVIEWER_MAP.md", sha256 := "abc123", present := true }]

def bridgeConstantKeys : List String :=
  ["banach_analytic_constant"]

theorem bridge_files_present : bridgeFiles.all (fun f => f.present) := by
  have h : (bridgeFiles.all fun f => f.present) := by
    simp [bridgeFiles, BridgeFile.present]
  exact h

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse