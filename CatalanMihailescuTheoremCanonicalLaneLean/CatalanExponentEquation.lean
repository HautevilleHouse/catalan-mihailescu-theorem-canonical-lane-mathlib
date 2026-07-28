import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CatalanEquation where
  x : ℕ
  a : ℕ
  y : ℕ
  b : ℕ
  exponentCondition : a > 1 ∧ b > 1
  equation : x^a - y^b = 1

structure CatalanAdmittedObject where
  eq : CatalanEquation
  solutionExists : Prop
  onlySolution : (x=3 ∧ a=2 ∧ y=2 ∧ b=3) ∨ solutionExists

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse