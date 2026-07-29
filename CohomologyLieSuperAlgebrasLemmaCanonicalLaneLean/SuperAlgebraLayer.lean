import canonicalLaneMathlib.SuperAlgebraLayer

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

structure LieSuperAlgebra (R : Type u) [CommRing R] where
  superSpace : R ⊗ R
  lieBracket : superSpace → superSpace → superSpace
  jacobiIdentity : Prop

structure CohomologySuperComplex (𝔤 : LieSuperAlgebra R) where
  cochains : ℕ → Module R
  differential : ∀ n, cochains n → cochains (n+1)
  differentialSquared : ∀ n, differential (n+1) ∘ differential n = 0

def SuperCohomologyGroup (𝔤 : LieSuperAlgebra R) (n : ℕ) : Module R :=
  ker (cohomologySuperComplex.differential n) / im (cohomologySuperComplex.differential (n-1))

structure AdmittedSuperObject where
  superAlgebra : LieSuperAlgebra R
  cohomologyComplex : CohomologySuperComplex superAlgebra
  cohomologyGroups : ∀ n, SuperCohomologyGroup superAlgebra n

def superObjectClosed (obj : AdmittedSuperObject) : Prop :=
  ∀ n, obj.cohomologyGroups n ≠ 0

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
