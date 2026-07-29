import DockingScoringAdmissibleClass
import DockingScoringBridgeLemmas

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

def chemicalProjection : DockingScoreFunction → DockingScoreFunction := 
  fun f => { ligandSmiles := f.ligandSmiles, proteinPdb := f.proteinPdb, score := 0.0 }

theorem chemical_projection_idempotent (f : DockingScoreFunction) :
    chemicalProjection (chemicalProjection f) = chemicalProjection f := rfl

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse