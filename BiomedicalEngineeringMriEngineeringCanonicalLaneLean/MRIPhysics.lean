import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure MRIPhysicsPackage where
  staticFieldStrength : Prop
  rfPulseSequence : Prop
  gradientSystem : Prop
  signalGeneration : Prop
  fieldUniformity : Prop

structure MRIPhysicsEvidence (P : MRIPhysicsPackage) where
  staticFieldStrengthClosed : P.staticFieldStrength
  rfPulseSequenceClosed : P.rfPulseSequence
  gradientSystemClosed : P.gradientSystem
  signalGenerationClosed : P.signalGeneration
  fieldUniformityClosed : P.fieldUniformity

def MRIPhysicsClosed (P : MRIPhysicsPackage) : Prop :=
  P.staticFieldStrength ∧ P.rfPulseSequence ∧ P.gradientSystem ∧ P.signalGeneration ∧ P.fieldUniformity

theorem mri_physics_closed_from_evidence (P : MRIPhysicsPackage) (E : MRIPhysicsEvidence P) : MRIPhysicsClosed P :=
  And.intro E.staticFieldStrengthClosed (And.intro E.rfPulseSequenceClosed (And.intro E.gradientSystemClosed (And.intro E.signalGenerationClosed E.fieldUniformityClosed)))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse