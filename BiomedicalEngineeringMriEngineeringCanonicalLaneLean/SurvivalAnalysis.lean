import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  coxProportionalHazards : Prop
  kaplanMeierEstimator : Prop
  logRankTest : Prop
  censoringMechanism : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  coxProportionalHazardsClosed : S.coxProportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  logRankTestClosed : S.logRankTest
  censoringMechanismClosed : S.censoringMechanism

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.coxProportionalHazards ∧ S.kaplanMeierEstimator ∧
  S.logRankTest ∧ S.censoringMechanism

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.coxProportionalHazardsClosed
    (And.intro E.kaplanMeierEstimatorClosed
      (And.intro E.logRankTestClosed E.censoringMechanismClosed))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse