import canonicalLaneMathlib.AdmissibleClass
import DockingScoringAdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

def bridgeClosed (A : DockingScoringAdmissibleClass) : Prop :=
  Decides A.lane.solver (fun pose => pose ∈ A.lane.projectedLanguage)

theorem bridge_from_admissible_class (A : DockingScoringAdmissibleClass) : bridgeClosed A :=
  A.lane.solverDecidesProjectedLanguage

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse