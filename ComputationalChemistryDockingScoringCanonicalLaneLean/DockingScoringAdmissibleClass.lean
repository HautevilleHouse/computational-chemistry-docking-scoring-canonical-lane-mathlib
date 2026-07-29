import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

structure DockingPose where
  ligandId : String
  conformationIndex : Nat
  bindingScore : Float
  poseCoordinates : List Float

def Decides (scoringFunction : DockingPose -> Float) (threshold : Float) : Prop :=
  forall (pose : DockingPose), scoringFunction pose >= threshold

structure DockingScoringAdmittedObject where
  targetProtein : String
  ligandLibrary : List String
  receptorStructure : List Float
  scoringFunction : DockingPose -> Float
  threshold : Float
  projection : DockingPose -> DockingPose
  projectionIdempotent : forall (p : DockingPose), projection (projection p) = projection p
  projectedLanguage : Set DockingPose
  solver : DockingPose -> Bool
  solverDecidesProjectedLanguage : Decides solver (fun pose => pose ∈ projectedLanguage)

structure DockingScoringAdmissibleClass where
  lane : DockingScoringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DockingScoringAdmissibleClass) : Prop :=
  Decides A.lane.solver (fun pose => pose ∈ A.lane.projectedLanguage) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse