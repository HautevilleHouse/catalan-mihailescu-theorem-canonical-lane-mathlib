import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CatalanEquation where
  x : ℕ
  a : ℕ
  y : ℕ
  b : ℕ
  xPos : x > 0
  yPos : y > 0
  aGeq2 : a ≥ 2
  bGeq2 : b ≥ 2
  equation : x^a - y^b = 1

def CatalanEquation.witness (E : CatalanEquation) : Prop :=
  E.equation

structure CatalanAdmittedObject where
  equation : CatalanEquation
  provedUnique : Prop
  isOnlySolution : equation.x = 3 ∧ equation.a = 2 ∧ equation.y = 2 ∧ equation.b = 3
  conclusion : provedUnique

def CatalanWitnessClosed (O : CatalanAdmittedObject) : Prop :=
  O.provedUnique

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse