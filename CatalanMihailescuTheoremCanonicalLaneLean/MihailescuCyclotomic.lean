import CatalanMihailescuTheoremCanonicalLaneLean.CatalanEquation

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure MihailescuCyclotomicPackage {P : CatalanEquationPackage} where
  cyclotomicField : Type u
  ringOfIntegers : Type v
  fundamentalUnit : Type w
  casselsPairing : Prop
  cyclotomicFieldDefined : Prop
  ringOfIntegersDefined : Prop
  fundamentalUnitConstructed : Prop
  casselsPairingProved : Prop

structure MihailescuCyclotomicEvidence {P : CatalanEquationPackage} (M : MihailescuCyclotomicPackage P) where
  cyclotomicFieldDefinedClosed : M.cyclotomicFieldDefined
  ringOfIntegersDefinedClosed : M.ringOfIntegersDefined
  fundamentalUnitConstructedClosed : M.fundamentalUnitConstructed
  casselsPairingProvedClosed : M.casselsPairingProved

def MihailescuCyclotomicClosed {P : CatalanEquationPackage} (M : MihailescuCyclotomicPackage P) : Prop :=
  M.cyclotomicFieldDefined ∧ M.ringOfIntegersDefined ∧ M.fundamentalUnitConstructed ∧ M.casselsPairingProved

theorem mihailescu_cyclotomic_closed_from_evidence {P : CatalanEquationPackage} (M : MihailescuCyclotomicPackage P) (E : MihailescuCyclotomicEvidence M) : MihailescuCyclotomicClosed M := by
  exact And.intro E.cyclotomicFieldDefinedClosed (And.intro E.ringOfIntegersDefinedClosed (And.intro E.fundamentalUnitConstructedClosed E.casselsPairingProvedClosed))

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
