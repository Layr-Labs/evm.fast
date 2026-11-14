import InitECandidate.Solver.MemSafe.FqCost.Retable.S038
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace EcpDoubleSupport
def fullBody := (declPair Guest.Software.guestFn_ecp_double).2.2
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_fe_sqr : CalleeCost σ guestCtx (nm "fe_sqr") 687194808553 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_fe_mul_small : CalleeCost σ guestCtx (nm "fe_mul_small") 646392579252 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_fe_mul : CalleeCost σ guestCtx (nm "fe_mul") 343597404156 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_fe_sub : CalleeCost σ guestCtx (nm "fe_sub") 5368709130 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_memcpy : CalleeCost σ guestCtx (nm "memcpy") 137438953508 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := FqCost.Retable.table38_sound _ _ (by cbv)
theorem full_cost : Cost σ guestCtx fullBody 9460739526776 := by
 conv in fullBody => cbv
 exact (cost_dec (cost_decCall (cc_heap_mark (σ := σ)) (cost_dec (cost_dec (cost_dec (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sqr (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_sub (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_fe_mul_small (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_memcpy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))))))))))))))))))))))))))))))))
end EcpDoubleSupport
def body_ecp_double := (declPair Guest.Software.guestFn_ecp_double).2.2
def b_ecp_double : Nat := 9460739526776
theorem cost_ecp_double : Cost σ guestCtx body_ecp_double b_ecp_double := EcpDoubleSupport.full_cost
theorem cc_ecp_double : CalleeCost σ guestCtx (nm "ecp_double") b_ecp_double := by
 have hc : guestCode (nm "ecp_double") = some ((declPair Guest.Software.guestFn_ecp_double).2.1,body_ecp_double,(fnEntry Guest.Software.guestFn_ecp_double).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 673) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ecp_double
def table39 := FqCost.CombCore.extend table38 (nm "ecp_double") b_ecp_double
theorem table39_sound : TblSound σ guestCtx table39 := FqCost.CombCore.extend_sound table38_sound cc_ecp_double
#print axioms cc_ecp_double
end InitECandidate.Solver.MemSafe.FqCost.Retable
