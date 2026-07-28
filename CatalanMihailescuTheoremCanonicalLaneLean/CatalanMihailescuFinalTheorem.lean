import CatalanMihailescuTheoremCanonicalLaneLean.CatalanMihailescuGateLemmas

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

def ConstrainedCatalanMihailescuClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_catalan_mihailescu_endgame (A : AdmissibleClass) : ConstrainedCatalanMihailescuClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse