import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure PrimeExponentClassification where
  primeA : ℕ
  primeB : ℕ
  aIsPrime : primeA.Prime
  bIsPrime : primeB.Prime
  exponentCondition : primeA > 1 ∧ primeB > 1

structure PrimeExponentEvidence (P : PrimeExponentClassification) where
  aIsPrimeClosed : P.aIsPrime
  bIsPrimeClosed : P.bIsPrime

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse