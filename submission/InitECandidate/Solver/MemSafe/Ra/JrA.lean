import InitECandidate.Solver.MemSafe.Ra.AttFinal

/-!
# JrFix, part A: `run_attempt`'s prefix without `JrNZ`

`journal` and `sk_buf` are first set by `state_init`, inside `run_attempt` (`research/notes/jrfix-design.md`), so `run_attempt`'s
cost must not assume `JrNZ` at entry. The prefix up to `state_init` is walked with the facts `Fz` (no `JrNZ`, no run relation):
`G`, the allocator, `ev`/`cur_cont` small, the `tSI` object at `si0`, and its first cell `si0[0] = pl0`.

* `CcPreNJ`: `Eb.CcPre` without `JrNZ`.
* `fz_set`, `fz_res`: `Fz` ignores the locals.
* `fz_sum`: a summarized callee (`SumSpecA`) keeps `Fz`.
* `fz_aw`: an above-writer (`Aw.AWSpec`) at `h0 = p.hp` keeps `Fz`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- `Eb.CcPre` without `JrNZ`: the entry of `run_attempt` (and of `verify_stateless_new_payload`) from `main`. -/
def CcPreNJ (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop) : List (ValueHOL 64) → State σ → Gam → Prop :=
  fun vs s Γ => EvCc s ∧ ∃ p, ptrsOf s = some p ∧ Pre vs s Γ p

/-- The facts carried through `run_attempt`'s prefix. -/
def Fz (si0 pl0 : BitVec 64) (Γ : Gam) (p : Ptrs) (u : State σ) : Prop :=
  G guestC (HR σ) Γ u ∧ ptrsOf u = some p ∧ EvCc u ∧ (∃ o ∈ Γ, o.base = si0 ∧ o.ty = tSI) ∧
    rd u.memory (si0 + BitVec.ofNat 64 0) = pl0

section fz
variable {si0 pl0 : BitVec 64} {Γ : Gam} {p : Ptrs}

theorem evCc_congr {u u' : State σ} (hg : u'.globals = u.globals) (h : EvCc u) : EvCc u' := by
  obtain ⟨⟨e, he, he'⟩, ⟨c, hc, hc'⟩⟩ := h
  exact ⟨⟨e, by rw [gword_congr hg]; exact he, he'⟩, ⟨c, by rw [gword_congr hg]; exact hc, hc'⟩⟩

theorem fz_res {u : State σ} (h : Fz si0 pl0 Γ p u) (l : Locs) (c : Nat) :
    Fz si0 pl0 Γ p { u with locals := l, clock := c } := by
  obtain ⟨hG, hp, hE, ho, hr⟩ := h
  exact ⟨(G_locFree Hooks.guestHooksR_lawful u l c).mpr hG, (ptrsOf_congr rfl).trans hp, evCc_congr rfl hE, ho, hr⟩

theorem fz_set {u : State σ} (h : Fz si0 pl0 Γ p u) (n : MlS) (v : ValueHOL 64) :
    Fz si0 pl0 Γ p (setVarHOLFinite n v u) :=
  fz_res h _ u.clock

theorem fz_entry {u : State σ} (h : Fz si0 pl0 Γ p u) (callee : Locs) :
    Fz si0 pl0 Γ p (callEntryStateHOLFinite u callee) :=
  fz_res h callee (u.clock - 1)

/-- The `tSI` record's first cell is a payload-record `prot` cell. -/
theorem si_cell0 {o : Obj} {u : State σ} (hG : G guestC (HR σ) Γ u) (ho : o ∈ Γ) (hb : o.base = si0) (ht : o.ty = tSI) :
    o.HasSlot 0 ∧ (guestC.ty o.ty).slot 0 = .prot ∧ o.cell 0 = si0 + BitVec.ofNat 64 0 := by
  obtain ⟨q, -, -, hL, -⟩ := hG
  have h8 := (hL.1 o ho).2.1
  have hpos := (hL.1 o ho).2.2.1
  refine ⟨by unfold Obj.HasSlot; omega, by rw [ht]; exact Hooks.si_prot 0, ?_⟩
  unfold Obj.cell; rw [hb]

/-- `Fz` across a step that keeps the payload records' `prot` cells and extends the typing. -/
theorem fz_step {Γ' : Gam} {p' : Ptrs} {u t : State σ} (h : Fz si0 pl0 Γ p u) (hG' : G guestC (HR σ) Γ' t)
    (hp' : ptrsOf t = some p') (hE' : EvCc t) (hext : Ext Γ Γ') (hpk : PlKeep Γ u t) :
    Fz si0 pl0 Γ' p' t := by
  obtain ⟨hG, -, -, ⟨o, ho, hb, ht⟩, hr⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := hext o ho
  obtain ⟨hk, hs, hc⟩ := si_cell0 hG ho hb ht
  have hkeep := hpk o ho (by rw [ht]; decide) 0 hk hs
  rw [hc] at hkeep
  exact ⟨hG', hp', hE', ⟨o', ho', hb'.trans hb, ht'.trans ht⟩, hkeep.trans hr⟩

/-- **A summarized callee keeps `Fz`.** -/
theorem fz_sum {sg : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {u t : State σ} {v : ValueHOL 64}
    (hR : Good (some (PanSemResultExact.returned v)) → ¬ Abortive (PanSemResultExact.returned v) → ∀ Γ, G guestC (HR σ) Γ u →
      (∃ p, ptrsOf u = some p ∧ ArgsOK guestC Γ p sg.params vs) → Pre vs u Γ →
      ∃ Γ' p p', SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ PW vs u Γ a) Γ u vs (.returned v) t Γ' p p' ∧
        Q vs u Γ (.returned v) t Γ')
    (hz : Fz si0 pl0 Γ p u) (hargs : ArgsOK guestC Γ p sg.params vs) (hpre : Pre vs u Γ)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hB : ∀ a, PW vs u Γ a → ¬ PlCell Γ a) :
    ∃ Γ' p', Fz si0 pl0 Γ' p' t ∧ Ext Γ Γ' ∧ Q vs u Γ (.returned v) t Γ' ∧
      SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ PW vs u Γ a) Γ u vs (.returned v) t Γ' p p' := by
  obtain ⟨Γ', p0, p', hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hz.1 ⟨p, hz.2.1, hargs⟩ hpre
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hz.2.1)
  have hst := stepD_of_core hz.1 hc
  have hpk : PlKeep Γ u t := plKeep_of_sumCore hz.1 hargs hc (fun a h => hB a h.2)
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hglob := hc.2.2.2.2.2.2.2.1
  have hE' : EvCc t := by
    obtain ⟨⟨e, he, hs⟩, ⟨c, hc', hs'⟩⟩ := hz.2.2.1
    exact ⟨⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs⟩,
      ⟨c, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact hc', hs'⟩⟩
  exact ⟨Γ', p', fz_step hz hst.hG' hst.hp' hE' hst.ext hpk, hst.ext, hq, hc⟩

/-- **An above-writer at `h0 = p.hp` keeps `Fz`** (the typing must be `CPre`: heap objects only, all below the heap pointer). -/
theorem fz_aw {P : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    {vs : List (ValueHOL 64)} {u : State σ} {v : ValueHOL 64} {t : State σ}
    (hR : ∀ v', PanSemResultExact.returned v = .returned v' → ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs),
      G guestC (HR σ) Γ u → ptrsOf u = some p → Aw.Below Γ h0 → h0 % 8 = 0 → heapBase ≤ h0 → h0 ≤ p.hp → P vs u h0 →
      ∃ (Γ' : Gam) (p' : Ptrs), G guestC (HR σ) Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
        Aw.Below Γ' h0 ∧ p.Mono p' ∧
        ModifiesOnly (fun x => h0 ≤ x.toNat ∨ WCell guestC Γ x ∨ ¬ p.Allocated x.toNat) u.memory t.memory ∧
        (∀ g ∈ guestC.PG, g ∉ ([] : List MlS) → t.globals.lookup g = u.globals.lookup g) ∧ Post vs u v' t)
    (hz : Fz si0 pl0 Γ p u) (hC : CPre Γ) (hP : P vs u p.hp) :
    ∃ Γ' p', Fz si0 pl0 Γ' p' t ∧ Ext Γ Γ' ∧ Post vs u v t := by
  obtain ⟨hG, hp, hE, -, -⟩ := id hz
  have hord := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq.symm.trans hp)).symm
  have hB : Aw.Below Γ p.hp := below_cpre hC hL
  obtain ⟨Γ', p', hG', hp', hext, -, -, -, hmod, hpg, hpost⟩ :=
    hR v rfl Γ p.hp p hG hp hB (by have := hord; unfold Ptrs.Ordered at this; omega)
      (by have := hord; unfold Ptrs.Ordered at this; omega) (le_refl _) hP
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hE' : EvCc t := by
    obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ := hE
    refine ⟨⟨e, ?_, hs1⟩, ⟨c, ?_, hs2⟩⟩
    · unfold gword; rw [hpg _ hF.pgEv (by simp)]; exact he
    · unfold gword; rw [hpg _ hF.pgCC (by simp)]; exact hc'
  have hpk : PlKeep Γ u t := by
    refine plKeep_iff.mpr fun a ha => ?_
    have hpa : ProtCell guestC Γ a := plCell_prot ha
    have hlt := prot_lt_below hB hord hL hpa
    have := hmod a (by
      rintro (h | h | h)
      · omega
      · exact prot_notW hord hL hpa h
      · exact h (prot_alloc hord hL hpa))
    unfold rd; rw [this]
  exact ⟨Γ', p', fz_step hz hG' hp' hE' hext hpk, hext, hpost⟩

end fz

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.fz_sum
#print axioms InitECandidate.Solver.MemSafe.Att.fz_aw
