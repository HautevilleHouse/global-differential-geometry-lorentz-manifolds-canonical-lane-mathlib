import canonicalLaneMathlib.AdmissibleClass
import GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.LorentzAdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LorentzWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.cauchyDiffeomorphicToR3

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse