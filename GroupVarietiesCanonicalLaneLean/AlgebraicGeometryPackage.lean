import HautevilleHouse.GroupVarietiesCanonicalLaneLean.GroupStructurePackage

namespace HautevilleHouse
namespace GroupVarietiesCanonicalLaneLean

structure AlgebraicGeometryPackage (G : GroupLawPackage) where
  varietyType : Type u
  topology : TopologicalSpace varietyType
  structureSheaf : Type v
  groupSchemeMorphism : Type w
  varietySmooth : Prop
  groupCompatible : Prop

def AlgebraicGeometryClosed {G : GroupLawPackage} (A : AlgebraicGeometryPackage G) : Prop :=
  A.varietySmooth ∧ A.groupCompatible

structure AlgebraicGeometryEvidence {G : GroupLawPackage} (A : AlgebraicGeometryPackage G) where
  varietySmoothClosed : A.varietySmooth
  groupCompatibleClosed : A.groupCompatible

theorem algebraic_geometry_closed_from_evidence
    {G : GroupLawPackage} (A : AlgebraicGeometryPackage G) (E : AlgebraicGeometryEvidence A) :
    AlgebraicGeometryClosed A := by
  exact And.intro E.varietySmoothClosed E.groupCompatibleClosed

end GroupVarietiesCanonicalLaneLean
end HautevilleHouse