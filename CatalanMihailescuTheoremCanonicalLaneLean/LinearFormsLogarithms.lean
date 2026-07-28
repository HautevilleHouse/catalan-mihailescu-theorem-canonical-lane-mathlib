import Mathlib.NumberTheory.LinearFormsInLogarithms

namespace HautevilleHouse
namespace CatalanMihailescuTheoremCanonicalLaneLean

structure LinearFormsLogarithmsPackage where
  linearForm : Prop
  boundExponential : Prop
  effectiveLowerBound : Prop

structure LinearFormsLogarithmsEvidence (L : LinearFormsLogarithmsPackage) where
  linearFormClosed : L.linearForm
  boundExponentialClosed : L.boundExponential
  effectiveLowerBoundClosed : L.effectiveLowerBound

def LinearFormsLogarithmsClosed (L : LinearFormsLogarithmsPackage) : Prop :=
  L.linearForm ∧ L.boundExponential ∧ L.effectiveLowerBound

theorem linear_forms_logarithms_closed_from_evidence
    (L : LinearFormsLogarithmsPackage) (ev : LinearFormsLogarithmsEvidence L) :
    LinearFormsLogarithmsClosed L := by
  exact And.intro ev.linearFormClosed (And.intro ev.boundExponentialClosed ev.effectiveLowerBoundClosed)

end CatalanMihailescuTheoremCanonicalLaneLean
end HautevilleHouse
