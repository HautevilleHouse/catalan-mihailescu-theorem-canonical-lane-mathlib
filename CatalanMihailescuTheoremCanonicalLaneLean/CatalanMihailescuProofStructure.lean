import CatalanMihailescuTheoremCanonicalLaneLean.CyclotomicFieldReduction
import CatalanMihailescuTheoremCanonicalLaneLean.CatalanMihailescuFinalTheorem

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure ProofObligations where
  mihailescuEquation : MihailescuEquation
  cyclotomicReduction : CyclotomicFieldConstraints
  linearFormsBounds : Prop
  finalIdentity : Prop

def ProofObligationsClosed (P : ProofObligations) : Prop :=
  CyclotomicFieldReductionClosed P.cyclotomicReduction ∧ P.linearFormsBounds ∧ P.finalIdentity

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse