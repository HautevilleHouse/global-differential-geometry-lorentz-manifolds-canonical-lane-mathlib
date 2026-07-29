import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure SingularityTheoremsPackage where
  energyConditions : Prop
  trappedSurfaces : Prop
  geodesicIncompleteness : Prop
  hawickPenroseTheorem : Prop

structure SingularityTheoremsEvidence (S : SingularityTheoremsPackage) where
  energyConditionsClosed : S.energyConditions
  trappedSurfacesClosed : S.trappedSurfaces
  geodesicIncompletenessClosed : S.geodesicIncompleteness
  hawickPenroseTheoremClosed : S.hawickPenroseTheorem

def SingularityTheoremsClosed (S : SingularityTheoremsPackage) : Prop :=
  S.energyConditions ∧ S.trappedSurfaces ∧ S.geodesicIncompleteness ∧ S.hawickPenroseTheorem

theorem singularity_theorems_closed_from_evidence (S : SingularityTheoremsPackage) (E : SingularityTheoremsEvidence S) : SingularityTheoremsClosed S := by
  exact And.intro E.energyConditionsClosed (And.intro E.trappedSurfacesClosed (And.intro E.geodesicIncompletenessClosed E.hawickPenroseTheoremClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse