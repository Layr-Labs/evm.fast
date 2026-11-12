import InitECandidate.Solver.Band.Attempt
import InitECandidate.Solver.Band.Disp

/-!
# `incorporate_tx_into_block` (sonnet-band)

```
fun 1 incorporate_tx_into_block() {
  update_builder_from_tx();
  merge_tx_into_block();
  return 0;
}
```
A `CondCost` pass-through (Attempt template T4, but with no `var e = 0` prefix and no handler):
the conditional callee is `update_builder_from_tx`, whose `CondCost` (band function #22, "needs
design": three loops, `idx_start_storage` inside) is the **hypothesis `hU`** (precisely: same
signature `sg` with `sg.params = []`, same `Pre`, any bound `BU`).  `merge_tx_into_block` is a
table entry (`bMerge`).  The result has the same `Pre` (which must be invariant under changing
only locals, `hPre`) and bound `1 + BU + 0 + ((1 + bMerge + 0) + 0)`.
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

def itbBody : ProgHOL 64 :=
  .seq (callD (nm "update_builder_from_tx") [])
    (.seq (callD (nm "merge_tx_into_block") []) (.return (cw 0)))

theorem entry_itb : fnEntry Guest.Software.guestFn_incorporate_tx_into_block =
    (nm "incorporate_tx_into_block", [], itbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_itb : guestCode (nm "incorporate_tx_into_block") = some ([], itbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 428) (by decide)) ⟨_, rfl⟩
    entry_itb

def bMerge : Nat :=
  115792089237316195806474190867275434631345899985535924178223997904058262225658

theorem incorporate_condCost {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hPre : ∀ vs (s t : State σ) Γ, t.memory = s.memory → t.globals = s.globals →
      t.memaddrs = s.memaddrs → t.be = s.be → Pre vs s Γ → Pre vs t Γ)
    {BU : Nat} (hU : CondCost σ guestCtx C H (nm "update_builder_from_tx") sg Pre BU) :
    CondCost σ guestCtx C H (nm "incorporate_tx_into_block") sg Pre
      (1 + BU + 0 + ((1 + bMerge + 0) + 0)) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, rfl⟩ := lookupCode_nil code_itb hl
  unfold itbBody
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_callD hU ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_call
      (MemSafe.Wire.calleeCost_guest (f := nm "merge_tx_into_block") (B := bMerge) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _)))
  rintro s _ ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ vs' hvs' callee'
  rw [evs_nil] at hvs'
  cases hvs'
  refine ⟨Γ, p, G_congr (s := s) hH rfl rfl rfl rfl hG, ?_, hargs,
    hPre _ s _ _ rfl rfl rfl rfl hpre⟩
  show ptrsOf (callEntryStateHOLFinite s callee') = _
  unfold ptrsOf gword; exact hp

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.incorporate_condCost
