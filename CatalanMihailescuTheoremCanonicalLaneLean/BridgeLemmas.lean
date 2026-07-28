import CatalanMihailescuTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CatalanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
