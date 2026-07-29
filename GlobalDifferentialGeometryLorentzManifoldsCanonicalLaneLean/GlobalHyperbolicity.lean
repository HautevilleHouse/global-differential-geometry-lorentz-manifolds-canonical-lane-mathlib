import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure GlobalHyperbolicityPackage where
  stronglyCausal : Prop
  timeFunction : Prop
  cauchySurface : Prop
  globallyHyperbolicCausalStructure : Prop

structure GlobalHyperbolicityEvidence (G : GlobalHyperbolicityPackage) where
  stronglyCausalClosed : G.stronglyCausal
  timeFunctionClosed : G.timeFunction
  cauchySurfaceClosed : G.cauchySurface
  globallyHyperbolicCausalStructureClosed : G.globallyHyperbolicCausalStructure

def GlobalHyperbolicityClosed (G : GlobalHyperbolicityPackage) : Prop :=
  G.stronglyCausal ∧ G.timeFunction ∧ G.cauchySurface ∧ G.globallyHyperbolicCausalStructure

theorem global_hyperbolicity_closed_from_evidence (G : GlobalHyperbolicityPackage) (E : GlobalHyperbolicityEvidence G) : GlobalHyperbolicityClosed G := by
  exact And.intro E.stronglyCausalClosed (And.intro E.timeFunctionClosed (And.intro E.cauchySurfaceClosed E.globallyHyperbolicCausalStructureClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse