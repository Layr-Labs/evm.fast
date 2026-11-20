import InitECandidate.Solver.Improvements.AcceptedMillerCore
import Guest.SoftwareAst

/-! Literal identity only; the renderer is copied from accepted Spec/Code.lean,
Apache-2.0. This is not a concrete table replay or a final certificate. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace AcceptedMillerIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open AcceptedMillerCore

def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem actual_entry : entry Guest.Software.guestFn_bn254_miller_raw =
    (AcceptedIvvhCalleeCore.nm "bn254_miller_raw", params, millerBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

#print axioms actual_entry
end AcceptedMillerIdentity
