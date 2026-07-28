import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMriEngineeringCanonicalLaneLean

structure DiffusionTensorPackage where
  tensorComputed : Prop
  fractionalAnisotropy : Prop
  mD : Prop

def DiffusionTensorClosed (D : DiffusionTensorPackage) : Prop :=
  D.tensorComputed ∧ D.fractionalAnisotropy ∧ D.mD

end BiomedicalEngineeringMriEngineeringCanonicalLaneLean
end HautevilleHouse