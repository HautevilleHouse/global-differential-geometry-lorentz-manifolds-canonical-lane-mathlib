import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure LorentzianMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  metricTensor : Type w
  signature : Prop
  smoothLorentzian : Prop
  signatureClosed : signature
  smoothLorentzianClosed : smoothLorentzian

structure LorentzianMetricEvidence (G : LorentzianMetricPackage) where
  signatureClosed : G.signature
  smoothLorentzianClosed : G.smoothLorentzian

def LorentzianMetricClosed (G : LorentzianMetricPackage) : Prop :=
  G.signature ∧ G.smoothLorentzian

theorem lorentzian_metric_closed_from_evidence (G : LorentzianMetricPackage) (E : LorentzianMetricEvidence G) : LorentzianMetricClosed G := by
  exact And.intro E.signatureClosed E.smoothLorentzianClosed

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse
