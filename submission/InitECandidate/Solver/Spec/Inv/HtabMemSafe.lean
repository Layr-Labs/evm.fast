import InitECandidate.Solver.Spec.Inv.HtabNew
import InitECandidate.Solver.MemSafe.Summary

/-!
# Adapters from the htab specs to the memory-safety interface (`MemSafe/Summary.lean`)

`newPost_fresh`: after a returning `htab_new`, the allocator words moved monotonically
(`frame_mem_ptr`, `scratch_ptr` unchanged, `heap_ptr` grew), memory changed only in
`MemSafe.Fresh p p'`, and the new table's region lies in `MemSafe.Fresh p p'`.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem newPost_fresh {σ : Type} {s0 u : PanSemStateFiniteExact 64 σ} {KL H0 : BitVec 64}
    {v : ValueHOL 64} (h : NewPost s0 u KL H0 v)
    (hH : s0.globals.lookup hpN = some (.val (.word H0))) {p : MemSafe.Ptrs}
    (hp : MemSafe.ptrsOf s0 = some p) :
    ∃ p', MemSafe.ptrsOf u = some p' ∧ p.hp ≤ p'.hp ∧ p'.fp = p.fp ∧ p'.sp = p.sp ∧
      MemSafe.ModifiesOnly (MemSafe.Fresh p p') s0.memory u.memory ∧
      (∀ a, TableRegion u.memory H0 a → MemSafe.Fresh p p' a) := by
  obtain ⟨-, -, -, -, H1, hH1, hle, -, -, hreg, hmod, hgl⟩ := h
  unfold MemSafe.ptrsOf MemSafe.gword at hp ⊢
  have e1 : u.globals.lookup MemSafe.gFrame = s0.globals.lookup MemSafe.gFrame := hgl _ (by decide)
  have e2 : u.globals.lookup MemSafe.gScratch = s0.globals.lookup MemSafe.gScratch :=
    hgl _ (by decide)
  have eH : u.globals.lookup MemSafe.gHeap = some (.val (.word H1)) := hH1
  rw [e1, e2, eH]
  split at hp
  · rename_i hh f sc h1 h2 h3
    simp only [Option.some.injEq] at hp
    subst hp
    have hh0 : hh = H0 := by
      have : s0.globals.lookup MemSafe.gHeap = some (.val (.word H0)) := hH
      rw [this] at h1
      simp only [Option.some.injEq] at h1
      exact h1.symm
    subst hh
    rw [h2, h3]
    refine ⟨⟨H1.toNat, f.toNat, sc.toNat⟩, rfl, hle, rfl, rfl, ?_, ?_⟩
    · intro a ha
      apply hmod a
      intro hin
      apply ha
      unfold InR at hin
      left; show H0.toNat ≤ a.toNat ∧ a.toNat < H1.toNat; omega
    · intro a ha
      have := hreg a ha
      unfold InR at this
      left; show H0.toNat ≤ a.toNat ∧ a.toNat < H1.toNat; omega
  · simp at hp

end InitECandidate.Solver.Spec.Inv
