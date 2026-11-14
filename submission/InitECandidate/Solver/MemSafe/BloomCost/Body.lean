import InitECandidate.Solver.MemSafe.SignedStride.Main
import InitECandidate.Solver.MemSafe.KeccakCost.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BloomCost
variable {σ : Type}
def body := (declPair Guest.Software.guestFn_add_to_bloom).2.2
def tail : ProgHOL 64 := match body with
 | .decCall _ _ _ _ (.decCall _ _ _ _ (.seq _ t)) => t
 | _ => .skip
def hashCall : ProgHOL 64 := .call (some (none,none)) (nm "keccak256") [lv (nm "entry"),lv (nm "n"),lv (nm "h")]
theorem hash_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 135) hashCall (1+KeccakCost.bound+0) := by
 apply Inv.costP_call (Bh := 0) KeccakCost.callee
 · intro s hs hp vs hvs callee
   obtain ⟨N,hN,hNM⟩ := hp
   obtain ⟨A,vs1,hvs0,hA,hrest⟩ := evs_cons_inv hvs
   obtain ⟨B,vs2,hvs1,hB,hrest2⟩ := evs_cons_inv hrest
   have hvb : B = .val (.word N) := (Option.some.inj ((ev_lw hN).symm.trans hB)).symm
   refine ⟨N,?_,hNM⟩
   rw [hvs0,hvs1,hvb];rfl
 · intro _ _ _ _ h;cases h
#print axioms hash_cost
def loopBody : ProgHOL 64 := match tail with | .dec _ _ _ (.seq (.while _ b) _) => b | _ => .skip
def afterLoop : ProgHOL 64 := match tail with | .dec _ _ _ (.seq _ r) => r | _ => .skip
def loop : ProgHOL 64 := .while (.cmp .less (lv (nm "idx")) (cw 6)) loopBody
theorem tail_shape : tail = .dec (nm "idx") .one (cw 0) (.seq loop afterLoop) := by cbv
theorem tail_cost : Cost σ guestCtx tail 10 := by
 have hb : Cost σ guestCtx loopBody 0 := FqCost.CombCore.analyze_sound FqCost.Retable.table77_sound (by cbv)
 have hstep : Steps σ (nm "idx") (·+(2 : BitVec 64)) loopBody :=
  stepsWithB_sound isAddK_sound _ (by cbv)
 have hl : Inv.CostP σ guestCtx (SignedStride.Counter (nm "idx") 8) loop 9 :=
  SignedStride.bounded (6 : BitVec 64) (2 : BitVec 64) (by decide) (by decide) hb hstep
 have hr : Cost σ guestCtx afterLoop 1 := FqCost.CombCore.analyze_sound FqCost.Retable.table77_sound (by cbv)
 apply Inv.cost_of_costP_true
 rw [tail_shape]
 refine Inv.costP_dec fun s hs hp v hv hsh => ?_
 rw [ev_cw] at hv
 have hv' := Option.some.inj hv
 subst v
 have hseq : Inv.CostP σ guestCtx (SignedStride.Counter (nm "idx") 8) (.seq loop afterLoop) (9+1) :=
  Inv.costP_seq (R := fun _ => True) hl (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost hr)
 apply hseq.pre
 intro st hst he
 subst st
 exact ⟨0,by simp [setVarHOLFinite,FUPDATE],by decide⟩
theorem body_shape : body = .decCall (nm "mark") .one (nm "heap_mark") []
 (.decCall (nm "h") .one (nm "alloc") [cw 32] (.seq hashCall tail)) := by cbv
def bound : Nat := 584115552456
theorem body_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 135) body bound := by
 have hm : CalleeCost σ guestCtx (nm "heap_mark") 0 := FqCost.Retable.table77_sound _ _ (by cbv)
 have ha : CalleeCost σ guestCtx (nm "alloc") 2 := FqCost.Retable.table77_sound _ _ (by cbv)
 have ht : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 135) (.seq hashCall tail) (1+KeccakCost.bound+0+10) :=
  Inv.costP_seq (R := fun _ => True) hash_cost (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost tail_cost)
 rw [body_shape]
 exact ModexpCost.Keep.decCall (by decide) hm (ModexpCost.Keep.decCall (by decide) ha ht)
#print axioms tail_cost
#print axioms body_cost
end InitECandidate.Solver.MemSafe.BloomCost
