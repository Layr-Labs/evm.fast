import InitECandidate.Solver.Improvements.ModexpGuardedCost
import InitECandidate.Solver.MemSafe.Mod.PreCode
import InitECandidate.Solver.Spec.Rlp

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace PreModexpGuardedCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Mod
open ModexpGuardedCost ModexpLocalRules
variable {σ : Type}

theorem after_guard (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    Inv.CostP σ guestCtx Len pmMl (modPrice + 22*(allowance+1)) := by
  unfold pmMl pmMlen pmGuard pmExp pmHlen pmHead pmCost pmCharge pmOut pmMk pmA1 pmA2 pmA3 pmC
  let afterCall := (1 + modPrice + 0) + allowance
  let threeStatements := allowance + (allowance + (allowance + afterCall))
  let twoStatements := allowance + (allowance + callChain 5 threeStatements)
  apply Inv.CostP.mono (B := callChain 2 (allowance + callChain 1 (allowance + callChain 2 twoStatements)))
  · refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    refine dec_keep (by decide) ?_
    refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    iterate 2 refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    iterate 2 refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    iterate 5 refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    iterate 3 refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    refine Inv.costP_seq (R := fun _ => True) (Inv.costP_callD (callee hbit) ?_) (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost (capped (by decide_cbv)))
    rintro s _ ⟨n,hn,hbound⟩ vs hvs cl
    obtain ⟨u,t,rfl,_,ht⟩ := evs_cons_inv hvs
    obtain ⟨v,t,rfl,_,ht⟩ := evs_cons_inv ht
    obtain ⟨w,t,rfl,_,ht⟩ := evs_cons_inv ht
    obtain ⟨e,t,rfl,he,_⟩ := evs_cons_inv ht
    rw [AcceptedBitLengthReturn.ev_lw hn] at he
    cases he
    exact ⟨n,rfl,hbound⟩
  · decide

theorem checked_elen (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    Cost σ guestCtx (pmGuard "elen" pmMl) (0 + (modPrice + 22*(allowance+1))) := by
  apply Inv.cost_of_costP_true
  unfold pmGuard
  refine Inv.costP_seq (Inv.costP_of_cost (cost_ite (Ba := 0) (Bb := 0) (cost_raise _ _) cost_skip))
    (hoare_ite hoare_raise (hoare_skip ?_)) (after_guard hbit)
  rintro s _ ⟨_,hv⟩ _
  obtain ⟨x,y,hx,hy,hfalse⟩ := cmp_false hv
  rw [ev_cw] at hx
  cases hx
  have hL := lower_false hfalse
  exact ⟨y, by simpa only [ev_lv] using hy, by simpa using hL⟩

theorem callee_cost (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    CalleeCost σ guestCtx (nm "pre_modexp") prePrice := by
  intro vs body lc rs hl
  obtain ⟨ps,hbody⟩ := lookupCode_some hl
  rw [guestCtx_code,code_pre_modexp] at hbody
  have he : body = pmBody := (congrArg (fun row => row.2.1) (Option.some.inj hbody)).symm
  rw [he]
  unfold pmBody pmHdr pmBl pmBlen pmEl pmElen
  apply Cost.mono (B := allowance + callChain 2 (allowance + callChain 2 (0 + (modPrice + 22*(allowance+1)))))
  · iterate 4 apply cost_dec
    refine cost_seq (capped (by decide_cbv)) ?_
    refine cost_decCall (named (by decide_cbv)) ?_
    refine cost_decCall (named (by decide_cbv)) ?_
    unfold pmGuard
    refine cost_seq (capped (by decide_cbv)) ?_
    refine cost_decCall (named (by decide_cbv)) ?_
    exact cost_decCall (named (by decide_cbv)) (checked_elen hbit)
  · decide

#print axioms callee_cost
end PreModexpGuardedCost
