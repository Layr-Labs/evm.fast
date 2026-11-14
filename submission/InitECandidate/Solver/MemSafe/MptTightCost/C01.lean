import InitECandidate.Solver.MemSafe.ConstCost.Core
import InitECandidate.Solver.MemSafe.SeqCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.MptTightCost
variable {σ : Type}
def table0 := SeqCost.Callers.table10
theorem table0_sound : TblSound σ guestCtx table0 := SeqCost.Callers.table10_sound
def body_nibble_list_to_compact := (declPair Guest.Software.guestFn_nibble_list_to_compact).2.2
def b_nibble_list_to_compact : Nat := 34359738377
theorem cost_nibble_list_to_compact : Cost σ guestCtx body_nibble_list_to_compact b_nibble_list_to_compact :=
 ConstCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_nibble_list_to_compact : CalleeCost σ guestCtx (nm "nibble_list_to_compact") b_nibble_list_to_compact := by
 have hc : ∃ rs, guestCode (nm "nibble_list_to_compact") = some ((declPair Guest.Software.guestFn_nibble_list_to_compact).2.1,body_nibble_list_to_compact,rs) :=
  declPair_valid (List.getElem_mem (n := 250) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc cost_nibble_list_to_compact
def table1 := ConstCost.Core.extend table0 (nm "nibble_list_to_compact") b_nibble_list_to_compact
theorem table1_sound : TblSound σ guestCtx table1 := ConstCost.Core.extend_sound table0_sound cc_nibble_list_to_compact
#print axioms cc_nibble_list_to_compact
end InitECandidate.Solver.MemSafe.MptTightCost
