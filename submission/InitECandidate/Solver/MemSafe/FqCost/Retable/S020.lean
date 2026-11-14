import InitECandidate.Solver.MemSafe.FqCost.Retable.S019
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace G1MsmSupport
def loops : ProgHOL 64 → List (ExpHOL 64 × ProgHOL 64)
 | .while c b => (c,b)::loops b
 | .seq a b => loops a++loops b
 | .dec _ _ _ b => loops b
 | .decCall _ _ _ _ b => loops b
 | .ite _ a b => loops a++loops b
 | _ => []
def fullBody := (declPair Guest.Software.guestFn_bls_g1_msm_exec).2.2
def outer := ((loops fullBody)[0]?).getD (.const 0,.skip)
def tailAfter : ProgHOL 64 → Option (ProgHOL 64)
 | .seq (.while _ _) rest => some rest
 | .seq a b => (tailAfter a).orElse (fun _ => tailAfter b)
 | .dec _ _ _ b => tailAfter b
 | .decCall _ _ _ _ b => tailAfter b
 | _ => none
def tail := (tailAfter fullBody).getD .skip
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := Wire.calleeCost_guest rfl
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := Wire.calleeCost_guest rfl
theorem cc_g1_decode : CalleeCost σ guestCtx (nm "g1_decode") 68719477143 := BlsCost.Callees.cc_g1_decode
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := Wire.calleeCost_guest rfl
theorem cc_g1_subgroup_check : CalleeCost σ guestCtx (nm "g1_subgroup_check") 5070602453855073098082981776275 := BlsCost.Callees.cc_g1_subgroup_check
theorem cc_u256_from_be : CalleeCost σ guestCtx (nm "u256_from_be") 18446744073709551621 := Wire.calleeCost_guest rfl
theorem cc_g1_mul : CalleeCost σ guestCtx (nm "g1_mul") 5070602453855073098082981776267 := BlsCost.Callees.cc_g1_mul
theorem cc_g1_copy : CalleeCost σ guestCtx (nm "g1_copy") 137438953509 := BlsCost.Callees.cc_g1_copy
theorem cc_g1_add : CalleeCost σ guestCtx (nm "g1_add") 274877908948 := BlsCost.Callees.cc_g1_add
theorem cc_g1_encode : CalleeCost σ guestCtx (nm "g1_encode") 274883837980 := BlsCost.Callees.cc_g1_encode
theorem body_cost : Cost σ guestCtx outer.2 10141204907728592940583270490261 := by
 conv in outer.2 => cbv
 exact (cost_dec (cost_decCall (cc_g1_decode (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_decCall (cc_g1_subgroup_check (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_decCall (cc_u256_from_be (σ := σ)) (cost_seq (cost_store _ _) (cost_seq (cost_call (Bh := 0) (cc_g1_mul (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_ite (cost_call (Bh := 0) (cc_g1_copy (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_call (Bh := 0) (cc_g1_add (σ := σ)) (by intro r hid hv hp h; cases h))) (cost_assign _ _ _))))))))))
theorem tail_cost : Cost σ guestCtx tail 274883837982 := by
 conv in tail => cbv
 exact (cost_seq (cost_call (Bh := 0) (cc_g1_encode (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))
theorem checked : BlsSlotCost.Read.slotOrCallLoopOk outer.2 = true := by cbv
theorem factor_eq : StrideCost.BlsRules.factor outer.2 = 214748366 := by cbv
theorem loop_cost : Cost σ guestCtx (.while outer.1 outer.2) (214748366*(10141204907728592940583270490261+1)) := by
 have hl := StrideCost.BlsRules.factor_sound (c := outer.1) (b := outer.2) guestCtx_bounded checked (body_cost (σ := σ))
 rw [factor_eq] at hl
 exact hl
theorem full_cost : Cost σ guestCtx fullBody 2177807183205896105469392424994667249884 := by
 have hl := loop_cost (σ := σ)
 conv at hl in outer.1 => cbv
 conv at hl in outer.2 => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := fullBody) (B' := 2177807183205896105469392424994667249884) (by
  conv in fullBody => cbv
  exact (cost_decCall (cc_heap_mark (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_dec (cost_seq hl (cost_seq (cost_call (Bh := 0) (cc_g1_encode (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))))
 ) (by decide +kernel)
end G1MsmSupport
def body_bls_g1_msm_exec := (declPair Guest.Software.guestFn_bls_g1_msm_exec).2.2
def b_bls_g1_msm_exec : Nat := 2177807183205896105469392424994667249884
theorem cost_bls_g1_msm_exec : Cost σ guestCtx body_bls_g1_msm_exec b_bls_g1_msm_exec :=
 G1MsmSupport.full_cost
theorem cc_bls_g1_msm_exec : CalleeCost σ guestCtx (nm "bls_g1_msm_exec") b_bls_g1_msm_exec := by
 have hc : guestCode (nm "bls_g1_msm_exec") = some ((declPair Guest.Software.guestFn_bls_g1_msm_exec).2.1,body_bls_g1_msm_exec,(fnEntry Guest.Software.guestFn_bls_g1_msm_exec).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 803) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bls_g1_msm_exec
def table20 := FqCost.CombCore.extend table19 (nm "bls_g1_msm_exec") b_bls_g1_msm_exec
theorem table20_sound : TblSound σ guestCtx table20 := FqCost.CombCore.extend_sound table19_sound cc_bls_g1_msm_exec
#print axioms cc_bls_g1_msm_exec
end InitECandidate.Solver.MemSafe.FqCost.Retable
