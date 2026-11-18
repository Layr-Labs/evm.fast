import InitECandidate.Solver.MemSafe.MptTightCost.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.MptTightCost
variable {σ : Type}
def body_node_write_ref := (declPair Guest.Software.guestFn_node_write_ref).2.2
def b_node_write_ref : Nat := 633825300796644232506397163859
theorem cost_node_write_ref : Cost σ guestCtx body_node_write_ref b_node_write_ref :=
 ConstCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_node_write_ref : CalleeCost σ guestCtx (nm "node_write_ref") b_node_write_ref := by
 have hc : ∃ rs, guestCode (nm "node_write_ref") = some ((declPair Guest.Software.guestFn_node_write_ref).2.1,body_node_write_ref,rs) :=
  declPair_valid (List.getElem_mem (n := 289) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc cost_node_write_ref
def table4 := ConstCost.Core.extend table3 (nm "node_write_ref") b_node_write_ref
theorem table4_sound : TblSound σ guestCtx table4 := ConstCost.Core.extend_sound table3_sound cc_node_write_ref
#print axioms cc_node_write_ref
end InitECandidate.Solver.MemSafe.MptTightCost
