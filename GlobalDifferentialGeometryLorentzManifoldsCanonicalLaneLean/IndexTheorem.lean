import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure IndexTheoremPackage where
  spinStructure : Type u
  diracOperator : Type v
  indexCalculation : Prop
  ahatGenus : Prop
  indexComputed : Prop
  spinStructureTerm : spinStructure
  diracOperatorTerm : diracOperator
  indexCalculationTerm : indexCalculation
  ahatGenusTerm : ahatGenus
  indexComputedTerm : indexComputed

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexCalculationClosed : I.indexCalculation
  ahatGenusClosed : I.ahatGenus
  indexComputedClosed : I.indexComputed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexCalculation ∧ I.ahatGenus ∧ I.indexComputed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexCalculationClosed (And.intro E.ahatGenusClosed E.indexComputedClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse