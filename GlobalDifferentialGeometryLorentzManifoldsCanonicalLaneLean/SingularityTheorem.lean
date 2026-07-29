import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure SingularityTheoremPackage where
  energyCondition : Prop
  geodesicIncompleteness : Prop
  trappedSurface : Prop
  energyConditionClosed : energyCondition
  geodesicIncompletenessClosed : geodesicIncompleteness
  trappedSurfaceClosed : trappedSurface

structure SingularityTheoremEvidence (S : SingularityTheoremPackage) where
  energyConditionClosed : S.energyCondition
  geodesicIncompletenessClosed : S.geodesicIncompleteness
  trappedSurfaceClosed : S.trappedSurface

def SingularityTheoremClosed (S : SingularityTheoremPackage) : Prop :=
  S.energyCondition ∧ S.geodesicIncompleteness ∧ S.trappedSurface

theorem singularity_theorem_closed_from_evidence (S : SingularityTheoremPackage) (E : SingularityTheoremEvidence S) : SingularityTheoremClosed S := by
  exact And.intro E.energyConditionClosed (And.intro E.geodesicIncompletenessClosed E.trappedSurfaceClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse
