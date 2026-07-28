import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure MRISignalEquationPackage where
  excitation : Prop
  relaxation : Prop
  echoFormation : Prop

def MRISignalEquationClosed (S : MRISignalEquationPackage) : Prop :=
  S.excitation ∧ S.relaxation ∧ S.echoFormation

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse