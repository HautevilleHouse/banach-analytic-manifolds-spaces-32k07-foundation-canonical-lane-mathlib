import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [ { file := "scripts/extract_banach.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
    { file := "scripts/extract_banach.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
    { file := "scripts/compute_analytic.py", kind := "from_import", module := "math", name := "", alias := "", level := 0 } ]

def sourcePathDependencies : List SourcePathDependency :=
  [ { file := "scripts/extract_banach.py", name := "DEFAULT_INPUTS", path := "artifacts/banach_inputs.json", role := "artifact", line := 10 },
    { file := "scripts/compute_analytic.py", name := "DEFAULT_OUT", path := "artifacts/analytic_output.json", role := "artifact", line := 12 } ]

def sourceRuntimeModules : List String :=
  [ "__future__.annotations",
    "json",
    "math" ]

def sourceImportDependencyCount : Nat := 3

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 3 := by
  rfl

end BanachAnalyticManifoldsSpaces32k07FoundationCanonicalLaneLean
end HautevilleHouse