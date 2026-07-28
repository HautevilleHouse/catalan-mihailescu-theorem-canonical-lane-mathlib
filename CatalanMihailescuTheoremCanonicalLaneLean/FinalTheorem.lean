import CatalanMihailescuTheoremCanonicalLaneLean.CatalanEquation
import CatalanMihailescuTheoremCanonicalLaneLean.CatalanMihailescuAdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCatalanMihailescuClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_catalan_mihailescu_endgame (A : AdmissibleClass) : ConstrainedCatalanMihailescuClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse