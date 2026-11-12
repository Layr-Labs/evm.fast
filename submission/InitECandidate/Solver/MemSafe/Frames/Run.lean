import InitECandidate.Solver.MemSafe.Frames.Frame

/-!
# Runs: composing callee summaries inside a hand-proved body

`Run C H gw Γ s Γ' t p p'`: from `s` (typing `Γ`, allocator `p`) to `t` (typing `Γ'`, allocator
`p'`) the allocator moved monotonically, `Γ'` extends `Γ` with new objects in fresh space, `G`
holds at `t`, memory changed only in cells of `Γ` objects or unallocated space (`Foot`), and the
protected globals outside `gw` are unchanged.

* `run_refl`, `run_trans`, `run_locals` (caller locals restored);
* `run_of_sumCore`: a callee summary with unconstrained arguments, entered from the caller's
  state, is a run;
* `sumCore_of_run`: a run is a `SumCore` with `PW = True` (for argument-buffer-free signatures).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The footprint of a hand-proved driver function: any cell of a `Γ` object, or unallocated
space. -/
def Foot (C : Cfg) (Γ : Gam) (p : Ptrs) (a : BitVec 64) : Prop :=
  WCell C Γ a ∨ ProtCell C Γ a ∨ ¬ p.Allocated a.toNat

