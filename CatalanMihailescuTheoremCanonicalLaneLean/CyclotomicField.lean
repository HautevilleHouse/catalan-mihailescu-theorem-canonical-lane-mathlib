import canonicalLaneMathlib.AdmissibleClass
import CatlanMihailescuTheoremCanonicalLaneLean.CatalanExponentEquation

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure CyclotomicField (n : ℕ) where
  field : Type u
  characteristic : field.CharacteristicZero
  primitiveRoot : field
  cyclotomicPolynomial : Polynomial ℚ
  degree : n

structure CyclotomicFieldEvidence (n : ℕ) (C : CyclotomicField n) where
  fieldConstructed : Prop
  primitiveRootExists : Prop
  cyclotomicPolynomialIrreducible : Prop

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse