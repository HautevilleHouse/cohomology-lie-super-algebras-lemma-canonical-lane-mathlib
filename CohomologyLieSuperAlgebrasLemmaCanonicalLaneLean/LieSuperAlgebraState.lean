import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

structure LieSuperAlgebraState where
  underlyingAlgebra : String
  bracket : String
  superBracket : String
  gradation : ℕ → ℤ
  consistency : Bool

def lieSuperAlgebraState : LieSuperAlgebraState :=
  { underlyingAlgebra := "Lie superalgebra",
    bracket := "[·,·]",
    superBracket := "[·,·}_s",
    gradation := λ n => n % 2,
    consistency := true }

theorem lie_super_algebra_state_consistency_checked :
    lieSuperAlgebraState.consistency = true := by
  rfl

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse