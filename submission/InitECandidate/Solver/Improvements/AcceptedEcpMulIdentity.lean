import InitECandidate.Solver.Improvements.AcceptedEcpMulCore
import Guest.SoftwareAst

/-! Literal identity against the unchanged guest AST. Renderer follows
accepted Spec/Code.lean (Apache-2.0). No callee-table replay is claimed. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace AcceptedEcpMulIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open AcceptedEcpMulCore

def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem actual_entry : entry Guest.Software.guestFn_ecp_mul =
    (AcceptedIvvhCalleeCore.nm "ecp_mul", params, body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

#print axioms actual_entry
end AcceptedEcpMulIdentity