/-- A run from `s` to `t`. -/
def Run (C : Cfg) (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s : State σ) (Γ' : Gam)
    (t : State σ) (p p' : Ptrs) : Prop :=
  ptrsOf s = some p ∧ ptrsOf t = some p' ∧ p.Mono p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
    G C H Γ' t ∧ ModifiesOnly (Foot C Γ p) s.memory t.memory ∧
    ∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s.globals.lookup g

section run
variable {C : Cfg} {H : Hooks σ}

theorem run_refl {gw : List MlS} {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G C H Γ s)
    (hp : ptrsOf s = some p) : Run C H gw Γ s Γ s p p :=
  ⟨hp, hp, mono_refl p, ext_refl Γ, newFresh_refl Γ p, hG, fun _ _ => rfl, fun _ _ _ => rfl⟩

theorem mono_trans {p p1 p2 : Ptrs} (h1 : p.Mono p1) (h2 : p1.Mono p2) : p.Mono p2 :=
  ⟨le_trans h1.1 h2.1, le_trans h1.2.1 h2.2.1, le_trans h2.2.2 h1.2.2⟩

theorem ext_trans {Γ Γ1 Γ2 : Gam} (h1 : Ext Γ Γ1) (h2 : Ext Γ1 Γ2) : Ext Γ Γ2 := by
  intro o ho
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := h1 o ho
  obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := h2 o1 ho1
  exact ⟨o2, ho2, hb2.trans hb1, ht2.trans ht1, le_trans hs1 hs2⟩

theorem fresh_mono_l {p p1 p2 : Ptrs} (h1 : p.Mono p1) (h2 : p1.Mono p2) {a : BitVec 64}
    (h : Fresh p p1 a) : Fresh p p2 a := by
  unfold Fresh at *
  obtain ⟨m1, m2, m3⟩ := h1
  obtain ⟨n1, n2, n3⟩ := h2
  omega

theorem fresh_mono_r {p p1 p2 : Ptrs} (h1 : p.Mono p1) (h2 : p1.Mono p2) {a : BitVec 64}
    (h : Fresh p1 p2 a) : Fresh p p2 a := by
  unfold Fresh at *
  obtain ⟨m1, m2, m3⟩ := h1
  obtain ⟨n1, n2, n3⟩ := h2
  omega

theorem newFresh_trans {Γ Γ1 Γ2 : Gam} {p p1 p2 : Ptrs} (hm1 : p.Mono p1) (hm2 : p1.Mono p2)
    (h1 : NewFresh Γ Γ1 p p1) (h2 : NewFresh Γ1 Γ2 p1 p2) : NewFresh Γ Γ2 p p2 := by
  intro o ho a ha1 ha2
  rcases h2 o ho a ha1 ha2 with ⟨o1, ho1, hb1, ht1, hl1, hh1⟩ | hf
  · rcases h1 o1 ho1 a hl1 hh1 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hl0, hh0⟩
    · exact Or.inr (fresh_mono_l hm1 hm2 hf)
  · exact Or.inr (fresh_mono_r hm1 hm2 hf)

theorem allocated_mono {p p' : Ptrs} (hm : p.Mono p') {a : Nat} (h : p.Allocated a) :
    p'.Allocated a := by
  unfold Ptrs.Allocated at *
  obtain ⟨m1, m2, m3⟩ := hm
  omega

theorem fresh_not_alloc {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered) (hm : p.Mono p')
    {a : BitVec 64} (h : Fresh p p' a) : ¬ p.Allocated a.toNat := by
  unfold Fresh Ptrs.Allocated at *
  unfold Ptrs.Ordered at hp hp'
  obtain ⟨m1, m2, m3⟩ := hm
  have : heapEnd ≥ heapBase := by decide
  omega

/-- A slot cell of an object of `Γ'` that keeps (base and type of) an object of `Γ` is a slot
cell of that object, or fresh. -/
theorem foot_mono {Γ Γ' : Gam} {p p' : Ptrs} (hp : p.Ordered) (hL : Layout C p Γ)
    (hp' : p'.Ordered) (hL' : Layout C p' Γ') (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    {a : BitVec 64} (ha : ¬ Foot C Γ p a) : ¬ Foot C Γ' p' a := by
  have hal : p.Allocated a.toNat := by
    by_contra h; exact ha (Or.inr (Or.inr h))
  have hcell : ∀ o' ∈ Γ', ∀ k, o'.HasSlot k → a = o'.cell k → False := by
    intro o' ho' k hk he
    have hin : InO o' a := by
      rw [he]; unfold Obj.HasSlot at hk; exact inO_cell hp' hL' ho' (k := 8 * k) (by omega)
    rcases hnf o' ho' a hin.1 hin.2 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
    · -- `a` is slot `k` of `o0`
      have hal0 := (hL.1 o0 ho0)
      have hal0' := (hL'.1 o' ho')
      have hk0 : o0.HasSlot k := by
        unfold Obj.HasSlot at hk ⊢
        have e1 := cell_addr hp' hL' ho' (k := 8 * k) (by omega)
        rw [← Obj.cell, ← he] at e1
        unfold Obj.lo Obj.hi at *
        rw [hb0] at hl0 hh0
        omega
      have hc : a = o0.cell k := by rw [he]; unfold Obj.cell; rw [hb0]
      by_cases hpr : (C.ty o0.ty).slot k = .prot
      · exact ha (Or.inr (Or.inl ⟨o0, ho0, k, hk0, hpr, hc⟩))
      · exact ha (Or.inl ⟨o0, ho0, k, hk0, hpr, hc⟩)
    · exact fresh_not_alloc hp hp' hm hf hal
  rintro (⟨o', ho', k, hk, -, he⟩ | ⟨o', ho', k, hk, -, he⟩ | h)
  · exact hcell o' ho' k hk he
  · exact hcell o' ho' k hk he
  · exact h (allocated_mono hm hal)

theorem run_trans {gw : List MlS} {Γ Γ1 Γ2 : Gam} {s t1 t2 : State σ} {p p1 p2 : Ptrs}
    (hG : G C H Γ s) (h1 : Run C H gw Γ s Γ1 t1 p p1) (h2 : Run C H gw Γ1 t1 Γ2 t2 p1 p2) :
    Run C H gw Γ s Γ2 t2 p p2 := by
  obtain ⟨hp, hp1, hm1, he1, hn1, hG1, hmod1, hg1⟩ := h1
  obtain ⟨hp1', hp2, hm2, he2, hn2, hG2, hmod2, hg2⟩ := h2
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  rw [hp, Option.some.injEq] at hq
  subst hq
  obtain ⟨q1, hq1, hord1, hL1, -⟩ := hG1
  rw [hp1, Option.some.injEq] at hq1
  subst hq1
  refine ⟨hp, hp2, mono_trans hm1 hm2, ext_trans he1 he2, newFresh_trans hm1 hm2 hn1 hn2, hG2,
    ?_, fun g hg hgw => (hg2 g hg hgw).trans (hg1 g hg hgw)⟩
  intro a ha
  rw [hmod2 a (foot_mono hord hL hord1 hL1 hm1 hn1 ha), hmod1 a ha]

/-- Restoring the caller's locals. -/
theorem run_locals {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} (hH : HooksLawful C H)
    (h : Run C H gw Γ s Γ' t p p') (l : Locs) : Run C H gw Γ s Γ' { t with locals := l } p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  exact ⟨h1, by rw [ptrsOf_congr rfl]; exact h2, h3, h4, h5, (G_locFree hH t l t.clock).mpr h6, h7, h8⟩

theorem run_emptyLocals {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (hH : HooksLawful C H) (h : Run C H gw Γ s Γ' t p p') :
    Run C H gw Γ s Γ' (emptyLocalsHOLFinite t) p p' := run_locals hH h _

/-- The entry state of a call. -/
theorem run_entry {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} (callee : Locs)
    (h : Run C H gw Γ (callEntryStateHOLFinite s callee) Γ' t p p') : Run C H gw Γ s Γ' t p p' :=
  h

/-- **A callee summary as a run** (unconstrained arguments, protected writes `PW`). -/
theorem run_of_sumCore {sg : Sig} (hps : ∀ pt ∈ sg.params, pt = .any) {gw : List MlS}
    (hgw : ∀ g, g ∈ sg.gw → g ∈ gw) {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW a) Γ s vs r t Γ' p p') :
    Run C H gw Γ s Γ' t p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, hpg, -, -⟩ := hc
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => hmod a ?_, fun g hg hg' => hpg g hg (fun h => hg' (hgw g h))⟩
  rintro (h | ⟨i, w, -, hb⟩ | h | ⟨h, -⟩)
  · exact ha (Or.inl h)
  · rcases hb with ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩
    · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)
    · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)
  · exact ha (Or.inr (Or.inr h))
  · exact ha (Or.inr (Or.inl h))

/-- **A run as a summary core** (argument-buffer-free signature, `PW = True`, no result typing). -/
theorem sumCore_of_run {sg : Sig} (hret : sg.ret = []) (hgrow : sg.grows = true) {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : Run C H sg.gw Γ s Γ' t p p') :
    SumCore C H sg (fun a => ProtCell C Γ a ∧ True) Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, hpg⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => hmod a ?_, hpg,
    fun h => absurd (hgrow.symm.trans h) (by decide), fun v _ i rt w hrt => ?_⟩
  swap
  · rw [hret] at hrt; simp at hrt
  rintro (h | h | h)
  · exact ha (Or.inl h)
  · exact ha (Or.inr (Or.inr (Or.inr ⟨h, trivial⟩)))
  · exact ha (Or.inr (Or.inr (Or.inl h)))

end run

end InitECandidate.Solver.MemSafe.Frames
