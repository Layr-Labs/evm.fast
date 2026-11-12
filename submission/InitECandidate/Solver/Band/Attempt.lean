import InitECandidate.Solver.Band.Rules
import InitECandidate.Solver.MemSafe.CallSound2
import InitECandidate.Solver.MemSafe.Wire.Guest

/-!
# The `attempt_l1 … attempt_l7` wrappers: the `CondCost` pass-through template (band1, T4)

```
fun 1 attempt_lk(1 si) {
  var e = 0;
  try callee(si) catch E => e { !st8 2688614400 + 70, e; throw Fail k; }
  return 0; }
```

**`att_condCost`**: for a function `g` whose body is `attBody f E k` (code lemma `code_att*`), a
`CondCost` of the callee `f` (signature `sgSi`: one `.any` parameter, any `Pre` that ignores the
locals) gives `g`'s `CondCost` with the same `Pre`, bound `1 + B + 0 + 0`. `G` and `Pre` hold at
the call because `var e = 0` changes only a local; the handler (`!st8; throw`) is all-states.

This is the `G`-level analogue of `Band.dwnm_costP` (T1): a band function whose only
conditional callee receives its own arguments. `attempt_l2 … attempt_l7` are instances here.
`attempt_l1` waits for `run_attempt`'s `CondCost`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

/-- The signature of the `si` functions: one unconstrained parameter. -/
def sgSi : Sig := { params := [.any] }

/-- The shared body of `attempt_lk`. -/
def attBody (f E : String) (k : Nat) : ProgHOL 64 :=
  .dec (nm "e") .one (cw 0)
    (.seq (.call (some (none, some (nm E, nm "e",
        .seq (.shMemStore .op8 (.op .add [cw 2688614400, cw 70]) (lv (nm "e")))
          (.raise (nm "Fail") (cw k)))))
        (nm f) [lv (nm "si")])
      (.return (cw 0)))

theorem entry_att2 : fnEntry Guest.Software.guestFn_attempt_l2 =
    (nm "attempt_l2", [(nm "si", .one)], attBody "attempt_l1" "HdrErr" 2, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem entry_att3 : fnEntry Guest.Software.guestFn_attempt_l3 =
    (nm "attempt_l3", [(nm "si", .one)], attBody "attempt_l2" "RlpErr" 3, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem entry_att4 : fnEntry Guest.Software.guestFn_attempt_l4 =
    (nm "attempt_l4", [(nm "si", .one)], attBody "attempt_l3" "MptErr" 4, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem entry_att5 : fnEntry Guest.Software.guestFn_attempt_l5 =
    (nm "attempt_l5", [(nm "si", .one)], attBody "attempt_l4" "StateErr" 5, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem entry_att6 : fnEntry Guest.Software.guestFn_attempt_l6 =
    (nm "attempt_l6", [(nm "si", .one)], attBody "attempt_l5" "TxErr" 6, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem entry_att7 : fnEntry Guest.Software.guestFn_attempt_l7 =
    (nm "attempt_l7", [(nm "si", .one)], attBody "attempt_l6" "EvmErr" 7, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

/-- **The pass-through template.** -/
theorem att_condCost {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {g f E : String} {k : Nat}
    (hcode : guestCode (nm g) = some ([(nm "si", .one)], attBody f E k, .one))
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {B : Nat} (hf : CondCost σ guestCtx C H (nm f) sgSi Pre B) :
    CondCost σ guestCtx C H (nm g) sgSi Pre (1 + B + (0 + 0) + 0) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one hcode hl
  refine Inv.costP_dec fun s _ ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ v0 _ _ => ?_
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_call (Bh := 0 + 0) hf ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_return _))
  · rintro t _ rfl vs' hvs' callee'
    have hsi : ev (setVarHOLFinite (nm "e") v0 s) (lv (nm "si")) = some A := by
      rw [ev_lv, lk_set_ne _ _ (by decide), hloc]; exact hA
    rw [evs_cons hsi evs_nil] at hvs'
    cases hvs'
    refine ⟨Γ, p, G_congr (s := s) hH rfl rfl rfl rfl hG, ?_, hargs,
      hPre _ s _ _ rfl rfl rfl rfl hpre⟩
    show ptrsOf (callEntryStateHOLFinite (setVarHOLFinite (nm "e") v0 s) callee') = _
    unfold ptrsOf gword; exact hp
  · intro r hid hv hp' hinfo
    simp only [Option.some.injEq, Prod.mk.injEq] at hinfo
    obtain ⟨-, rfl, rfl, rfl⟩ := hinfo
    exact cost_seq (cost_shMemStore _ _ _) (cost_raise _ _)

/-- `attempt_l2 … attempt_l7` from their callees' `CondCost`s, as one chain: a `CondCost` of
`attempt_l1` gives all six. -/
theorem att_chain {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {B : Nat} (h1 : CondCost σ guestCtx C H (nm "attempt_l1") sgSi Pre B) :
    CondCost σ guestCtx C H (nm "attempt_l7") sgSi Pre (B + 6) := by
  have c i (hi : i < Guest.Software.guestAst.length) := List.getElem_mem (l := Guest.Software.guestAst) hi
  have h2 := att_condCost hH (code_of_entry (c 881 (by decide)) ⟨_, rfl⟩ entry_att2) hPre h1
  have h3 := att_condCost hH (code_of_entry (c 882 (by decide)) ⟨_, rfl⟩ entry_att3) hPre h2
  have h4 := att_condCost hH (code_of_entry (c 883 (by decide)) ⟨_, rfl⟩ entry_att4) hPre h3
  have h5 := att_condCost hH (code_of_entry (c 884 (by decide)) ⟨_, rfl⟩ entry_att5) hPre h4
  have h6 := att_condCost hH (code_of_entry (c 885 (by decide)) ⟨_, rfl⟩ entry_att6) hPre h5
  have h7 := att_condCost hH (code_of_entry (c 886 (by decide)) ⟨_, rfl⟩ entry_att7) hPre h6
  exact Inv.CalleeCostP.mono h7 (by omega)

end InitECandidate.Solver.Band

#print axioms InitECandidate.Solver.Band.att_condCost
#print axioms InitECandidate.Solver.Band.att_chain
