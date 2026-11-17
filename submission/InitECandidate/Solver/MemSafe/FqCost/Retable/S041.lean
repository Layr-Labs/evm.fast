import InitECandidate.Solver.MemSafe.FqCost.Retable.S040
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace TypedSupport041
def fullBody := (declPair Guest.Software.guestFn_ecp_linefunc).2.2
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_set_zero : CalleeCost σ guestCtx (nm "fe_set_zero") 137438953509 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_mul : CalleeCost σ guestCtx (nm "fe_mul") 343597404156 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_sub : CalleeCost σ guestCtx (nm "fe_sub") 5368709130 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_is_zero : CalleeCost σ guestCtx (nm "fe_is_zero") 34359738378 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_sqr : CalleeCost σ guestCtx (nm "fe_sqr") 687194808553 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_fe_mul_small : CalleeCost σ guestCtx (nm "fe_mul_small") 646392579252 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := FqCost.Retable.table40_sound _ _ (by cbv)
theorem full_cost : Cost σ guestCtx fullBody 6542309243528 := by
 conv in fullBody => cbv
 exact (cost_dec (cost_decCall (cc_heap_mark (σ := σ)) (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_fe_set_zero (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_call (Bh := 0) (cc_fe_set_zero (σ := σ)) (by intro r hid hv hp h; cases h))) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)))))))) (cost_decCall (cc_fe_is_zero (σ := σ)) (cost_seq (cost_ite (cost_decCall (cc_fe_is_zero (σ := σ)) (cost_ite (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h))))) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))) cost_skip) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))))))))))))))))))))))))))
end TypedSupport041
def body_ecp_linefunc := (declPair Guest.Software.guestFn_ecp_linefunc).2.2
def b_ecp_linefunc : Nat := 6542309243528
theorem cost_ecp_linefunc : Cost σ guestCtx body_ecp_linefunc b_ecp_linefunc := TypedSupport041.full_cost
theorem cc_ecp_linefunc : CalleeCost σ guestCtx (nm "ecp_linefunc") b_ecp_linefunc := by
 have hc : guestCode (nm "ecp_linefunc") = some ((declPair Guest.Software.guestFn_ecp_linefunc).2.1,body_ecp_linefunc,(fnEntry Guest.Software.guestFn_ecp_linefunc).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 676) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ecp_linefunc
def table41 := FqCost.CombCore.extend table40 (nm "ecp_linefunc") b_ecp_linefunc
theorem table41_sound : TblSound σ guestCtx table41 := FqCost.CombCore.extend_sound table40_sound cc_ecp_linefunc
#print axioms cc_ecp_linefunc
end InitECandidate.Solver.MemSafe.FqCost.Retable
