import InitECandidate.Solver.MemSafe.FqCost.Retable.S024
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace KzgSupport
def fullBody := (declPair Guest.Software.guestFn_kzg_verify).2.2
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_fp2_copy : CalleeCost σ guestCtx (nm "fp2_copy") 137438953509 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_fp2_set_one : CalleeCost σ guestCtx (nm "fp2_set_one") 0 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_kzg_neg_scalar : CalleeCost σ guestCtx (nm "kzg_neg_scalar") 18446744073709551624 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_g2_mul : CalleeCost σ guestCtx (nm "g2_mul") 30423614562569978169555563848088 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_g2_add : CalleeCost σ guestCtx (nm "g2_add") 1236950587239 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_memcpy : CalleeCost σ guestCtx (nm "memcpy") 137438953508 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_g1_mul : CalleeCost σ guestCtx (nm "g1_mul") 5070602453855073098082981776267 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_g1_add : CalleeCost σ guestCtx (nm "g1_add") 274877908948 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_g2_neg : CalleeCost σ guestCtx (nm "g2_neg") 274877907027 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_fp12_set_one : CalleeCost σ guestCtx (nm "fp12_set_one") 412316860532 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_pair_accumulate : CalleeCost σ guestCtx (nm "pair_accumulate") 38029518498821546494170823492791 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_fp12_final_exp : CalleeCost σ guestCtx (nm "fp12_final_exp") 76059037278310304076292087931554 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_fp12_is_one : CalleeCost σ guestCtx (nm "fp12_is_one") 549755814047 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := FqCost.Retable.table24_sound _ _ (by cbv)
theorem full_cost : Cost σ guestCtx fullBody 187612291292415341823993112443627 := by
 conv in fullBody => cbv
 exact (cost_decCall (cc_heap_mark (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_fp2_copy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp2_copy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp2_set_one (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_kzg_neg_scalar (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_g2_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp2_copy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp2_copy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp2_set_one (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_g2_add (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_store _ _) (cost_seq (cost_call (Bh := 0) (cc_kzg_neg_scalar (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_g1_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_g1_add (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_g2_neg (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp12_set_one (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_pair_accumulate (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_pair_accumulate (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fp12_final_exp (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_decCall (cc_fp12_is_one (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))))))))))))))))))))))))))
end KzgSupport
def body_kzg_verify := (declPair Guest.Software.guestFn_kzg_verify).2.2
def b_kzg_verify : Nat := 187612291292415341823993112443627
theorem cost_kzg_verify : Cost σ guestCtx body_kzg_verify b_kzg_verify := KzgSupport.full_cost
theorem cc_kzg_verify : CalleeCost σ guestCtx (nm "kzg_verify") b_kzg_verify := by
 have hc : guestCode (nm "kzg_verify") = some ((declPair Guest.Software.guestFn_kzg_verify).2.1,body_kzg_verify,(fnEntry Guest.Software.guestFn_kzg_verify).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 800) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_kzg_verify
def table25 := FqCost.CombCore.extend table24 (nm "kzg_verify") b_kzg_verify
theorem table25_sound : TblSound σ guestCtx table25 := FqCost.CombCore.extend_sound table24_sound cc_kzg_verify
#print axioms cc_kzg_verify
end InitECandidate.Solver.MemSafe.FqCost.Retable
