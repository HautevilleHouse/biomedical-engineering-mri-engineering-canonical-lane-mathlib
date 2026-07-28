import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  compartmentCount : Nat
  rateConstants : Type
  initialCondition : Prop
  wellStirredAssumption : Prop
  linearDynamics : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  rateConstantsDetermined : C.rateConstants
  initialConditionClosed : C.initialCondition
  wellStirredAssumptionClosed : C.wellStirredAssumption
  linearDynamicsClosed : C.linearDynamics

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.rateConstants ∧
  C.initialCondition ∧
  C.wellStirredAssumption ∧
  C.linearDynamics

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.rateConstantsDetermined
    (And.intro E.initialConditionClosed
      (And.intro E.wellStirredAssumptionClosed E.linearDynamicsClosed))

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse