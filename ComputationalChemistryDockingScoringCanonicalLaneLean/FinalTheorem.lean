import HautevilleHouse.ComputationalChemistryDockingScoringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

def ConstrainedDockingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_docking_endgame (A : AdmissibleClass) :
    ConstrainedDockingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse