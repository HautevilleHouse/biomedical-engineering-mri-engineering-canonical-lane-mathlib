import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

/-!
# MRI Safety Assessment Package

Evaluates specific absorption rate (SAR), gradient heating, and acoustic noise.
-/

structure MriSafetyAssessmentPackage where
  sarModel : Prop
  gradientHeatingModel : Prop
  acousticNoiseModel : Prop
  safetyLimitsSatisfied : Prop

structure MriSafetyAssessmentEvidence (S : MriSafetyAssessmentPackage) where
  sarModelClosed : S.sarModel
  gradientHeatingModelClosed : S.gradientHeatingModel
  acousticNoiseModelClosed : S.acousticNoiseModel
  safetyLimitsSatisfiedClosed : S.safetyLimitsSatisfied

def MriSafetyAssessmentClosed (S : MriSafetyAssessmentPackage) : Prop :=
  S.sarModel ∧ S.gradientHeatingModel ∧ S.acousticNoiseModel ∧ S.safetyLimitsSatisfied

theorem mri_safety_assessment_closed_from_evidence (S : MriSafetyAssessmentPackage) (E : MriSafetyAssessmentEvidence S) : MriSafetyAssessmentClosed S := by
  exact And.intro E.sarModelClosed (And.intro E.gradientHeatingModelClosed (And.intro E.acousticNoiseModelClosed E.safetyLimitsSatisfiedClosed))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse