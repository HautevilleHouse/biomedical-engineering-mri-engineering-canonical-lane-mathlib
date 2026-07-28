import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

/-!
# MRI Contrast Mechanisms Package

Models T1, T2, diffusion, perfusion, and BOLD contrast.
-/

structure MriContrastMechanismsPackage where
  t1Relaxation : Prop
  t2Relaxation : Prop
  diffusionModel : Prop
  perfusionModel : Prop
  boldEffect : Prop

structure MriContrastMechanismsEvidence (C : MriContrastMechanismsPackage) where
  t1RelaxationClosed : C.t1Relaxation
  t2RelaxationClosed : C.t2Relaxation
  diffusionModelClosed : C.diffusionModel
  perfusionModelClosed : C.perfusionModel
  boldEffectClosed : C.boldEffect

def MriContrastMechanismsClosed (C : MriContrastMechanismsPackage) : Prop :=
  C.t1Relaxation ∧ C.t2Relaxation ∧ C.diffusionModel ∧ C.perfusionModel ∧ C.boldEffect

theorem mri_contrast_mechanisms_closed_from_evidence (C : MriContrastMechanismsPackage) (E : MriContrastMechanismsEvidence C) : MriContrastMechanismsClosed C := by
  exact And.intro E.t1RelaxationClosed (And.intro E.t2RelaxationClosed (And.intro E.diffusionModelClosed (And.intro E.perfusionModelClosed E.boldEffectClosed)))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse