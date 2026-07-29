import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure HolonomyGroupPackage where
  holonomyRepresentation : Type u
  holonomyAlgebra : Type v
  deRhamDecomposition : Prop
  weakBergerTheorem : Prop
  holonomyClassification : Prop
  deRhamDecompositionTerm : deRhamDecomposition
  weakBergerTheoremTerm : weakBergerTheorem
  holonomyClassificationTerm : holonomyClassification

structure HolonomyGroupEvidence (H : HolonomyGroupPackage) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  weakBergerTheoremClosed : H.weakBergerTheorem
  holonomyClassificationClosed : H.holonomyClassification

def HolonomyGroupClosed (H : HolonomyGroupPackage) : Prop :=
  H.deRhamDecomposition ∧ H.weakBergerTheorem ∧ H.holonomyClassification

theorem holonomy_group_closed_from_evidence (H : HolonomyGroupPackage)
    (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H := by
  exact And.intro E.deRhamDecompositionClosed (And.intro E.weakBergerTheoremClosed E.holonomyClassificationClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse