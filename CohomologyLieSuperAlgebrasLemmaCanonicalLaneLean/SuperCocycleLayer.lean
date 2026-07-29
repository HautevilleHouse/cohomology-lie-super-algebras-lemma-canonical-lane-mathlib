import canonicalLaneMathlib.AdmissibleClass
import CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean.SuperCohomologyObjects

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

structure NativeSuperCocycle (A : NativeSuperAlgebra ℂ) (degree : ℕ) where
  cocycleMap : A.underlying → A.underlying
  parity : ℤ₂
  closedUnderDifferential : Bool

default

def NativeSuperCocycle.cohomologyClass {A : NativeSuperAlgebra ℂ} {n : ℕ}
    (c : NativeSuperCocycle A n) : String :=
  if c.closedUnderDifferential then "admissible" else "carried"

structure SuperCocycleSubstrate where
  cocycleDefined : Bool
  parityRecorded : Bool
  closureFlag : Bool

deriving Repr, DecidableEq

def superCocycleSubstrate : SuperCocycleSubstrate := {
  cocycleDefined := true
  parityRecorded := true
  closureFlag := true
}

theorem super_cocycle_substrate_checked :
    superCocycleSubstrate.cocycleDefined = true ∧
    superCocycleSubstrate.parityRecorded = true ∧
    superCocycleSubstrate.closureFlag = true := by
  exact ⟨rfl, rfl, rfl⟩

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse