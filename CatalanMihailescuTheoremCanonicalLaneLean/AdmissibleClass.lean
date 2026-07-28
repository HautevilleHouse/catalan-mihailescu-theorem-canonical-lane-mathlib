import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CatalanAdmittedObject where
  baseA : ℕ
  exponentX : ℕ
  baseB : ℕ
  exponentY : ℕ
  equation : Prop
  equationCondition : baseA^exponentX - baseB^exponentY = 1
  nontrivialCondition : baseA > 1 ∧ baseB > 1 ∧ exponentX > 1 ∧ exponentY > 1
  conclusion : (baseA = 3 ∧ exponentX = 2 ∧ baseB = 2 ∧ exponentY = 3) ∨ (baseA = 2 ∧ exponentX = 3 ∧ baseB = 3 ∧ exponentY = 2)

structure AdmissibleClass where
  object : CatalanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CatalanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
