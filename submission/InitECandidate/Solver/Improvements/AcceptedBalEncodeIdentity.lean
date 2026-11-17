import InitECandidate.Solver.Improvements.AcceptedBalEncodeCore
import Guest.SoftwareAst

/-! Independent literal identity check for the stronger encoder proof.
The entry renderer is copied from accepted Spec/Code.lean, Apache-2.0.
This checks syntax identity only, not the concrete callee table or certificate. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace AcceptedBalEncodeIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open AcceptedBalEncodeCore

def entry (d : Flapjack.Decl (BitVec 64)) :
    MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem actual_entry : entry Guest.Software.guestFn_bal_encode_account =
    (AcceptedIvvhCalleeCore.nm "bal_encode_account", balParams, balBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

#print axioms actual_entry
end AcceptedBalEncodeIdentity
