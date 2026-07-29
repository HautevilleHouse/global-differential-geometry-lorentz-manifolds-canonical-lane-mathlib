import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure CurvatureInvariantsPackage where
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  weylTensor : Type x
  einsteinTensor : Type y
  riemannTensorLawful : Prop
  ricciTensorContracted : Prop
  weylTensorComputed : Prop
  einsteinTensorComputed : Prop
  riemannTensorLawfulClosed : riemannTensorLawful
  ricciTensorContractedClosed : ricciTensorContracted
  weylTensorComputedClosed : weylTensorComputed
  einsteinTensorComputedClosed : einsteinTensorComputed

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  riemannTensorLawfulClosed : C.riemannTensorLawful
  ricciTensorContractedClosed : C.ricciTensorContracted
  weylTensorComputedClosed : C.weylTensorComputed
  einsteinTensorComputedClosed : C.einsteinTensorComputed

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.riemannTensorLawful ∧ C.ricciTensorContracted ∧
  C.weylTensorComputed ∧ C.einsteinTensorComputed

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.riemannTensorLawfulClosed
    (And.intro E.ricciTensorContractedClosed
      (And.intro E.weylTensorComputedClosed E.einsteinTensorComputedClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse