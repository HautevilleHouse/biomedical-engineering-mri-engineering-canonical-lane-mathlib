import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

/-!
# MRI Signal Model Package

Models the Bloch equation and k-space signal formation.
-/

structure MriSignalModelPackage where
  magnetizationVector : Type u
  relaxCoeffs : Type v
  blochEquation : Prop
  kspaceTrajectory : Prop
  signalEquation : Prop

structure MriSignalModelEvidence (M : MriSignalModelPackage) where
  blochEquationClosed : M.blochEquation
  kspaceTrajectoryClosed : M.kspaceTrajectory
  signalEquationClosed : M.signalEquation

def MriSignalModelClosed (M : MriSignalModelPackage) : Prop :=
  M.blochEquation ∧ M.kspaceTrajectory ∧ M.signalEquation

theorem mri_signal_model_closed_from_evidence (M : MriSignalModelPackage) (E : MriSignalModelEvidence M) : MriSignalModelClosed M := by
  exact And.intro E.blochEquationClosed (And.intro E.kspaceTrajectoryClosed E.signalEquationClosed)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse