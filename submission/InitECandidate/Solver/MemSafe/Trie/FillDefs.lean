import InitECandidate.Solver.MemSafe.Trie.Nlc

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `_node_rlp_fill`: the accumulated footprint

`FoF se Nd HP0 S0 t`: since the entry state `se` (heap pointer `HP0`, scratch pointer `S0`) the allocator moved
monotonically, every global but `heap_ptr` / `scratch_ptr` is kept, and memory changed only in the cache cells of the
nodes of `Nd`, the keccak buffers, the free heap `[HP0, heapEnd)`, and the scratch records `[p'.sp, S0)`.
`StepW Nd s t`: the same relation for one step.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def FoF (se : State σ) (Nd : BitVec 64 → Prop) (HP0 S0 : Nat) (t : State σ) : Prop :=
  ∃ q : Ptrs, ptrsOf t = some q ∧ q.Ordered ∧ HP0 ≤ q.hp ∧ q.sp ≤ S0 ∧
    (∀ g, g ≠ gHeap → g ≠ gScratch → t.globals.lookup g = se.globals.lookup g) ∧
    ∀ a, t.memory a ≠ se.memory a → (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf se a ∨
      (HP0 ≤ a.toNat ∧ a.toNat < heapEnd) ∨ (q.sp ≤ a.toNat ∧ a.toNat < S0)

def StepW (S0 : Nat) (Nd : BitVec 64 → Prop) (s t : State σ) : Prop :=
  ∃ p q : Ptrs, ptrsOf s = some p ∧ ptrsOf t = some q ∧ q.Ordered ∧ p.hp ≤ q.hp ∧ q.sp ≤ p.sp ∧
    (∀ g, g ≠ gHeap → g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    ∀ a, t.memory a ≠ s.memory a → (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf s a ∨
      (p.hp ≤ a.toNat ∧ a.toNat < heapEnd) ∨ (q.sp ≤ a.toNat ∧ a.toNat < S0)

theorem foF_refl {se : State σ} {Nd : BitVec 64 → Prop} {p : Ptrs} (hp : ptrsOf se = some p)
    (ho : p.Ordered) : FoF se Nd p.hp p.sp se :=
  ⟨p, hp, ho, le_rfl, le_rfl, fun _ _ _ => rfl, fun _ h => absurd rfl h⟩

theorem foF_trans {se s t : State σ} {Nd : BitVec 64 → Prop} {HP0 S0 : Nat}
    (h : FoF se Nd HP0 S0 s) (hs : StepW S0 Nd s t) : FoF se Nd HP0 S0 t := by
  obtain ⟨q, hq, hqo, h1, h2, hg, hw⟩ := h
  obtain ⟨p, q', hp, hq', hqo', hhp, hsp, hg', hw'⟩ := hs
  rw [hq] at hp; cases hp
  have hk1 : gword s gKst = gword se gKst := by unfold gword; rw [hg _ (by decide) (by decide)]
  have hk2 : gword s gKpad = gword se gKpad := by unfold gword; rw [hg _ (by decide) (by decide)]
  refine ⟨q', hq', hqo', by omega, by omega, fun g h1 h2 => (hg' g h1 h2).trans (hg g h1 h2), fun a ha => ?_⟩
  by_cases e : s.memory a = se.memory a
  · have := hw' a (by rw [← e] at ha; exact ha)
    rcases this with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl ((kbuf_congr hk1 hk2 a).mp h))
    · exact Or.inr (Or.inr (Or.inl ⟨by omega, h.2⟩))
    · exact Or.inr (Or.inr (Or.inr ⟨h.1, by omega⟩))
  · rcases hw a e with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
    · exact Or.inr (Or.inr (Or.inr ⟨by omega, h.2⟩))

theorem stepW_trans {S0 : Nat} {Nd : BitVec 64 → Prop} {s t u : State σ}
    (h1 : StepW S0 Nd s t) (h2 : StepW S0 Nd t u) : StepW S0 Nd s u := by
  obtain ⟨p, q, hp, hq, o1, a1, a2, a3, a4⟩ := h1
  obtain ⟨q', r, hq', hr, o2, b1, b2, b3, b4⟩ := h2
  rw [hq] at hq'; cases hq'
  have hk1 : gword t gKst = gword s gKst := by unfold gword; rw [a3 _ (by decide) (by decide)]
  have hk2 : gword t gKpad = gword s gKpad := by unfold gword; rw [a3 _ (by decide) (by decide)]
  refine ⟨p, r, hp, hr, o2, by omega, by omega, fun g h1 h2 => (b3 g h1 h2).trans (a3 g h1 h2),
    fun a ha => ?_⟩
  by_cases e : t.memory a = s.memory a
  · rcases b4 a (by rw [← e] at ha; exact ha) with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl ((kbuf_congr hk1 hk2 a).mp h))
    · exact Or.inr (Or.inr (Or.inl ⟨by omega, h.2⟩))
    · exact Or.inr (Or.inr (Or.inr h))
  · rcases a4 a e with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
    · exact Or.inr (Or.inr (Or.inr ⟨by omega, h.2⟩))

theorem stepW_congr {S0 : Nat} {Nd : BitVec 64 → Prop} {s s' t : State σ} (hm : s'.memory = s.memory)
    (hg : s'.globals = s.globals) (h : StepW S0 Nd s t) : StepW S0 Nd s' t := by
  obtain ⟨p, q, hp, hq, o1, a1, a2, a3, a4⟩ := h
  have hk1 : gword s' gKst = gword s gKst := by unfold gword; rw [hg]
  have hk2 : gword s' gKpad = gword s gKpad := by unfold gword; rw [hg]
  refine ⟨p, q, by unfold ptrsOf gword at hp ⊢; rw [hg]; exact hp, hq, o1, a1, a2,
    fun g h1 h2 => by rw [a3 g h1 h2, hg], fun a ha => ?_⟩
  rw [hm] at ha
  rcases a4 a ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl ((kbuf_congr hk1 hk2 a).mpr h))
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr h))

theorem foF_locals {se : State σ} {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {t : State σ} (L : Locals)
    (h : FoF se Nd HP0 S0 t) : FoF se Nd HP0 S0 { t with locals := L } := h

theorem foF_of_eq {se s t : State σ} {Nd : BitVec 64 → Prop} {HP0 S0 : Nat}
    (h : FoF se Nd HP0 S0 s) (hm : t.memory = s.memory) (hg : t.globals = s.globals) :
    FoF se Nd HP0 S0 t := by
  obtain ⟨q, hq, hqo, h1, h2, hgl, hw⟩ := h
  refine ⟨q, ?_, hqo, h1, h2, fun g a b => by rw [hg]; exact hgl g a b, fun a ha => hw a (by rw [← hm]; exact ha)⟩
  unfold ptrsOf gword at hq ⊢; rw [hg]; exact hq

end InitECandidate.Solver.MemSafe.Trie
