import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure GeodesicsPackage where
  geodesicEquation : Prop
  exponentialMap : Prop
  normalNeighborhoods : Prop
  conjugatePoints : Prop
  causalGeodesicsClassified : Prop

structure GeodesicsEvidence (G : GeodesicsPackage) where
  geodesicEquationClosed : G.geodesicEquation
  exponentialMapClosed : G.exponentialMap
  normalNeighborhoodsClosed : G.normalNeighborhoods
  conjugatePointsClosed : G.conjugatePoints
  causalGeodesicsClassifiedClosed : G.causalGeodesicsClassified

def GeodesicsClosed (G : GeodesicsPackage) : Prop :=
  G.geodesicEquation ∧ G.exponentialMap ∧ G.normalNeighborhoods ∧ G.conjugatePoints ∧ G.causalGeodesicsClassified

theorem geodesics_closed_from_evidence (G : GeodesicsPackage) (E : GeodesicsEvidence G) : GeodesicsClosed G := by
  exact And.intro E.geodesicEquationClosed (And.intro E.exponentialMapClosed (And.intro E.normalNeighborhoodsClosed (And.intro E.conjugatePointsClosed E.causalGeodesicsClassifiedClosed)))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse