import InitECandidate.Solver.MemSafe.Entry2.Tc

/-!
# Entry2: the conditional cost of `process_create_message` (band item #25)

**`pcm_condCost hF hD0 hM hop`**: `CondCost … "process_create_message" (sg1 []) (PmPre M) (pcmB M Bop)`.

Same hypotheses and precondition as `Entry.pm_condCost` (`PmPre M`: the message facts `FoPre`).
The proof re-establishes `FoPre` after `state_snapshot`, `destroy_storage`, `mark_account_created`,
`increment_nonce` (`fi_rel` / `j3_call`: state-object footprints keep `RootMsgX`, `NewPreG`, the
`ev` / `cur_cont` words, `JrNZ` and the message gas cell), so `pm_condCost` applies. The
`create_finish` call, its catch handler and `state_restore` are table (all-states) costs.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}


/-- `process_create_message`'s bound. -/
def pcmB (M Bop : Nat) : Nat := bDS + bMA + bINC + bK6 + 5 + pmB M Bop

def bk5 (M Bop : Nat) : Nat := 1 + pmB M Bop + bK6
def bk4 (M Bop : Nat) : Nat := (1 + bINC + 0) + bk5 M Bop
def bk3 (M Bop : Nat) : Nat := (1 + bMA + 0) + bk4 M Bop
def bk2 (M Bop : Nat) : Nat := (1 + bDS + 0) + bk3 M Bop
def bk0 (M Bop : Nat) : Nat := 1 + 0 + bk2 M Bop

section main
variable (M : Nat) (msg tgt : BitVec 64)

theorem pcm_k5 (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (J3 M msg tgt) pcmK5 (bk5 M Bop) := by
  refine Band.costP_decCall (P := J3 M msg tgt) (rn := nm "child") (f := nm "process_message")
    (sh := .one) (args := [lv (nm "msg")]) (k := pcmK6)
    (Pre := fun vs s => ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
      ArgsOK guestC Γ p (sg1 []).params vs ∧ PmPre M vs s Γ)
    (pm_condCost hF hD0 hM hop) ?_ (funSpec_true _) ?_
  · intro s hs hP vs hvs callee
    obtain ⟨⟨Γ, p, hG, hp, hfo, hb⟩, hl1, hl2⟩ := hP
    rw [evs_cons (ev_lv_eq hl1) evs_nil] at hvs
    cases hvs
    exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s _ _).mpr hG,
      (ptrsOf_congr rfl).trans hp, argsOK_any (by simp [sg1]) rfl, msg, rfl, hfo⟩
  · intro s hs hP vs hvs callee v st hR _ hsh
    exact Inv.costP_of_cost cost_k6

theorem pcm_k4 (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (J3 M msg tgt) pcmK4 (bk4 M Bop) :=
  Inv.costP_seq (R := J3 M msg tgt)
    (Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_inc)
      (fun _ _ _ _ _ _ => trivial))
    (j3_call stSum_inc) (pcm_k5 M msg tgt hF hD0 hM hop)

theorem pcm_k3 (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (J3 M msg tgt) pcmK3 (bk3 M Bop) :=
  Inv.costP_seq (R := J3 M msg tgt)
    (Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_ma)
      (fun _ _ _ _ _ _ => trivial))
    (j3_call (stSum_mac guestCtx_code tabJL_guestR)) (pcm_k4 M msg tgt hF hD0 hM hop)

theorem pcm_k2 (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (J3 M msg tgt) pcmK2 (bk2 M Bop) :=
  Inv.costP_seq (R := J3 M msg tgt)
    (Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_ds)
      (fun _ _ _ _ _ _ => trivial))
    (j3_call stSum_ds) (pcm_k3 M msg tgt hF hD0 hM hop)

theorem pcm_k1 (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) pcmK1 (bk2 M Bop) := by
  refine Inv.costP_dec (P := FL M msg) (n := nm "target") (sh := .one)
    (e := ldW (nm "msg") 32) (body := pcmK2) fun s hs hP v hv hsh => ?_
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hP
  have hv' := ev_lLoad_eq (x := "msg") (k := 32) hl hv
  subst hv'
  refine (pcm_k2 M msg (fld s.memory msg 32) hF hD0 hM hop).pre fun t _ ht => ?_
  subst ht
  exact ⟨⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s _ s.clock).mpr hG,
    (ptrsOf_congr rfl).trans hp, hfo, hfo.1.2 p hp 32 (by simp [msgXOffs])⟩,
    by rw [lk_set_ne _ _ (by decide)]; exact hl, lk_set_self _ _ _⟩

theorem pcm_body (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) pcmBody (bk0 M Bop) := by
  refine costP_decCall0 (P := FL M msg) (P' := FL M msg) snapCallee (fun _ _ _ _ => trivial)
    snap_spec ?_ (pcm_k1 M msg hF hD0 hM hop)
  intro s callee v st hs hR hsh
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hs
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR.1 hGe hpe hfo
    (argsOK_any (by simp [sgSn]) rfl) (by simp [sgSn]) (by simp [sgSn])
    (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  exact ⟨⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp', hfo'⟩,
    by rw [lk_set_ne _ _ (by decide)]; exact hl⟩

end main

/-- **`process_create_message`'s conditional cost** (band item #25). Same hypotheses and
precondition as `Entry.pm_condCost`; `create_finish` and the catch handler are table costs. -/
theorem pcm_condCost (hF : FHypsB σ) (hD0 : D0Spec σ) {M Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_create_message")
      (sg1 []) (PmPre M) (pcmB M Bop) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pcm hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, msg, hvs, hfo⟩ hg
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  refine (Inv.CostP.mono (pcm_body M msg hF hD0 hM hop) ?_) s hs
    ⟨⟨Γ, p, hG, hp, hfo⟩, by rw [hloc]; exact hlk⟩ hg
  unfold bk0 bk2 bk3 bk4 bk5 pcmB
  omega

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.pcm_condCost
