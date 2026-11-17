import InitECandidate.Solver.MemSafe.MptTightCost.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.MptTightCost
variable {σ : Type}
def body_node_hash_cached := (declPair Guest.Software.guestFn_node_hash_cached).2.2
def b_node_hash_cached : Nat := 633825300796644232094080303330
theorem cost_node_hash_cached : Cost σ guestCtx body_node_hash_cached b_node_hash_cached :=
 ConstCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_node_hash_cached : CalleeCost σ guestCtx (nm "node_hash_cached") b_node_hash_cached := by
 have hc : ∃ rs, guestCode (nm "node_hash_cached") = some ((declPair Guest.Software.guestFn_node_hash_cached).2.1,body_node_hash_cached,rs) :=
  declPair_valid (List.getElem_mem (n := 288) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc cost_node_hash_cached
def table2 := ConstCost.Core.extend table1 (nm "node_hash_cached") b_node_hash_cached
theorem table2_sound : TblSound σ guestCtx table2 := ConstCost.Core.extend_sound table1_sound cc_node_hash_cached
#print axioms cc_node_hash_cached
end InitECandidate.Solver.MemSafe.MptTightCost
