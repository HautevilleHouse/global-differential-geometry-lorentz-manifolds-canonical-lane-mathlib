import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure LorentzManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothAtlas : Prop
  lorentzMetric : carrier → carrier → ℝ
  signatureCondition : ∀ x : carrier, ∃ (v w : carrier), lorentzMetric v w = 0

structure LorentzAdmittedObject where
  manifold : LorentzManifold
  timeOrientable : Prop
  globallyHyperbolic : Prop
  cauchySurface : Type
  cauchyTopology : TopologicalSpace cauchySurface
  cauchyDiffeomorphicToR3 : Prop

structure LorentzEndgameState where
  object : LorentzAdmittedObject

def LorentzWitnessClosed (O : LorentzAdmittedObject) : Prop :=
  O.cauchyDiffeomorphicToR3

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse