import canonicalLaneMathlib.AdmissibleClass

/-! # Pharmacokinetic Model Package -/

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure PharmacokineticModelPackage where
  compartmentCount : Nat
  rateConstants : Type
  initialConditions : Type
  differentialEquations : Prop
  solution : Prop
  parameterEstimation : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  differentialEquationsClosed : P.differentialEquations
  solutionClosed : P.solution
  parameterEstimationClosed : P.parameterEstimation

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.differentialEquations ∧ P.solution ∧ P.parameterEstimation

theorem pharmacokinetic_model_closed_from_evidence
    (P : PharmacokineticModelPackage) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact And.intro E.differentialEquationsClosed
    (And.intro E.solutionClosed E.parameterEstimationClosed)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse