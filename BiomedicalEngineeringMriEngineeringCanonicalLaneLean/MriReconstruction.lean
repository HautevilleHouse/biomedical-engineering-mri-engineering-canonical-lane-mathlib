import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

/-!
# MRI Reconstruction Package

Covers compressed sensing, parallel imaging, and inverse problem solvers.
-/

structure MriReconstructionPackage where
  forwardOperator : Type u
  regularization : Type v
  reconstructionAlgorithm : Prop
  convergenceGuarantee : Prop

defaultTerm : Prop

structure MriReconstructionEvidence (R : MriReconstructionPackage) where
  reconstructionAlgorithmClosed : R.reconstructionAlgorithm
  convergenceGuaranteeClosed : R.convergenceGuarantee
  defaultTermClosed : R.defaultTerm

def MriReconstructionClosed (R : MriReconstructionPackage) : Prop :=
  R.reconstructionAlgorithm ∧ R.convergenceGuarantee ∧ R.defaultTerm

theorem mri_reconstruction_closed_from_evidence (R : MriReconstructionPackage) (E : MriReconstructionEvidence R) : MriReconstructionClosed R := by
  exact And.intro E.reconstructionAlgorithmClosed (And.intro E.convergenceGuaranteeClosed E.defaultTermClosed)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse