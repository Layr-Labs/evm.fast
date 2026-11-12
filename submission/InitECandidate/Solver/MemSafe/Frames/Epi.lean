import InitECandidate.Solver.MemSafe.Frames.Run
import InitECandidate.Solver.Spec.StateRestore

/-!
# `frame_epilogue`: code, summary, cost

```
fun 1 frame_epilogue() {
  if (lds 1 (ev + EV_ERROR)) != 0 { state_restore(lds 1 (cur_cont + CK_SNAPSHOT)); }
  return 0; }
```

* **`epi_sumSpec`**: from a plain summary of `state_restore` that keeps `frame_mem_ptr`
  (`SummFp`; any signature with one unconstrained argument that does not write `ev` /
  `cur_cont`), `frame_epilogue` has the
  `Bundle`'s summary (`PreInv`, `QEpi`): `G` and `Chain` are kept and `Φ` is unchanged.
* `epi_cost`: the all-states cost `1 + (1 + Bsr + 0)` from `state_restore`'s (which
  `Spec/StateRestore.lean` proves from those of `htab_set` / `htab_del`), hence `epi_condCost`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def epiBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (gLoad "ev" 160) (cw 0))
      (callD (nm "state_restore") [gLoad "cur_cont" 24]) .skip)
    (.return (cw 0))

theorem entry_epi : fnEntry Guest.Software.guestFn_frame_epilogue =
    (nm "frame_epilogue", [], epiBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_epi : guestCode (nm "frame_epilogue") = some ([], epiBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 582) (by decide)) ⟨_, rfl⟩
    entry_epi

/-- The facts carried through a frame-driver body that only calls plain summaries. -/
def Kept (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gw : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (fs : List Frame) (u : State σ) : Prop :=
  ∃ Γ' p', Run C H gw Γ s0 Γ' u p p' ∧ ChainL C tEV tCK Γ' u fs ∧ Phi u = Phi s0

theorem kept_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {gw : List MlS}
    {Γ : Gam} {s0 : State σ} {p : Ptrs} {fs : List Frame} {u : State σ}
    (h : Kept C H tEV tCK gw Γ s0 p fs u) (l : Locs) :
    Kept C H tEV tCK gw Γ s0 p fs { u with locals := l } := by
  obtain ⟨Γ', p', hr, hc, hΦ⟩ := h
  exact ⟨Γ', p', run_locals hH hr l, chainL_congr (s := u) (s' := { u with locals := l }) rfl rfl hc, by rw [phi_locFree.loc]; exact hΦ⟩

/-- The relation of a plain, `frame_mem_ptr`-keeping summary (`SummFp`) for one call. -/
def SumRel (C : Cfg) (H : Hooks σ) (sg : Sig) (vs : List (ValueHOL 64)) (s : State σ)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) →
    True → ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p' ∧
      ∀ q q', ptrsOf s = some q → ptrsOf t = some q' → q'.fp = q.fp

theorem summ_rel {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} (h : SummFp σ X C H f sg) :
    FunSpec σ X f (fun vs s r t => SumRel C H sg vs s r t) := h

/-- A call to a plain summary from a kept state is kept (any good result). -/
theorem kept_call {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {sg : Sig}
    (hps : ∀ pt ∈ sg.params, pt = .any) {gw : List MlS} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) {Γ : Gam} {s0 : State σ} {p : Ptrs} (hG0 : G C H Γ s0)
    {fs : List Frame} {s : State σ} (hk : Kept C H tEV tCK gw Γ s0 p fs s)
    {vs : List (ValueHOL 64)} (hlen : vs.length = sg.params.length) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRel C H sg vs (callEntryStateHOLFinite s callee) r st) (hg : Good (some r)) :
    Kept C H tEV tCK gw Γ s0 p fs st := by
  obtain ⟨Γ1, p1, hrun, hch, hΦ⟩ := hk
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) := (G_locFree hF.hooks s _ _).mpr hG1
  have ⟨q, hq, _⟩ := hGe
  obtain ⟨Γ2, q1, q2, hc, hfp⟩ := hR hg Γ1 hGe ⟨q, hq, argsOK_any hps hlen⟩ trivial
  have hq1 : q1 = p1 := by
    have := hc.1
    rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl,
      hrun.2.1, Option.some.injEq] at this
    exact this.symm
  subst hq1
  have hrun2 : Run C H gw Γ1 s Γ2 st q1 q2 := run_entry callee (run_of_sumCore hps hsub hc)
  have hch2 := chain_of_sumCore hF hps hgw hGe hc (hfp _ _ hc.1 hc.2.1)
    (chainL_congr (s := s) (s' := callEntryStateHOLFinite s callee) rfl rfl hch)
  refine ⟨Γ2, q2, run_trans hG0 hrun hrun2, hch2.1, ?_⟩
  rw [hch2.2, phi_locFree.entry, hΦ]

theorem kept_refl {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {gw : List MlS} {Γ : Gam}
    {s0 : State σ} {p : Ptrs} (hG0 : G C H Γ s0) (hp : ptrsOf s0 = some p) {fs : List Frame}
    (hch : ChainL C tEV tCK Γ s0 fs) : Kept C H tEV tCK gw Γ s0 p fs s0 :=
  ⟨Γ, p, run_refl hG0 hp, hch, rfl⟩

/-! ## The summary -/

/-- **`frame_epilogue`'s summary** (the `Bundle` entry `epiSum`). -/
theorem epi_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) {gw : List MlS} (hgw : nmEv ∉ gw ∧ nmCC ∉ gw)
    (hsr : SummFp σ X C H (nm "state_restore") (sg1 gw)) (M : Nat) :
    SumSpec σ X C H (nm "frame_epilogue") (sg0 gw) (PreInv C tEV tCK M) (fun _ _ _ _ => True)
      (QEpi C tEV tCK) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg Γ hG _ ⟨⟨fs, hch⟩, _⟩
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_epi hl
  have ⟨p, hps, _⟩ := hG
  have hsub : ∀ g, g ∈ (sg1 gw).gw → g ∈ gw := fun g h => h
  have H0 : HoareG σ X (fun u => u = s0) epiBody
      (fun ro t => ∀ r, ro = some r → Kept C H tEV tCK gw Γ s0 p fs t) := by
    refine hoareG_seq (R := fun _ u => Kept C H tEV tCK gw Γ s0 p fs u) ?_
      (fun r t _ _ _ h _ _ => h) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_callD (summ_rel hsr) ?_ ?_
        · intro s _ ⟨hs, _⟩ vs hvs callee v st hR _
          subst hs
          exact kept_locals hF.hooks (kept_call hF (any_sg1 gw) hsub hgw hG (kept_refl hG hps hch)
            (evs_one hvs) hR (by simp [Good])) _
        · intro s _ ⟨hs, _⟩ vs hvs callee r st hR _ habn
          subst hs
          exact kept_locals hF.hooks (kept_call hF (any_sg1 gw) hsub hgw hG (kept_refl hG hps hch)
            (evs_one hvs) hR (good_of_abn habn)) _
      · exact hoareG_skip fun s _ ⟨hs, _⟩ => by subst hs; exact kept_refl hG hps hch
    · refine hoareG_return fun u _ hu v _ => ?_
      intro rr _
      exact kept_locals hF.hooks hu _
  obtain ⟨Γ', p', hrun, hch', hΦ'⟩ := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr
  exact ⟨Γ', p, p', sumCore_of_run rfl rfl hrun, fun v _ => ⟨⟨fs, hch'⟩, le_of_eq hΦ'⟩⟩

/-! ## The cost -/

theorem epi_cost (hC : X.code.lookup = guestCode) {Bsr : Nat}
    (hsr : CalleeCost σ X (nm "state_restore") Bsr) :
    CalleeCost σ X (nm "frame_epilogue") (max (1 + Bsr + 0) 0 + 0) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_epi hl
  exact cost_seq (cost_ite (cost_call hsr (fun _ _ _ _ h => by cases h)) cost_skip) (cost_return _)

/-- The `Bundle` entry `epiCost`. -/
theorem epi_condCost {C : Cfg} {H : Hooks σ} {tEV tCK M : Nat} (hC : X.code.lookup = guestCode)
    {Bsr : Nat} (hsr : CalleeCost σ X (nm "state_restore") Bsr) :
    CondCost σ X C H (nm "frame_epilogue") (sg0 []) (PreInv C tEV tCK M) (max (1 + Bsr + 0) 0 + 0) :=
  Spec.Inv.calleeCostP_of_calleeCost (epi_cost hC hsr)

end InitECandidate.Solver.MemSafe.Frames
