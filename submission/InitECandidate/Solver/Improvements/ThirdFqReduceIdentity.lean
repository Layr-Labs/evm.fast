import InitECandidate.Solver.Improvements.ThirdFqReduceCore
import Guest.SoftwareAst

/-! Literal identity only. The entry renderer follows accepted Spec/Code.lean,
Apache-2.0. The concrete cost table is a separate proof obligation. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace ThirdFqReduceIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open ThirdFqReduceCore

def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem actual_entry : entry Guest.Software.guestFn_fq12_reduce =
    (AcceptedIvvhCalleeCore.nm "fq12_reduce", params, reduceBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

#print axioms actual_entry
end ThirdFqReduceIdentity
