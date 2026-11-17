import InitECandidate.Solver.MemSafe.FqCost.Retable.S039
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace TypedSupport040
def fullBody := (declPair Guest.Software.guestFn_ecp_add).2.2
theorem cc_fe_is_zero : CalleeCost σ guestCtx (nm "fe_is_zero") 34359738378 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_memcpy : CalleeCost σ guestCtx (nm "memcpy") 137438953508 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_fe_mul : CalleeCost σ guestCtx (nm "fe_mul") 343597404156 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_fe_eq : CalleeCost σ guestCtx (nm "fe_eq") 137438953509 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_ecp_double : CalleeCost σ guestCtx (nm "ecp_double") 9460739526776 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_ecp_set_inf : CalleeCost σ guestCtx (nm "ecp_set_inf") 412316860530 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_fe_sub : CalleeCost σ guestCtx (nm "fe_sub") 5368709130 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_fe_sqr : CalleeCost σ guestCtx (nm "fe_sqr") 687194808553 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem cc_fe_mul_small : CalleeCost σ guestCtx (nm "fe_mul_small") 646392579252 := FqCost.Retable.table39_sound _ _ (by cbv)
theorem full_cost : Cost σ guestCtx fullBody 17080011839701 := by
 conv in fullBody => cbv
 exact (cost_dec (cost_decCall (cc_fe_is_zero (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_decCall (cc_fe_is_zero (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_decCall (cc_heap_mark (σ := σ)) (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_decCall (cc_fe_eq (σ := σ)) (cost_seq (cost_ite (cost_decCall (cc_fe_eq (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_ecp_double (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_seq (cost_call (Bh := 0) (cc_ecp_set_inf (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _))))) cost_skip) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _))))))))))))))))))))))))))))))))))))))))))))))))))))
end TypedSupport040
def body_ecp_add := (declPair Guest.Software.guestFn_ecp_add).2.2
def b_ecp_add : Nat := 17080011839701
theorem cost_ecp_add : Cost σ guestCtx body_ecp_add b_ecp_add := TypedSupport040.full_cost
theorem cc_ecp_add : CalleeCost σ guestCtx (nm "ecp_add") b_ecp_add := by
 have hc : guestCode (nm "ecp_add") = some ((declPair Guest.Software.guestFn_ecp_add).2.1,body_ecp_add,(fnEntry Guest.Software.guestFn_ecp_add).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 674) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ecp_add
def table40 := FqCost.CombCore.extend table39 (nm "ecp_add") b_ecp_add
theorem table40_sound : TblSound σ guestCtx table40 := FqCost.CombCore.extend_sound table39_sound cc_ecp_add
#print axioms cc_ecp_add
end InitECandidate.Solver.MemSafe.FqCost.Retable
