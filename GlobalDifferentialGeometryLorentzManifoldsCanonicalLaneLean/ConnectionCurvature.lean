import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure ConnectionCurvaturePackage where
  leviCivitaConnection : Prop
  riemannCurvatureTensor : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  einsteinTensor : Prop

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  riemannCurvatureTensorClosed : C.riemannCurvatureTensor
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  einsteinTensorClosed : C.einsteinTensor

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage) : Prop :=
  C.leviCivitaConnection ∧ C.riemannCurvatureTensor ∧ C.ricciCurvature ∧ C.scalarCurvature ∧ C.einsteinTensor

theorem connection_curvature_closed_from_evidence (C : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence C) : ConnectionCurvatureClosed C := by
  exact And.intro E.leviCivitaConnectionClosed (And.intro E.riemannCurvatureTensorClosed (And.intro E.ricciCurvatureClosed (And.intro E.scalarCurvatureClosed E.einsteinTensorClosed)))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse