import DockingScoringBridgeLemmas

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

def gateClosed (A : DockingScoringAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DockingScoringAdmissibleClass) : gateClosed A :=
  A.gateWitness

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse