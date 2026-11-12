import InitECandidate.Solver.Band.Attempt

/-!
# `attempt_l1` and `verify_stateless_new_payload` (sonnet-band, template T4)

```
fun 1 attempt_l1(1 si) {
  var e = 0;
  try run_attempt(si) catch BlockErr => e { !st8 2688614400 + 70, e; throw Fail 1; }
  return 0;
}
fun 1 verify_stateless_new_payload(1 si) {
  var e = 0; var ok = 1;
  try attempt_l7(si) catch Fail => e { ok = 0; fail_code = e; }
  return ok;
}
```
Both are `G`-level pass-throughs.  The hypothesis is **`hRA`**: a `CondCost` of `run_attempt` with
signature `sgSi` and any `Pre` that ignores the locals (`hPre`; band function #31, "needs
design").  `attempt_l1_condCost` is `Band.att_condCost` at `attempt_l1`; `attempt_l7_of_run_attempt`
chains it through `Band.att_chain`; `verify_condCost` adds `verify_stateless_new_payload`
(the handler `ok = 0; fail_code = e` is all-states).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.Band

variable {σ : Type}

theorem entry_att1 : fnEntry Guest.Software.guestFn_attempt_l1 =
    (nm "attempt_l1", [(nm "si", .one)], attBody "run_attempt" "BlockErr" 1, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_att1 : guestCode (nm "attempt_l1") =
    some ([(nm "si", .one)], attBody "run_attempt" "BlockErr" 1, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 880) (by decide)) ⟨_, rfl⟩
    entry_att1

/-- **`attempt_l1`** from `run_attempt`'s `CondCost`. -/
theorem attempt_l1_condCost {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {B : Nat} (hRA : CondCost σ guestCtx C H (nm "run_attempt") sgSi Pre B) :
    CondCost σ guestCtx C H (nm "attempt_l1") sgSi Pre (1 + B + (0 + 0) + 0) :=
  att_condCost hH code_att1 hPre hRA

/-- **`attempt_l7`** (and so `attempt_l2 … attempt_l6`) from `run_attempt`'s `CondCost`. -/
theorem attempt_l7_of_run_attempt {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {B : Nat} (hRA : CondCost σ guestCtx C H (nm "run_attempt") sgSi Pre B) :
    CondCost σ guestCtx C H (nm "attempt_l7") sgSi Pre ((1 + B + (0 + 0) + 0) + 6) :=
  att_chain hH hPre (attempt_l1_condCost hH hPre hRA)

def vspBody : ProgHOL 64 :=
  .dec (nm "e") .one (cw 0) (.dec (nm "ok") .one (cw 1)
    (.seq (.call (some (none, some (nm "Fail", nm "e",
        .seq (.assign .local (nm "ok") (cw 0)) (.assign .global (nm "fail_code") (lv (nm "e"))))))
        (nm "attempt_l7") [lv (nm "si")])
      (.return (lv (nm "ok")))))

theorem entry_vsp : fnEntry Guest.Software.guestFn_verify_stateless_new_payload =
    (nm "verify_stateless_new_payload", [(nm "si", .one)], vspBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_vsp : guestCode (nm "verify_stateless_new_payload") =
    some ([(nm "si", .one)], vspBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 887) (by decide)) ⟨_, rfl⟩
    entry_vsp

/-- **`verify_stateless_new_payload`** from `attempt_l7`'s `CondCost`. -/
theorem verify_condCost {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {B : Nat} (hf : CondCost σ guestCtx C H (nm "attempt_l7") sgSi Pre B) :
    CondCost σ guestCtx C H (nm "verify_stateless_new_payload") sgSi Pre
      (1 + B + (0 + 0) + 0) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_vsp hl
  refine Inv.costP_dec fun s _ ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ v0 _ _ => ?_
  refine Inv.costP_dec fun s1 _ hs1 v1 _ _ => ?_
  subst hs1
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_call (Bh := 0 + 0) hf ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_return _))
  · rintro t _ rfl vs' hvs' callee'
    have hsi : ev (setVarHOLFinite (nm "ok") v1 (setVarHOLFinite (nm "e") v0 s)) (lv (nm "si")) =
        some A := by
      rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hloc]; exact hA
    rw [evs_cons hsi evs_nil] at hvs'
    cases hvs'
    refine ⟨Γ, p, G_congr (s := s) hH rfl rfl rfl rfl hG, ?_, hargs,
      hPre _ s _ _ rfl rfl rfl rfl hpre⟩
    show ptrsOf (callEntryStateHOLFinite (setVarHOLFinite (nm "ok") v1
      (setVarHOLFinite (nm "e") v0 s)) callee') = _
    unfold ptrsOf gword; exact hp
  · intro r hid hv hp' hinfo
    simp only [Option.some.injEq, Prod.mk.injEq] at hinfo
    obtain ⟨-, rfl, rfl, rfl⟩ := hinfo
    exact cost_seq (cost_assign _ _ _) (cost_assign _ _ _)

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.attempt_l1_condCost
#print axioms InitECandidate.Solver.Band2.attempt_l7_of_run_attempt
#print axioms InitECandidate.Solver.Band2.verify_condCost
