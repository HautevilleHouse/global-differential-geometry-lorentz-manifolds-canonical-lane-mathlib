import canonicalLaneMathlib.AdmissibleClass
import GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure IndexTheoremPackage where
  diracOperatorIndexComputed : Prop
  aHatGenusMatches : Prop
  signatureOperatorIndexComputed : Prop
  indexTheoremHolds : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  diracOperatorIndexComputedClosed : I.diracOperatorIndexComputed
  aHatGenusMatchesClosed : I.aHatGenusMatches
  signatureOperatorIndexComputedClosed : I.signatureOperatorIndexComputed
  indexTheoremHoldsClosed : I.indexTheoremHolds

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.diracOperatorIndexComputed ∧ I.aHatGenusMatches ∧
  I.signatureOperatorIndexComputed ∧ I.indexTheoremHolds

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.diracOperatorIndexComputedClosed
    (And.intro E.aHatGenusMatchesClosed
      (And.intro E.signatureOperatorIndexComputedClosed E.indexTheoremHoldsClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse