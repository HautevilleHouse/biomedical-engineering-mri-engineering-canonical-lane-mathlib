import BiomedicalEngineeringMriEngineeringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

def ConstrainedMRIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mri_endgame (A : AdmissibleClass) : ConstrainedMRIClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse