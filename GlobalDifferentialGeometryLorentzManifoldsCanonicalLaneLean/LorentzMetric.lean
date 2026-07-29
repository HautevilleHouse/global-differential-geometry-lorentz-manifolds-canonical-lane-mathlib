import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure LorentzMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  metricTensor : Type w
  signature : (Nat, Nat, Nat)  -- (plus, minus, zero)
  timeOrientation : Prop
  metricSmooth : Prop
  signatureCondition : signature = (1, 3, 0)
  timeOrientationClosed : timeOrientation
  metricSmoothClosed : metricSmooth

structure LorentzMetricEvidence (G : LorentzMetricPackage) where
  timeOrientationClosed : G.timeOrientation
  metricSmoothClosed : G.metricSmooth
  signatureConditionClosed : G.signatureCondition = (1, 3, 0)

def LorentzMetricClosed (G : LorentzMetricPackage) : Prop :=
  G.timeOrientation ∧ G.metricSmooth ∧ G.signatureCondition = (1, 3, 0)

theorem lorentz_metric_closed_from_evidence
    (G : LorentzMetricPackage) (E : LorentzMetricEvidence G) :
    LorentzMetricClosed G := by
  exact And.intro E.timeOrientationClosed
    (And.intro E.metricSmoothClosed E.signatureConditionClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse