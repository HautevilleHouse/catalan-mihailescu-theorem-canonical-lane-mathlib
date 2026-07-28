import canonicalLaneMathlib.AdmissibleClass
import CatlanMihailescuTheoremCanonicalLaneLean.CatalanExponentEquation
import CatlanMihailescuTheoremCanonicalLaneLean.CyclotomicField

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure MihailescuProofPackage where
  equation : CatalanEquation
  cyclotomic : CyclotomicField (equation.x * equation.y)
  lowerBond : equation.x^equation.a - equation.y^equation.b = 1
  onlySolutionProof : equation.x=3 ∧ equation.a=2 ∧ equation.y=2 ∧ equation.b=3

structure MihailescuProofEvidence (P : MihailescuProofPackage) where
  equationClosed : P.equation.equation
  onlySolutionClosed : P.onlySolutionProof

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse