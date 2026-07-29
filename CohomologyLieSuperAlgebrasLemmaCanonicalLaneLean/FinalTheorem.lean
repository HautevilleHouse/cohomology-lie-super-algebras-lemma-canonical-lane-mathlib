import canonicalLaneMathlib.AdmissibleClass
import CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

def ConstrainedSuperCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_super_cohomology_closure (A : AdmissibleClass) :
    ConstrainedSuperCohomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse