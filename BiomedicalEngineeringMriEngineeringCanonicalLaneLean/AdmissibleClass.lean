import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure MRIAdmittedObject where
  patientPopulation : Type
  imagingProtocol : Type
  signalModel : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : MRIAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse