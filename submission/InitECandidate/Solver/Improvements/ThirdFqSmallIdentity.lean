import InitECandidate.Solver.Improvements.ThirdFqSmallCore
import Guest.SoftwareAst

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace ThirdFqSmallIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open ThirdFqSmallCore
def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)
theorem actual_entry : entry Guest.Software.guestFn_fq_mul_small =
    (AcceptedIvvhCalleeCore.nm "fq_mul_small", params, body, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv
#print axioms actual_entry
end ThirdFqSmallIdentity
