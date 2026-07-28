import canonicalLaneMathlib.AdmissibleClass

/-! # MR Image Formation Package -/

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure MrImageFormationPackage where
  magneticField : Type
  gradientSystem : Type
  rfPulse : Type
  signalEquation : Prop
  kSpaceTrajectory : Prop
  imageReconstruction : Prop

structure MrImageFormationEvidence (P : MrImageFormationPackage) where
  signalEquationClosed : P.signalEquation
  kSpaceTrajectoryClosed : P.kSpaceTrajectory
  imageReconstructionClosed : P.imageReconstruction

def MrImageFormationClosed (P : MrImageFormationPackage) : Prop :=
  P.signalEquation ∧ P.kSpaceTrajectory ∧ P.imageReconstruction

theorem mr_image_formation_closed_from_evidence
    (P : MrImageFormationPackage) (E : MrImageFormationEvidence P) :
    MrImageFormationClosed P := by
  exact And.intro E.signalEquationClosed
    (And.intro E.kSpaceTrajectoryClosed E.imageReconstructionClosed)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse