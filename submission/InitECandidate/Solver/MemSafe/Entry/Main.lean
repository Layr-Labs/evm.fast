import InitECandidate.Solver.MemSafe.D0.AuthorizationDepth
import InitECandidate.Solver.Improvements.EntryFreshCallees
import InitECandidate.Solver.MemSafe.Entry.Steps3
import InitECandidate.Solver.Band3.Core

/-!
# Entry: the conditional cost of `process_message` (band item #24)

**`pm_condCost hF hD0 hM hop`**: `CondCost … "process_message" (sg1 []) (PmPre M) (pmB M Bop)`.

Hypotheses (all of the frame lane):
* `hF : FHypsB σ` (the opcode handler summaries; gives `PreHyps`, `frame_start`'s summary and
  `run_frames`' conditional cost);
* `hD0 : D0Spec σ` (`depth0_prepare` keeps the root frame's `PreInvX`; its catch path never
  reaches `run_frames`);
* `hM : M < 2^64` (so `run_frames_condCost_FB` applies; with `M ≥ msg_gas + 2` this is
  `msg_gas + 2 < 2^64`);
* `hop`: `op_dispatch`'s conditional cost at `PreOpX … M` (band: `Band3.op_dispatch_condCost_full`).

`PmPre M vs s Γ`: `vs = [msg]` and `FoPre M msg Γ s` (the message facts, `ev` / `cur_cont` words,
`JrNZ`, `msg_gas + 2 ≤ M`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## The catch handler never completes normally -/

theorem eval_return_nn (e : ExpHOL 64) (s : State σ) :
    (evaluateHOLFiniteState s (.return e)).1 ≠ none := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
  dsimp only
  split <;> (try split) <;> simp

theorem eval_seq_nn {a b : ProgHOL 64} (h : ∀ s : State σ, (evaluateHOLFiniteState s b).1 ≠ none)
    (s : State σ) : (evaluateHOLFiniteState s (.seq a b)).1 ≠ none := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => simp only [h1]; exact h _
  | some r => simp [h1]

theorem d0Handler_nn (s : State σ) : (evaluateHOLFiniteState s d0Handler).1 ≠ none := by
  unfold d0Handler
  repeat' (first | exact eval_return_nn _ s | refine eval_seq_nn (fun s => ?_) s)


/-! ## Table costs -/

def bFO : Nat := 239807672958224171065
def bD0 : Nat := D0.authorizationDepthPrice
def bFS : Nat :=
  1519058619963580483919569147301215169394811446181349804834174
def bH : Nat := 6277101735386680783572166704622097299025671267688351006725

set_option cbv.maxSteps 4000000000 in
theorem handler_cost : Cost σ guestCtx d0Handler bH :=
  Band3.cost_guest_of_costA (by decide_cbv)

/-! ## The entry precondition and the bound -/

/-- `process_message`'s precondition: `vs = [msg]` and the entry facts `FoPre`. -/
def PmPre (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s

/-- `run_frames`' bound at the root frame. -/
def bRF (M Bop : Nat) : Nat :=
  rfB M Bop 2 (max (1 + Wire.srBGuest + 0) 0 + 0) (finBnd Wire.finBsGuest)

/-- Exact fixed prefix budget of the existing structural cost walk. -/
def pmPrefixB : Nat := bFO + bD0 + bFS + bH + 6

/-- `process_message`'s bound. -/
def pmB (M Bop : Nat) : Nat := pmPrefixB + bRF M Bop

/-! ## The body -/

section main
variable (M : Nat) (msg : BitVec 64)

/-- After `state_snapshot`: `PI M` and the `snapshot` local is a word. -/
def P2 (s : State σ) : Prop :=
  PI M s ∧ ∃ w : BitVec 64, s.locals.lookup (nm "snapshot") = some (.val (.word w))

theorem snapCallee : Inv.CalleeCostP σ guestCtx (nm "state_snapshot") (fun _ _ => True) 0 :=
  Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "state_snapshot") (B := 0) rfl)

theorem k3_cost (hF : FHypsB σ) (hM : M < 2 ^ 64) {Bop : Nat}
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (P2 M) pmK3 (0 + (1 + bFS + 0 + (1 + bRF M Bop + 0 + 0))) := by
  have hrf : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "run_frames") (sg0 [])
      (PreInvX guestC tEV tCK GP GR M) (bRF M Bop) := run_frames_condCost_FB hF hM hop
  have rfCost : Inv.CostP σ guestCtx (PI M) (callD (nm "run_frames") []) (1 + bRF M Bop + 0) :=
    Inv.costP_callD (Pre := fun vs s => ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧
      ptrsOf s = some p ∧ ArgsOK guestC Γ p (sg0 []).params vs ∧
      PreInvX guestC tEV tCK GP GR M vs s Γ) hrf
      (fun s hs hP vs hvs callee => by
        obtain rfl := evs_zero hvs
        obtain ⟨Γ, p, hG, hp, hpre⟩ := pi_entry hP callee
        exact ⟨Γ, p, hG, hp, argsOK_any (by simp [sg0]) rfl, hpre⟩)
  have tailC : Inv.CostP σ guestCtx (PI M)
      (.seq (callD (nm "run_frames") []) (.return (lv (nm "child")))) (1 + bRF M Bop + 0 + 0) :=
    Inv.costP_seq (R := fun _ => True) rfCost (fun s _ _ _ _ => trivial)
      (Inv.costP_of_cost (cost_return _))
  have fsC : Inv.CostP σ guestCtx (PI M) (callD (nm "frame_start") []) (1 + bFS + 0) :=
    Inv.costP_callD (Pre := fun _ _ => True)
      (Inv.calleeCostP_of_calleeCost (EntryFreshCallees.frame_start_cost))
      (fun _ _ _ _ _ _ => trivial)
  have fsH : Hoare σ guestCtx (PI M) (callD (nm "frame_start") []) (PIQ M) :=
    hoare_PI_callD (fs_spec (FHypsB.preHyps hF) M) (fun u callee v st hP h => pi_fs hP h)
  have K3b := Inv.costP_seq (R := PI M) fsC fsH tailC
  have storeC : Inv.CostP σ guestCtx (P2 M)
      (.store (.op .add [gv (nm "cur_cont"), cw 24]) (lv (nm "snapshot"))) 0 :=
    Inv.costP_of_cost (cost_store _ _)
  have storeH : Hoare σ guestCtx (P2 M)
      (.store (.op .add [gv (nm "cur_cont"), cw 24]) (lv (nm "snapshot"))) (PIQ M) := by
    refine hoare_of_hoareG (hoareG_stG (g := "cur_cont") (k := 24) ?_)
    intro s hs ⟨hP, w, hw⟩ G v hG hv
    rw [ev_lv, hw] at hv
    cases hv
    exact ⟨w, rfl, fun _ _ => pi_ck3 hP hG rfl rfl rfl rfl⟩
  exact Inv.costP_seq (R := PI M) storeC storeH K3b


