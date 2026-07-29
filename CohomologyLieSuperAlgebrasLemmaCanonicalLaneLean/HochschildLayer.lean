import canonicalLaneMathlib.CohomologyLayer

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

open SuperAlgebraLayer

structure HochschildSuperComplex (𝔤 : LieSuperAlgebra R) where
  chain : ℕ → Module R
  boundary : ∀ n, chain n → chain (n-1)
  boundarySquared : ∀ n, boundary (n-1) ∘ boundary n = 0

def HochschildSuperCohomology (𝔤 : LieSuperAlgebra R) (n : ℕ) : Module R :=
  ker (hochschildSuperComplex.boundary n) / im (hochschildSuperComplex.boundary (n+1))

theorem hochschild_cohomology_isomorphic_to_super (𝔤 : LieSuperAlgebra R) (n : ℕ) :
  HochschildSuperCohomology 𝔤 n ≅ SuperCohomologyGroup 𝔤 n := by
  apply isomorphismOfKernelQuotients
  -- This uses a lemma from CohomologyLayer that provides the isomorphism
  exact (superCohomologyIsHochschildCohomology 𝔤 n)

structure AdmittedHochschildObject where
  hochschildComplex : HochschildSuperComplex superAlgebra
  isomorphicProof : ∀ n, hochschild_cohomology_isomorphic_to_super superAlgebra n

def hochschildObjectClosed (obj : AdmittedHochschildObject) (A : AdmissibleClass) : Prop :=
  ∀ n, (obj.isomorphicProof n).hom ≠ 0

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse