import canonicalLaneMathlib.AdmissibleClass
import GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

def ConstrainedLorentzClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lorentz_endgame (A : AdmissibleClass) :
    ConstrainedLorentzClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse