import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.LorentzMetric

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure GlobalCausalityPackage where
  causalStructure : Type u
  timeFunction : Type v
  causalCurveClassification : Prop
  stableCausality : Prop
  globalHyperbolicity : Prop
  cauchySurfaceExistence : Prop
  causalCompletionExistence : Prop

structure GlobalCausalityEvidence (C : GlobalCausalityPackage) where
  causalCurveClassificationClosed : C.causalCurveClassification
  stableCausalityClosed : C.stableCausality
  globalHyperbolicityClosed : C.globalHyperbolicity
  cauchySurfaceExistenceClosed : C.cauchySurfaceExistence
  causalCompletionExistenceClosed : C.causalCompletionExistence

def GlobalCausalityClosed (C : GlobalCausalityPackage) : Prop :=
  C.causalCurveClassification ∧ C.stableCausality ∧ C.globalHyperbolicity ∧ C.cauchySurfaceExistence ∧ C.causalCompletionExistence

theorem global_causality_closed_from_evidence (C : GlobalCausalityPackage) (E : GlobalCausalityEvidence C) :
    GlobalCausalityClosed C := by
  exact And.intro E.causalCurveClassificationClosed (And.intro E.stableCausalityClosed (And.intro E.globalHyperbolicityClosed (And.intro E.cauchySurfaceExistenceClosed E.causalCompletionExistenceClosed)))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse