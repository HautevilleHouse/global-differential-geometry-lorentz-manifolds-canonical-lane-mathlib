import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure CausalStructurePackage where
  causalCurves : Type u
  timeFunctions : Type v
  globalHyperbolicity : Prop
  cauchySurface : Type w
  causalStructureSmooth : Prop
  globalHyperbolicityClosed : globalHyperbolicity
  causalStructureSmoothClosed : causalStructureSmooth

structure CausalStructureEvidence (C : CausalStructurePackage) where
  globalHyperbolicityClosed : C.globalHyperbolicity
  causalStructureSmoothClosed : C.causalStructureSmooth

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.globalHyperbolicity ∧ C.causalStructureSmooth

theorem causal_structure_closed_from_evidence
    (C : CausalStructurePackage) (E : CausalStructureEvidence C) :
    CausalStructureClosed C := by
  exact And.intro E.globalHyperbolicityClosed E.causalStructureSmoothClosed

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse