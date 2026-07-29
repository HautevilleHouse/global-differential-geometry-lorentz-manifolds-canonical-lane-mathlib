import canonicalLaneMathlib.AdmissibleClass
import GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.LorentzManifoldObjects

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroupReductive : Prop
  ambelominerSubgroupIdentified : Prop
  deRhamDecomposition : Prop
  constraintTensorVanishes : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyGroupReductiveClosed : H.holonomyGroupReductive
  ambelominerSubgroupIdentifiedClosed : H.ambelominerSubgroupIdentified
  deRhamDecompositionClosed : H.deRhamDecomposition
  constraintTensorVanishesClosed : H.constraintTensorVanishes

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyGroupReductive ∧ H.ambelominerSubgroupIdentified ∧
  H.deRhamDecomposition ∧ H.constraintTensorVanishes

theorem holonomy_closed_from_evidence (H : HolonomyPackage)
    (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyGroupReductiveClosed
    (And.intro E.ambelominerSubgroupIdentifiedClosed
      (And.intro E.deRhamDecompositionClosed E.constraintTensorVanishesClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse