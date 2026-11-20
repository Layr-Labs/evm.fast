import InitECandidate.Solver.Improvements.ThirdMergeCore
import Guest.SoftwareAst
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace ThirdMergeIdentity
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
open ThirdMergeCore
def entry (d : Decl (BitVec 64)) : MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)
theorem union_entry : entry Guest.Software.guestFn_htab_union_into =
    (AcceptedIvvhCalleeCore.nm "htab_union_into", [(AcceptedIvvhCalleeCore.nm "dst", .one),
      (AcceptedIvvhCalleeCore.nm "src", .one)], unionBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem merge_entry : entry Guest.Software.guestFn_merge_tx_into_block =
    (AcceptedIvvhCalleeCore.nm "merge_tx_into_block", [], mergeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
#print axioms union_entry
#print axioms merge_entry
end ThirdMergeIdentity
