import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CatalanMihailescuObject where
  x : ℕ
  a : ℕ
  y : ℕ
  b : ℕ
  equation : x^a - y^b = 1
  x_gt_one : x > 1
  a_gt_one : a > 1
  y_gt_one : y > 1
  b_gt_one : b > 1
  conclusion : x = 3 ∧ a = 2 ∧ y = 2 ∧ b = 3

structure AdmissibleClass where
  object : CatalanMihailescuObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse