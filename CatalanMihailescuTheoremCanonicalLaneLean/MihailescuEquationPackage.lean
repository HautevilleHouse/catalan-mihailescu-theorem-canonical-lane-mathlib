import CatalanMihailescuTheoremCanonicalLaneLean.CatalanMihailescuAdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure MihailescuEquation where
  baseExponentPairs : ℕ × ℕ × ℕ × ℕ  -- (x, a, y, b)
  equation : ℕ
  equationHolds : x^a - y^b = 1
  solutionConstraint : x^a - y^b = 1 → (x,a,y,b) = (3,2,2,3)

def CatalanMihailescuWitnessClosed (O : CatalanMihailescuAdmittedObject) : Prop :=
  O.onlySolution

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse