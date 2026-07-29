import HautevilleHouse.ComputationalChemistryDockingScoringCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

structure AdmissibleClass where
  lane : DockingAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse