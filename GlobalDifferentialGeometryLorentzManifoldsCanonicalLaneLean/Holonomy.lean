import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure HolonomyPackage where
  connection : Type u
  curvature : Type v
  holonomyGroup : Type w
  restrictedHolonomyGroup : Type x
  ambroseSingerTheorem : Prop
  deRhamDecomposition : Prop
  ambroseSingerClosed : ambroseSingerTheorem
  deRhamDecompositionClosed : deRhamDecomposition

structure HolonomyEvidence (H : HolonomyPackage) where
  ambroseSingerClosed : H.ambroseSingerTheorem
  deRhamDecompositionClosed : H.deRhamDecomposition

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambroseSingerTheorem ∧ H.deRhamDecomposition

theorem holonomy_closed_from_evidence
    (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.ambroseSingerClosed E.deRhamDecompositionClosed

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse