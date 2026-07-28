import HautevilleHouse.BiomedicalEngineeringMriEngineeringCanonicalLaneLean.AdmissibleClass

/-!
# MRI Physics Package
This package models the basic physics of MRI: static magnetic field, gradient fields,
RF pulses, and relaxation processes (T1, T2).
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure MriPhysicsPackage where
  boFieldStrength : ℝ
  gradientFieldStrength : ℝ
  rfPulseFrequency : ℝ
  t1RelaxationTime : ℝ
  t2RelaxationTime : ℝ
  spinDensity : ℝ → ℝ
  t1Weighting : Prop
  t2Weighting : Prop
  protonDensityWeighting : Prop

structure MriPhysicsEvidence (P : MriPhysicsPackage) where
  boFieldStrengthValid : P.boFieldStrength > 0
  gradientFieldStrengthValid : P.gradientFieldStrength > 0
  rfPulseFrequencyValid : P.rfPulseFrequency > 0
  t1RelaxationTimePositive : P.t1RelaxationTime > 0
  t2RelaxationTimePositive : P.t2RelaxationTime > 0
  weightingDetermined : (P.t1Weighting ∨ P.t2Weighting ∨ P.protonDensityWeighting)

def MriPhysicsClosed (P : MriPhysicsPackage) : Prop :=
  P.boFieldStrength > 0 ∧ P.gradientFieldStrength > 0 ∧ P.rfPulseFrequency > 0 ∧
  P.t1RelaxationTime > 0 ∧ P.t2RelaxationTime > 0 ∧
  (P.t1Weighting ∨ P.t2Weighting ∨ P.protonDensityWeighting)

theorem mri_physics_closed_from_evidence (P : MriPhysicsPackage) (E : MriPhysicsEvidence P) :
    MriPhysicsClosed P := by
  exact And.intro E.boFieldStrengthValid
    (And.intro E.gradientFieldStrengthValid
      (And.intro E.rfPulseFrequencyValid
        (And.intro E.t1RelaxationTimePositive
          (And.intro E.t2RelaxationTimePositive E.weightingDetermined))))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse