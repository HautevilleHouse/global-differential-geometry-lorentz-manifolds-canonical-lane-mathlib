import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean

structure PositiveMassTheoremPackage where
  admMassDefined : Prop
  dominantEnergyCondition : Prop
  massNonnegative : Prop
  rigidityCase : Prop

structure PositiveMassTheoremEvidence (P : PositiveMassTheoremPackage) where
  admMassDefinedClosed : P.admMassDefined
  dominantEnergyConditionClosed : P.dominantEnergyCondition
  massNonnegativeClosed : P.massNonnegative
  rigidityCaseClosed : P.rigidityCase

def PositiveMassTheoremClosed (P : PositiveMassTheoremPackage) : Prop :=
  P.admMassDefined ∧ P.dominantEnergyCondition ∧ P.massNonnegative ∧ P.rigidityCase

theorem positive_mass_theorem_closed_from_evidence (P : PositiveMassTheoremPackage) (E : PositiveMassTheoremEvidence P) : PositiveMassTheoremClosed P := by
  exact And.intro E.admMassDefinedClosed (And.intro E.dominantEnergyConditionClosed (And.intro E.massNonnegativeClosed E.rigidityCaseClosed))

end GlobalDifferentialGeometryLorentzManifoldsCanonicalLaneLean
end HautevilleHouse