import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.LorentzMetric

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure ConnectionTheoryPackage {G : LorentzMetricPackage} where
  leviCivitaConnection : Type u
  parallelTransport : Type v
  geodesicStructure : Type w
  connectionMetricCompatible : Prop
  connectionTorsionFree : Prop
  geodesicExistence : Prop

structure ConnectionTheoryEvidence {G : LorentzMetricPackage} (C : ConnectionTheoryPackage G) where
  connectionMetricCompatibleClosed : C.connectionMetricCompatible
  connectionTorsionFreeClosed : C.connectionTorsionFree
  geodesicExistenceClosed : C.geodesicExistence

def ConnectionTheoryClosed {G : LorentzMetricPackage} (C : ConnectionTheoryPackage G) : Prop :=
  C.connectionMetricCompatible ∧ C.connectionTorsionFree ∧ C.geodesicExistence

theorem connection_theory_closed_from_evidence {G : LorentzMetricPackage} (C : ConnectionTheoryPackage G) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.connectionMetricCompatibleClosed (And.intro E.connectionTorsionFreeClosed E.geodesicExistenceClosed)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse