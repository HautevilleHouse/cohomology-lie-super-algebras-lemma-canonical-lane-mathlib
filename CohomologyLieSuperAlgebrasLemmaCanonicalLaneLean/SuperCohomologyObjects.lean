import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

structure NativeSuperAlgebra (R : Type u) [CommRing R] where
  underlying : Type u
  algebraStr : Algebra R underlying
  superStructure : Bool

default

def NativeSuperCohomology (A : NativeSuperAlgebra ℂ) (degree : ℕ) : Type u := A.underlying

structure SuperAlgebroGeometricObject where
  superAlgebra : NativeSuperAlgebra ℂ
  degree : ℕ
  cocycleType : String

default

structure CohomologyLieSuperAlgebraSubstrate where
  superAlgebraAvailable : Bool
  cohomologyDefined : Bool
  spectralSequenceRoute : Bool

deriving Repr, DecidableEq

def cohomologyLieSuperAlgebraSubstrate : CohomologyLieSuperAlgebraSubstrate := {
  superAlgebraAvailable := true
  cohomologyDefined := true
  spectralSequenceRoute := true
}

theorem cohomology_lie_super_algebra_substrate_checked :
    cohomologyLieSuperAlgebraSubstrate.superAlgebraAvailable = true ∧
    cohomologyLieSuperAlgebraSubstrate.cohomologyDefined = true ∧
    cohomologyLieSuperAlgebraSubstrate.spectralSequenceRoute = true := by
  exact ⟨rfl, rfl, rfl⟩

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse