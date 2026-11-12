import InitECandidate.Solver.MemSafe.Inc.Ics
import InitECandidate.Solver.MemSafe.FpKeep
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.LogQ

/-!
# `incorporate_child_on_success`: the summary (`Frames.FinHyps.ic` shape)

`sumSpec_ics`: generic in the hook family (`HooksMono`, `LstHooks`, `HtabHooks`, the EV driver slots
outside every hook footprint), at any `gw`. Pre = `FinHyps.ic`'s Pre plus `IcsX` (`IcsPre`); PW =
`PWtopMI [8, 9, 12, 23, 24]` (= `Frames.PWtopM tEV tCK`: also outside every message record, frames8);
Post = `FQI` and the gas bound (`IcsQ`). `sumSpec_icsJL`: the
`guestHooksJL` instance.

The local predicates are definitional copies of the frame ones (`EvRunI` = `Frames.EvRun tEV`,
`PWtopI` = `Frames.PWtop tEV tCK`, `PWtopMI` = `Frames.PWtopM tEV tCK`, `FQI` = `Frames.FQ` up
to the unused arguments, `sgAI` =
`Frames.sgA`, `fldI` = `Frames.fld`).
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Inc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `FinHyps.ic`'s Pre, plus the extra facts `IcsX` (log list at `e[88]`, deletion tables at
`e[136]` / `c[136]` of one header type, distinct). -/
def IcsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ e c, EvRunI Γ s e ∧ vs = [.val (.word c)] ∧ (∃ o ∈ Γ, o.base = c ∧ o.ty = tEV) ∧ c ≠ e.base ∧
    ∀ p, ptrsOf s = some p → IcsX Γ s.memory p.hp e.base c

/-- `FinHyps.ic`'s Post: `FQ`, the gas bound, and `LogQ` (the lists afterwards are described by
`LogSub`). -/
def IcsQ (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  (FQI s r t ∧ ∀ e c, gword s nEv = some e → vs = [.val (.word c)] →
    (fldI t.memory e 64).toNat + (fldI t.memory e 192).toNat ≤
      (fldI s.memory e 64).toNat + (fldI s.memory e 192).toNat + (fldI s.memory c 64).toNat +
        (fldI s.memory c 192).toNat) ∧ LogQ vs s Γ r t Γ'

theorem fpq_of_lookup {s t : State σ} (h : t.globals.lookup gFrame = s.globals.lookup gFrame)
    (p p' : Ptrs) (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') : p'.fp = p.fp := by
  have hg : gword t gFrame = gword s gFrame := by unfold gword; rw [h]
  unfold ptrsOf at hp hp'
  rw [hg] at hp'
  split at hp
  · rename_i a b c ha hb hc
    split at hp'
    · rename_i a' b' c' ha' hb' hc'
      rw [hb] at hb'
      cases hb'
      rw [← Option.some.inj hp, ← Option.some.inj hp']
    · cases hp'
  · cases hp

/-- **`incorporate_child_on_success(c)`** (generic in the hook family). -/
theorem sumSpec_ics {H : Hooks σ} {gw : List MlS} (hF : FoldOK σ X guestC H)
    (hM : HooksMono guestC H) (hLH : LstHooks H) (hT : HtabHooks H)
    (hEVh : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ Frames.evDriverSlots16, ¬ H.fp Γ s o (o'.cell j))
    (hfp : KeepsFp σ X (nm "incorporate_child_on_success")) :
    SumSpecA σ X guestC H (nm "incorporate_child_on_success") (sgAI 1 gw) IcsPre
      (PWtopMI icsKs) IcsQ := by
  refine sumSpecA_of_returns (noExc_ics hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hH := hF.hH
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_ics hl'
  obtain ⟨e0, C, ⟨he0, het, hev⟩, hvs, ⟨c0, hc0, hcb, hct⟩, hne, hX⟩ := hpre
  cases hvs
  subst hcb
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hX' := hX p0 hp0
  have hlc : s0.locals.lookup (nm "child") = some (.val (.word c0.base)) := by rw [hloc]; exact hA
  have hc : ICtx H Γ0 s0 p0 e0 c0 :=
    ⟨hord0, hL0, he0, het, hev, hc0, hct, fun h => hne (by rw [h]), hX'.1, hX'.2⟩
  have H2 := ics_hoare hF hM hLH hT hEVh hc hG0 hp0 hlc s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨Γ', hTk, h8, h24, hsub⟩ := H2 v rfl
  obtain ⟨p', hcore⟩ := trk_sumCoreA (sg := sgAI 1 gw)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ PWtopI icsKs [.val (.word c0.base)] s0 Γ0 a ∧
      NoMsgI Γ0 a)
    (vs := [.val (.word c0.base)]) (r := r) hTk hp0 (fun h => by simp [sgAI] at h)
    (fun _ _ w _ i rt w' hi _ => by simp [sgAI] at hi)
  refine ⟨Γ', p0, p', hcore, ⟨⟨?_, ?_⟩, ?_⟩, ⟨v, hv⟩, fun w hw p'' hp'' => hsub p'' hp''⟩
  · have hk := hfp [.val (.word c0.base)] _ callee _ hl s0 hs hloc r hr (by rw [hv]; simp [Good])
      (by rw [hv]; simp [Abortive])
    exact fun p p' hp hp' => fpq_of_lookup hk p p' hp hp'
  · intro w hw
    rw [hv] at hw
    cases hw
  · intro e c he hc'
    rw [hev] at he
    cases he
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hc'
    subst hc'
    have hb := gas_bound s0.memory e0 c0
    show (rd _ (e0.cell 8)).toNat + (rd _ (e0.cell 24)).toNat ≤ _
    rw [h8, h24]
    exact hb

/-- The `guestHooksJL` instance. -/
theorem sumSpec_icsJL {gw : List MlS} (hF : FoldOK σ X guestC guestHooksJL)
    (hfp : KeepsFp σ X (nm "incorporate_child_on_success")) :
    SumSpecA σ X guestC guestHooksJL (nm "incorporate_child_on_success") (sgAI 1 gw) IcsPre
      (PWtopMI icsKs) IcsQ :=
  sumSpec_ics hF guestHooksJL_mono lstHooks_guestJL htabHooks_guestJL guestHooksJL_hookEV hfp

end InitECandidate.Solver.MemSafe.Inc
