import DockingScoringGateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

def ConstrainedDockingClosure (A : DockingScoringAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_docking_endgame (A : DockingScoringAdmissibleClass) : ConstrainedDockingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse