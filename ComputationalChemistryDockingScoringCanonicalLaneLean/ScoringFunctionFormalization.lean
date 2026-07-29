import DockingScoringAdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDockingScoringCanonicalLaneLean

inductive DockingFormulaExpr where
  | var (name : String)
  | num (value : Float)
  | add (lhs rhs : DockingFormulaExpr)
  | sub (lhs rhs : DockingFormulaExpr)
  | mul (lhs rhs : DockingFormulaExpr)
  | div (lhs rhs : DockingFormulaExpr)
  | raw (formula : String)
deriving Repr, DecidableEq

structure DockingSourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : DockingFormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
deriving Repr, DecidableEq

def sourceFormulaModels : List DockingSourceFormulaModel :=
  [ { group := "scoring", key := "affinity", status := "derived_numeric", formula := "affinity_raw", expr := DockingFormulaExpr.var "affinity_raw", parseStatus := "parsed", sourceSection := "paper/vina_scoring.md", notes := "Binding affinity from AutoDock Vina", validation := "required_positive" } ]

end ComputationalChemistryDockingScoringCanonicalLaneLean
end HautevilleHouse