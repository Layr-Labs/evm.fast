import InitECandidate.Solver.MemSafe.Bal.EnsureCode
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The hook of a `tAD` object is trivial (no record entry for it, no table / list / journal hook). -/
theorem wf_AD (Γ : Gam) (s : State σ) (o : Obj) (h : o.ty = tAD) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  rw [guestHooksR, extR_wf]
  refine ⟨⟨⟨gwf_none ?_, fun hj => absurd (h.symm.trans hj) (by decide)⟩,
    fun hl => absurd (h ▸ hl) (by decide)⟩, ?_⟩
  · rw [h]; decide
  · intro e he hty
    have := recTab_ty he
    rw [hty, h] at this
    exact absurd this (by decide)

section call
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- **One summarised call** from a tracked state: the tracking continues in the callee's final state. -/
theorem call_cs (hH : HooksLawful guestC H) {Γ : Gam} {u : State σ}
    (hT : Struct.Trk guestC H Γ0 s0 p0 PW Γ u) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {st : State σ}
    (hS : Good (some r) → ¬ Abortive r → ∀ Γ', G guestC H Γ' (callEntryStateHOLFinite u callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite u callee) = some p ∧ ArgsOK guestC Γ' p sg.params vs) →
      Pre vs (callEntryStateHOLFinite u callee) Γ' →
      ∃ Γ1 p p', SumCore guestC H sg (fun a => ProtCell guestC Γ' a ∧ PW' vs (callEntryStateHOLFinite u callee) Γ' a)
          Γ' (callEntryStateHOLFinite u callee) vs r st Γ1 p p' ∧
        Q vs (callEntryStateHOLFinite u callee) Γ' r st Γ1)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ∃ p, ptrsOf u = some p ∧ ArgsOK guestC Γ p sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ)
    (hgw : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell guestC Γ a → PW' vs (callEntryStateHOLFinite u callee) Γ a → PW a)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    ∃ Γ1 p p', SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW' vs (callEntryStateHOLFinite u callee) Γ a)
        Γ (callEntryStateHOLFinite u callee) vs r st Γ1 p p' ∧
      Q vs (callEntryStateHOLFinite u callee) Γ r st Γ1 ∧ Struct.Trk guestC H Γ0 s0 p0 PW Γ1 st := by
  have hGe : G guestC H Γ (callEntryStateHOLFinite u callee) :=
    Struct.G_congr (s := u) hH rfl rfl rfl rfl (Struct.trk_G hT)
  obtain ⟨p, hp, hA⟩ := hargs
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p := (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨Γ1, q, q', hc, hq⟩ := hS hgood hna Γ hGe ⟨p, hpe, hA⟩ hpre
  exact ⟨Γ1, q, q', hc, hq, Struct.trk_call hT hord0 hL0 rfl rfl hc hgw hArg hPW hd hbe⟩

end call

end InitECandidate.Solver.MemSafe.Bal
