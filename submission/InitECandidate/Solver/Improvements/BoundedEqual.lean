import InitECandidate.Solver.Spec.Memeq
import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace BoundedEqual
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ExpHOL ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

abbrev slots : Nat := 2 ^ 35 + alignSlack 64 + 1
abbrev price : Nat := (slots + slots) + (slots + (slots + 0))
variable {σ : Type}
private def readAt (word : Bool) : ExpHOL 64 :=
  if word then ldw (addI (nm "b")) else .loadByte (addI (nm "b"))

private theorem loop {x c : ExpHOL 64} (word : Bool) {rest : ProgHOL 64}
    (hStep : stepsRB (nm "i") addrStepMax [] (.seq (neRet x (readAt word)) rest) = true)
    (hKeep : baseKeptB (lv (nm "b")) (.seq (neRet x (readAt word)) rest) = true)
    (hz : CompactCostReplay.price ([],[],[]) (.seq (neRet x (readAt word)) rest) = some 0) :
    Cost σ guestCtx (.while c (.seq (neRet x (readAt word)) rest)) slots := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, _⟩ := guestCtx_bounded
  have hAlign : alignSlack 64 = 8 := by decide
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by omega
  have hbody := CompactCostReplay.program_cost (σ := σ) stateSound_empty hz
  refine Cost.mono (cost_while_addr (addrOf (lv (nm "b")) (nm "i")) lo (L + alignSlack 64)
    addrStepMax (by unfold addrStepMax; omega) hbody (fun _ => rfl) ?_) ?_
  · intro t ht hc
    have hg := seq_completes (noContB_sound _ (by rfl)) hc
    have hEval : ∃ v, ev t (.cmp .notEqual x (readAt word)) = some v := by
      unfold neRet at hg
      rw [evaluateHOLFiniteState_eq_evaluate_def] at hg
      dsimp only at hg
      split at hg
      · exact ⟨_, by assumption⟩
      · contradiction
    obtain ⟨_, hv⟩ := hEval
    obtain ⟨_,_,_,hy,_⟩ := ev_cmp_inv hv
    have hhit : ∃ w, ev t (addI (nm "b")) = some (.val (.word w)) ∧ Hit t.memaddrs w := by
      cases word with
      | false =>
        obtain ⟨w,hw,hit⟩ := ev_loadByte_hit hy
        exact ⟨w,hw,hit⟩
      | true =>
        obtain ⟨w,hw,hd,_⟩ := ev_load_one hy
        exact ⟨w,hw,Or.inl hd⟩
    obtain ⟨w,haddr,hh⟩ := hhit
    have hw := eval_addr _ (by decide : isBase (nm "i") (lv (nm "b") : ExpHOL 64) = true) haddr
    refine ⟨w, hw, hit_offset hdom hLs (ht.2.1 ▸ hh), ?_⟩
    have hv := hw
    unfold addrOf at hv
    cases hidx : wordLocal t (nm "i") with
    | none => rw [hidx] at hv; split at hv <;> simp_all
    | some v =>
      have hlocal := wordLocal_some hidx
      obtain ⟨d,hd1,hd2,hn⟩ := stepsRB_sound _ _ _ _ hStep t v hlocal (factsHold_nil t) hc
      exact ⟨d,hd1,hd2,addrOf_step hw hlocal hn (baseKept hKeep hc)⟩
  · simp only [Nat.zero_add,Nat.mul_one]; unfold slots; omega

private theorem free {p : ProgHOL 64} (h : CompactCostReplay.price ([],[],[]) p = some 0) :
    Cost σ guestCtx p 0 := CompactCostReplay.program_cost stateSound_empty h

theorem body_cost : Cost σ guestCtx memeqBody price := by
  unfold memeqBody
  refine cost_dec (cost_seq (Bp := slots + slots) (Bq := slots + (slots + 0)) ?_ ?_)
  · apply Cost.mono (cost_ite (Ba := slots + slots) (Bb := 0) ?_ cost_skip) (by rw [Nat.max_zero])
    refine cost_seq (Bp := 0) (Bq := slots + slots) (free (by decide_cbv)) ?_
    refine cost_seq (Bp := 0) (Bq := slots + slots) (free (by decide_cbv)) ?_
    refine cost_seq (Bp := 0) (Bq := slots + slots) (free (by decide_cbv)) ?_
    exact cost_seq (Bp := slots) (Bq := slots) (loop true (by decide) (by decide) (by decide_cbv))
      (loop true (by decide) (by decide) (by decide_cbv))
  · exact cost_seq (Bp := slots) (Bq := slots + 0) (loop false (by decide) (by decide) (by decide_cbv))
      (cost_seq (Bp := slots) (Bq := 0) (loop false (by decide) (by decide) (by decide_cbv)) (cost_return _))

theorem callee_cost : CalleeCost σ guestCtx (nm "memeq") price := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := lookupCode_some lookup
  rw [guestCtx_code, code_memeq] at hc
  have eq : actual = memeqBody := (congrArg (fun e => e.2.1) (Option.some.inj hc)).symm
  rw [eq]
  exact body_cost

#print axioms callee_cost
end BoundedEqual
