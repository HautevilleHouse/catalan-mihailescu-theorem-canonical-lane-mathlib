import Mathlib.NumberTheory.ModularForms

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure ModularMethodPackage where
  freyCurve : Prop
  modularity : Prop
  levelLowering : Prop

structure ModularMethodEvidence (M : ModularMethodPackage) where
  freyCurveClosed : M.freyCurve
  modularityClosed : M.modularity
  levelLoweringClosed : M.levelLowering

def ModularMethodClosed (M : ModularMethodPackage) : Prop :=
  M.freyCurve ∧ M.modularity ∧ M.levelLowering

theorem modular_method_closed_from_evidence
    (M : ModularMethodPackage) (ev : ModularMethodEvidence M) :
    ModularMethodClosed M := by
  exact And.intro ev.freyCurveClosed (And.intro ev.modularityClosed ev.levelLoweringClosed)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
