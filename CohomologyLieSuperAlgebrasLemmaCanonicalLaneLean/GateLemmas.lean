import canonicalLaneMathlib.AdmissibleClass
import CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CohomologyLieSuperAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse