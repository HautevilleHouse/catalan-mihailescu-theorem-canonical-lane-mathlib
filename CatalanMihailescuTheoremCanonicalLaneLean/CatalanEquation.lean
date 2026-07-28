import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CatalanEquationPackage where
  x : ℕ
  a : ℕ
  y : ℕ
  b : ℕ
  equation : x^a - y^b = 1
  exponentBounds : a > 1 ∧ b > 1
  baseBounds : x > 1 ∧ y > 1

structure CatalanEquationEvidence (P : CatalanEquationPackage) where
  equationClosed : P.equation
  exponentBoundsClosed : P.exponentBounds
  baseBoundsClosed : P.baseBounds

def CatalanEquationClosed (P : CatalanEquationPackage) : Prop :=
  P.equation ∧ P.exponentBounds ∧ P.baseBounds

theorem catalan_equation_closed_from_evidence (P : CatalanEquationPackage) (E : CatalanEquationEvidence P) : CatalanEquationClosed P := by
  exact And.intro E.equationClosed (And.intro E.exponentBoundsClosed E.baseBoundsClosed)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse