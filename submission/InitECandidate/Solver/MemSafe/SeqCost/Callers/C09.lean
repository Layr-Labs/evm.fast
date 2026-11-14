import InitECandidate.Solver.MemSafe.SeqCost.Callers.C08
import InitECandidate.Solver.MemSafe.InitCost.Callers.C40
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def joined0 := InitCost.Callers.table40
theorem joined0_sound : TblSound σ guestCtx joined0 := InitCost.Callers.table40_sound
def joined1 := SeqCost.Analyzer.extend joined0 (nm "keccak_f1600") b_keccak_f1600
theorem joined1_sound : TblSound σ guestCtx joined1 := SeqCost.Analyzer.extend_sound joined0_sound cc_keccak_f1600
def joined2 := SeqCost.Analyzer.extend joined1 (nm "keccak_absorb_block") b_keccak_absorb_block
theorem joined2_sound : TblSound σ guestCtx joined2 := SeqCost.Analyzer.extend_sound joined1_sound cc_keccak_absorb_block
def joined3 := SeqCost.Analyzer.extend joined2 (nm "keccak256") b_keccak256
theorem joined3_sound : TblSound σ guestCtx joined3 := SeqCost.Analyzer.extend_sound joined2_sound cc_keccak256
def joined4 := SeqCost.Analyzer.extend joined3 (nm "add_to_bloom") b_add_to_bloom
theorem joined4_sound : TblSound σ guestCtx joined4 := SeqCost.Analyzer.extend_sound joined3_sound cc_add_to_bloom
def joined5 := SeqCost.Analyzer.extend joined4 (nm "rlp_finish_list") b_rlp_finish_list
theorem joined5_sound : TblSound σ guestCtx joined5 := SeqCost.Analyzer.extend_sound joined4_sound cc_rlp_finish_list
def joined6 := SeqCost.Analyzer.extend joined5 (nm "logs_bloom") b_logs_bloom
theorem joined6_sound : TblSound σ guestCtx joined6 := SeqCost.Analyzer.extend_sound joined5_sound cc_logs_bloom
def joined7 := SeqCost.Analyzer.extend joined6 (nm "encode_logs") b_encode_logs
theorem joined7_sound : TblSound σ guestCtx joined7 := SeqCost.Analyzer.extend_sound joined6_sound cc_encode_logs
def joined8 := SeqCost.Analyzer.extend joined7 (nm "encode_receipt") b_encode_receipt
theorem joined8_sound : TblSound σ guestCtx joined8 := SeqCost.Analyzer.extend_sound joined7_sound cc_encode_receipt
def body_clear_account_preserving_balance := (declPair Guest.Software.guestFn_clear_account_preserving_balance).2.2
def b_clear_account_preserving_balance : Nat := 176266266204487691103097327564971208418515
theorem cost_clear_account_preserving_balance : Cost σ guestCtx body_clear_account_preserving_balance b_clear_account_preserving_balance :=
  SeqCost.Analyzer.analyze_sound joined8_sound (by cbv)
theorem cc_clear_account_preserving_balance : CalleeCost σ guestCtx (nm "clear_account_preserving_balance") b_clear_account_preserving_balance := by
  have hc : ∃ rs, guestCode (nm "clear_account_preserving_balance") = some ((declPair Guest.Software.guestFn_clear_account_preserving_balance).2.1,body_clear_account_preserving_balance,rs) :=
    declPair_valid (List.getElem_mem (n := 392) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_clear_account_preserving_balance
def table9 := SeqCost.Analyzer.extend joined8 (nm "clear_account_preserving_balance") b_clear_account_preserving_balance
theorem table9_sound : TblSound σ guestCtx table9 := SeqCost.Analyzer.extend_sound joined8_sound cc_clear_account_preserving_balance
#print axioms cc_clear_account_preserving_balance
end InitECandidate.Solver.MemSafe.SeqCost.Callers
