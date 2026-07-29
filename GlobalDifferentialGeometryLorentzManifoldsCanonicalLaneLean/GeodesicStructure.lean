import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure GeodesicStructurePackage where
  exponentialMap : Type u
  geodesicEquation : Type v
  conjugatePoints : Type w
  causalCharacter : Type x
  exponentialDefined : Prop
  geodesicCompleteness : Prop
  cauchyHypersurface : Prop
  exponentialDefinedClosed : exponentialDefined
  geodesicCompletenessClosed : geodesicCompleteness
  cauchyHypersurfaceClosed : cauchyHypersurface

structure GeodesicStructureEvidence (G : GeodesicStructurePackage) where
  exponentialDefinedClosed : G.exponentialDefined
  geodesicCompletenessClosed : G.geodesicCompleteness
  cauchyHypersurfaceClosed : G.cauchyHypersurface

def GeodesicStructureClosed (G : GeodesicStructurePackage) : Prop :=
  G.exponentialDefined ∧ G.geodesicCompleteness ∧ G.cauchyHypersurface

theorem geodesic_structure_closed_from_evidence (G : GeodesicStructurePackage) (E : GeodesicStructureEvidence G) : GeodesicStructureClosed G := by
  exact And.intro E.exponentialDefinedClosed (And.intro E.geodesicCompletenessClosed E.cauchyHypersurfaceClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse
