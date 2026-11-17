import InitECandidate.Solver.Improvements.ThirdFqOuterCore

/-! Actual guest function entries for the outer-loop reductions. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace ThirdFqOuterIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open ThirdFqOuterCore

def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem mul_entry : entry Guest.Software.guestFn_fq12_mul =
    (AcceptedIvvhCalleeCore.nm "fq12_mul", params false, body false, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem sqr_entry : entry Guest.Software.guestFn_fq12_sqr =
    (AcceptedIvvhCalleeCore.nm "fq12_sqr", params true, body true, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

#print axioms mul_entry
#print axioms sqr_entry
end ThirdFqOuterIdentity
