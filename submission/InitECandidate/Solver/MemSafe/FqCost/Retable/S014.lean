import InitECandidate.Solver.MemSafe.FqCost.Retable.S013
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
namespace BlsPairSupport
theorem cc_alloc : CalleeCost σ guestCtx (nm "alloc") 2 := Wire.calleeCost_guest rfl
theorem cc_fp12_final_exp : CalleeCost σ guestCtx (nm "fp12_final_exp") 76059037278310304076292087931554 := BlsCost.Callees.cc_fp12_final_exp
theorem cc_fp12_is_one : CalleeCost σ guestCtx (nm "fp12_is_one") 549755814047 := BlsCost.Callees.cc_fp12_is_one
theorem cc_fp12_set_one : CalleeCost σ guestCtx (nm "fp12_set_one") 412316860532 := BlsCost.Callees.cc_fp12_set_one
theorem cc_g1_decode : CalleeCost σ guestCtx (nm "g1_decode") 68719477143 := BlsCost.Callees.cc_g1_decode
theorem cc_g1_subgroup_check : CalleeCost σ guestCtx (nm "g1_subgroup_check") 5070602453855073098082981776275 := BlsCost.Callees.cc_g1_subgroup_check
theorem cc_g2_decode : CalleeCost σ guestCtx (nm "g2_decode") 274877907910 := BlsCost.Callees.cc_g2_decode
theorem cc_g2_subgroup_check : CalleeCost σ guestCtx (nm "g2_subgroup_check") 30423614562569978169555563848096 := BlsCost.Callees.cc_g2_subgroup_check
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := Wire.calleeCost_guest rfl
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := Wire.calleeCost_guest rfl
theorem cc_memzero : CalleeCost σ guestCtx (nm "memzero") 137438953508 := RlpCost.Callers.cc_memzero
theorem cc_pair_accumulate : CalleeCost σ guestCtx (nm "pair_accumulate") 38029518498821546494170823492791 := BlsCost.Callees.cc_pair_accumulate
def loops : ProgHOL 64 → List (ExpHOL 64 × ProgHOL 64)
 | .while c b => (c,b)::loops b
 | .seq a b => loops a++loops b
 | .dec _ _ _ b => loops b
 | .decCall _ _ _ _ b => loops b
 | .ite _ a b => loops a++loops b
 | _ => []
def fullBody := (declPair Guest.Software.guestFn_bls_pairing_exec).2.2
def outer := ((loops fullBody)[0]?).getD (.const 0,.skip)
def tailAfter : ProgHOL 64 → Option (ProgHOL 64)
 | .seq (.while _ _) rest => some rest
 | .seq a b => (tailAfter a).orElse (fun _ => tailAfter b)
 | .dec _ _ _ b => tailAfter b
 | .decCall _ _ _ _ b => tailAfter b
 | _ => none
def tail := (tailAfter fullBody).getD .skip
theorem body_cost : Cost σ guestCtx outer.2 73523735515246597762152966502224 := by
 conv in outer.2 => cbv
 exact (cost_dec (cost_decCall (cc_g1_decode (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_decCall (cc_g1_subgroup_check (σ := σ)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_seq (cost_call (Bh := 0) (cc_g2_decode (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_seq (cost_call (Bh := 0) (cc_g2_subgroup_check (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)) cost_skip) (cost_seq (cost_call (Bh := 0) (cc_pair_accumulate (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_assign _ _ _)))))))))))

theorem tail_cost : Cost σ guestCtx tail 76059037278310304076979282699113 := by
 conv in tail => cbv
 exact (cost_seq (cost_call (Bh := 0) (cc_fp12_final_exp (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_decCall (cc_fp12_is_one (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_memzero (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_storeByte _ _) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _))))))

theorem checked : BlsSlotCost.Read.slotOrCallLoopOk outer.2 = true := by cbv

theorem factor_eq : StrideCost.BlsRules.factor outer.2 = 89478487 := by cbv
theorem loop_cost : Cost σ guestCtx (.while outer.1 outer.2)
 (89478487*(73523735515246597762152966502224+1)) := by
 have hl := StrideCost.BlsRules.factor_sound (c := outer.1)
  (b := outer.2) guestCtx_bounded checked (body_cost (σ := σ))
 rw [factor_eq] at hl
 exact hl

theorem whole_bound_cost : Cost σ guestCtx fullBody 6578792688551468277965337382572374693231 := by
 have hl := loop_cost (σ := σ)
 conv at hl in outer.1 => cbv
 conv at hl in outer.2 => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := fullBody) (B' := 6578792688551468277965337382572374693231) (by
  conv in fullBody => cbv
  exact (cost_decCall (cc_heap_mark (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_decCall (cc_alloc (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_fp12_set_one (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_dec (cost_seq hl (cost_seq (cost_call (Bh := 0) (cc_fp12_final_exp (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_decCall (cc_fp12_is_one (σ := σ)) (cost_seq (cost_call (Bh := 0) (cc_memzero (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_seq (cost_storeByte _ _) (cost_seq (cost_call (Bh := 0) (cc_heap_release (σ := σ)) (by intro r hid hv hp h; cases h)) (cost_return _)))))))))))))
 ) (by decide +kernel)

end BlsPairSupport
def body_bls_pairing_exec := (declPair Guest.Software.guestFn_bls_pairing_exec).2.2
def b_bls_pairing_exec : Nat := 6578792688551468277965337382572374693231
theorem cost_bls_pairing_exec : Cost σ guestCtx body_bls_pairing_exec b_bls_pairing_exec :=
 BlsPairSupport.whole_bound_cost
theorem cc_bls_pairing_exec : CalleeCost σ guestCtx (nm "bls_pairing_exec") b_bls_pairing_exec := by
 have hc : guestCode (nm "bls_pairing_exec") = some ((declPair Guest.Software.guestFn_bls_pairing_exec).2.1,body_bls_pairing_exec,(fnEntry Guest.Software.guestFn_bls_pairing_exec).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 806) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bls_pairing_exec
def table14 := FqCost.CombCore.extend table13 (nm "bls_pairing_exec") b_bls_pairing_exec
theorem table14_sound : TblSound σ guestCtx table14 := FqCost.CombCore.extend_sound table13_sound cc_bls_pairing_exec
#print axioms cc_bls_pairing_exec
end InitECandidate.Solver.MemSafe.FqCost.Retable
