import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure LorentzMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  metricTensor : Type w
  signature : Prop
  timeOrientation : Prop
  smoothMetricDefined : Prop
  signatureTerm : signature
  timeOrientationTerm : timeOrientation
  smoothMetricDefinedTerm : smoothMetricDefined

structure LorentzMetricEvidence (G : LorentzMetricPackage) where
  signatureClosed : G.signature
  timeOrientationClosed : G.timeOrientation
  smoothMetricDefinedClosed : G.smoothMetricDefined

def LorentzMetricClosed (G : LorentzMetricPackage) : Prop :=
  G.signature ∧ G.timeOrientation ∧ G.smoothMetricDefined

theorem lorentz_metric_closed_from_evidence (G : LorentzMetricPackage)
    (E : LorentzMetricEvidence G) : LorentzMetricClosed G := by
  exact And.intro E.signatureClosed (And.intro E.timeOrientationClosed E.smoothMetricDefinedClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse