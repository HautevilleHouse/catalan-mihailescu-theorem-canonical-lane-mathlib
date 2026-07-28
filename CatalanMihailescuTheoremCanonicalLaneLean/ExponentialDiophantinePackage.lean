import HautevilleHouse.CatalanMihailescuTheoremCanonicalLaneLean.CyclotomicFieldArithmetic

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure ExponentialDiophantinePackage where
  exponents : Nat × Nat
  baseEquation : Prop
  onlySolution : Prop
  solutionExists : Prop

structure ExponentialDiophantineEvidence (E : ExponentialDiophantinePackage) where
  baseEquationClosed : E.baseEquation
  onlySolutionClosed : E.onlySolution
  solutionExistsClosed : E.solutionExists

def ExponentialDiophantineClosed (E : ExponentialDiophantinePackage) : Prop :=
  E.baseEquation ∧ E.onlySolution ∧ E.solutionExists

theorem exponential_diophantine_closed_from_evidence
    (E : ExponentialDiophantinePackage) (ev : ExponentialDiophantineEvidence E) :
    ExponentialDiophantineClosed E := by
  exact And.intro ev.baseEquationClosed (And.intro ev.onlySolutionClosed ev.solutionExistsClosed)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
