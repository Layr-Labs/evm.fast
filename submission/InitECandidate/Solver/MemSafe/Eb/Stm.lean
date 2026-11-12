import InitECandidate.Solver.MemSafe.Eb.AllocG

/-!
# `execute_block`: stores into block cells

`hn_stBlkV`: `st a, e` into a `prot` cell of a block object; the walk records the written value as a `cellv` fact. The facts
that read the cell must be dropped before.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem ebRun_store_blk {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p) {M : Obj} (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys) {k : Nat} (hk : M.HasSlot k)
    (hp : (guestC.ty M.ty).slot k = .prot) (x : BitVec 64) :
    EbRun Γ0 s0 p0 Γ { u with memory := Frames.upd u.memory (M.cell k) x } p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := h
  refine ⟨h1, (ptrsOf_congr rfl).trans h2, h3, h4, h5, D0.G_st_block h6 hM hMt hk hp x,
    jrNZ_congr (s := u) rfl h9, ?_, ?_, h12⟩
  · obtain ⟨e, he, hs⟩ := h10; exact ⟨e, he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11; exact ⟨e, he, hs⟩

theorem plCell_ne_bCell {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ) {y c : BitVec 64}
    (hy : PlCell Γ y) (hc : BCell guestC Γ c) : y ≠ c := by
  rintro rfl
  obtain ⟨o, ho, hty, k, hk, -, he⟩ := hy
  obtain ⟨o', ho', hty', k', hk', -, he'⟩ := hc
  obtain ⟨rfl, -⟩ := cell_inj hord hL ho ho' hk hk' (he.symm.trans he')
  have h1 : o.ty ∈ blockTys ++ PlTys := List.mem_append.mpr (Or.inr hty)
  have h2 := ownBase_big
  simp only [PlTys, blockTys, List.mem_cons, List.not_mem_nil, or_false] at hty hty'
  rcases hty with h | h | h | h <;> rcases hty' with h' | h' | h' <;> rw [h] at h' <;> exact absurd h' (by decide)

section st
variable {E : EbE σ} {En : Env} {S : FS}

theorem hn_stBlkV {a e : ExpHOL 64} {c x : BitVec 64}
    (hcell : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → EvI s a (.val (.word c)) ∧ EvI s e (.val (.word x)) ∧
      ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧
        (guestC.ty M.ty).slot k = .prot ∧ c = M.cell k)
    (hfree : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → y ≠ c) :
    HN (PA E En S) (.store a e) (PA E En (fun f => S f ∨ f = Fct.cellv c x)) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨hea, hee, M, k, hM, hMt, hk, hp, hcM⟩ := hcell s hpa Γ p hr hL
  have hw' := hea _ hw
  have hv' := hee _ hv
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw' hv'
  subst hw' hv'
  subst hcM
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  have hr' := ebRun_store_blk hr hM hMt hk hp x
  refine ⟨rfl, ⟨Γ, p, hr', ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { s with memory := Frames.upd s.memory (M.cell k) x } :=
    ⟨ebRun_ptrs hr, ebRun_ptrs hr', mono_g_refl (ebRun_ord hr), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ebRun_G hr, ebRun_G hr'⟩
  have hbc : BCell guestC Γ (M.cell k) := ⟨M, hM, hMt, k, hk, hp, rfl⟩
  have h1 : HoldsAll E.p0 Γ p { s with memory := Frames.upd s.memory (M.cell k) x } S := by
    refine holds_step hstep (ebRun_ord0 hr) ?_ (fun _ _ _ _ => rfl) (fun _ _ _ => rfl) hL
    intro f hf a' ha'
    have hne : a' ≠ M.cell k := by
      by_cases hpc : ∃ a'' v'', f = Fct.pcv a'' v''
      · obtain ⟨a'', v'', rfl⟩ := hpc
        have hh := hL _ hf
        obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
        obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
        exact (show a' = a'' from ha') ▸ plCell_ne_bCell hord hL0 hh.2 hbc
      · push_neg at hpc
        exact hfree s hpa Γ p hr hL f hf (fun a v h => hpc a v h) a' ha'
    show Frames.upd s.memory _ x a' = _
    exact Frames.upd_ne _ _ hne
  intro f hf
  rcases hf with hf | rfl
  · exact h1 f hf
  · exact ⟨rd_upd_self _ _ _, M, hM, hMt, k, hk, hp, rfl⟩

end st

end InitECandidate.Solver.MemSafe.Eb