theorem k2_cost (hF : FHypsB σ) (hM : M < 2 ^ 64) {Bop : Nat}
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (PI M) pmK2
      (0 + (1 + 0 + (0 + (1 + bFS + 0 + (1 + bRF M Bop + 0 + 0))))) := by
  refine costP_skip_seq (costP_decCall0 (P' := P2 M) snapCallee (fun _ _ _ _ => trivial)
    (snap_spec) ?_ (k3_cost M hF hM hop))
  intro s callee v st hs hR hsh
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  exact ⟨pi_set (pi_loc (pi_snap hs hR) s.locals st.clock) _ _, w, lk_set_self _ _ _⟩

/-- The depth-0 block: cost and `PI M`. -/
theorem d0_block (hD0 : D0Spec σ) :
    Inv.CostP σ guestCtx (PI M) d0Block (1 + 0 + (1 + bD0 + bH)) ∧
      Hoare σ guestCtx (PI M) d0Block (PIQ M) := by
  have hcallC : Inv.CostP σ guestCtx (PI M)
      (.call (some (none, some (nm "EvmErr", nm "perr", d0Handler))) (nm "depth0_prepare") [])
      (1 + bD0 + bH) :=
    Inv.costP_call (D0.authorizationDepth_cost M)
      (fun s _ h _ _ callee => pi_entry h callee)
      (fun r hid hv hp h => by
        simp only [Option.some.injEq, Prod.mk.injEq] at h
        obtain ⟨-, -, -, rfl⟩ := h
        exact handler_cost)
  have hcallH : Hoare σ guestCtx (PI M)
      (.call (some (none, some (nm "EvmErr", nm "perr", d0Handler))) (nm "depth0_prepare") [])
      (PIQ M) := by
    refine hoare_callH (tgt := none) (d0_spec hD0 M) ?_ ?_
    · intro s hs hP vs hvs callee v st hR hst
      obtain rfl := evs_zero hvs
      exact ⟨fun _ _ => pi_loc (pi_d0 hP hR) _ st.clock, fun k x h => by cases h⟩
    · intro s hs hP vs hvs callee v st hR hst t ht htP hg hr
      exact absurd hr (d0Handler_nn _)
  refine ⟨?_, ?_⟩
  · exact costP_decCall0 (P' := PI M) (Inv.calleeCostP_of_calleeCost
      (Wire.calleeCost_guest (f := nm "state_snapshot") (B := 0) rfl)) (PreC := fun _ _ => True)
      (fun _ _ _ _ => trivial) snap_spec
      (fun s callee v st hs hR hsh => pi_set (pi_loc (pi_snap hs hR) s.locals st.clock) _ _)
      (costP_PI_dec (costP_PI_dec hcallC))
  · exact hoare_PI_decCall snap_spec (fun u callee v st hP h => pi_snap hP h)
      (hoare_PI_dec (hoare_PI_dec hcallH))


theorem k1_cost (hF : FHypsB σ) (hD0 : D0Spec σ) (hM : M < 2 ^ 64) {Bop : Nat}
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (PI M) pmK1
      (0 + (max (1 + 0 + (1 + bD0 + bH)) 0 +
        (0 + (1 + 0 + (0 + (1 + bFS + 0 + (1 + bRF M Bop + 0 + 0))))))) := by
  obtain ⟨dC, dH⟩ := d0_block M hD0
  have iteC := Inv.costP_ite (P := PI M) (c := .cmp .equal (ldW (nm "msg") 128) (cw 0))
    (dC.pre fun _ _ h => h.1) (Inv.costP_of_cost (cost_skip (σ := σ) (X := guestCtx)))
  have iteH : Hoare σ guestCtx (PI M)
      (.ite (.cmp .equal (ldW (nm "msg") 128) (cw 0)) d0Block .skip) (PIQ M) :=
    hoare_ite (hoare_pre dH fun s _ h => h.1) (hoare_skip fun s _ h _ => h.1)
  exact costP_skip_seq (Inv.costP_seq (R := PI M) iteC iteH (k2_cost M hF hM hop))

/-- Compose the frame-open call with its continuation at arbitrary costs. -/
theorem body_walk {openCost tailCost : Nat}
    (openBound : CalleeCost σ guestCtx (nm "frame_open") openCost)
    (hk1 : Inv.CostP σ guestCtx (PI M) pmK1 tailCost) :
    Inv.CostP σ guestCtx (P0 M msg) pmBody (max 0 0 + (0 + (1 + openCost + tailCost))) := by
  have hfo := Band.costP_decCall (P := P0 M msg) (rn := nm "child") (f := nm "frame_open")
    (sh := .one) (args := [lv (nm "msg"), cw 0]) (k := pmK1)
    (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost openBound)
    (fun _ _ _ _ _ _ => trivial) (fo_spec (σ := σ)) (by
      intro s hs hP vs hvs callee v st hR' _ hsh
      obtain ⟨Γ, p, hG, hp, hf, hl⟩ := hP
      have hev : evs s [lv (nm "msg"), cw 0] =
          some [.val (.word msg), .val (.word (BitVec.ofNat 64 0))] :=
        evs_cons (by rw [ev_lv]; exact hl) (evs_cons (ev_cw s 0) evs_nil)
      rw [hev] at hvs
      cases hvs
      exact hk1.pre fun t _ ht => by
        subst ht
        exact pi_set (pi_loc (pi_fo ⟨Γ, p, hG, hp, hf, hl⟩ hR') s.locals st.clock) _ _)
  have hd2 := Inv.costP_dec (P := P0 M msg) (n := nm "parent_cont") (sh := .one)
    (e := gv (nm "cur_cont")) (body := _)
    (fun s hs hP v hv hsh => hfo.pre fun t _ ht => by
      subst ht; exact p0_set hP (by decide) v)
  have hd1 := Inv.costP_dec (P := P0 M msg) (n := nm "parent") (sh := .one)
    (e := gv (nm "ev")) (body := _)
    (fun s hs hP v hv hsh => hd2.pre fun t _ ht => by
      subst ht; exact p0_set hP (by decide) v)
  have guardC : Inv.CostP σ guestCtx (P0 M msg)
      (.ite (.cmp .lower (cw 1024) (ldW (nm "msg") 128)) (.raise (nm "EvmErr") (cw 7)) .skip)
      (max 0 0) :=
    Inv.costP_of_cost (cost_ite (cost_raise _ _) cost_skip)
  have guardH : Hoare σ guestCtx (P0 M msg)
      (.ite (.cmp .lower (cw 1024) (ldW (nm "msg") 128)) (.raise (nm "EvmErr") (cw 7)) .skip)
      (fun r t => r = none → P0 M msg t) :=
    hoare_ite hoare_raise (hoare_skip fun s _ h _ => h.1)
  have hall := Inv.costP_seq (R := P0 M msg) guardC guardH (costP_skip_seq hd1)
  exact hall

theorem body_walk_budget (fo d0 h fs rf : Nat) :
    max 0 0 + (0 + (1 + fo +
      (0 + (max (1 + 0 + (1 + d0 + h)) 0 + (0 + (1 + 0 + (0 + (1 + fs + 0 + (1 + rf + 0 + 0))))))))) ≤
        fo + d0 + fs + h + 6 + rf := by
  simp only [Nat.max_zero, Nat.zero_add, Nat.add_zero]
  omega

theorem body_cost (hF : FHypsB σ) (hD0 : D0Spec σ) (hM : M < 2 ^ 64) {Bop : Nat}
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (P0 M msg) pmBody (pmB M Bop) := by
  have h := body_walk M msg EntryFreshCallees.frame_open_cost (k1_cost M hF hD0 hM hop)
  exact h.mono (body_walk_budget bFO bD0 bH bFS (bRF M Bop))

end main

/-- **`process_message`'s conditional cost** (band item #24). -/
theorem pm_condCost (hF : FHypsB σ) (hD0 : D0Spec σ) {M Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_message") (sg1 [])
      (PmPre M) (pmB M Bop) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pm hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, msg, hvs, hfo⟩ hg
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  exact body_cost M msg hF hD0 hM hop s hs ⟨Γ, p, hG, hp, hfo, by rw [hloc]; exact hlk⟩ hg

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pm_condCost
