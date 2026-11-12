import InitECandidate.Solver.MemSafe.Trie.FillLoop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The function-level footprint `Foot`

`Foot Nd s t p`: every global but `heap_ptr` / `scratch_ptr` is kept, the allocator moved monotonically and stays
ordered, and memory changed only in cache cells of nodes of `Nd`, the keccak buffers, and cells that were
unallocated at entry (`¬ p.Allocated`).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def Foot (Nd : BitVec 64 → Prop) (s t : State σ) (p : Ptrs) : Prop :=
  (∀ g, g ≠ gHeap → g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    ∃ q : Ptrs, ptrsOf t = some q ∧ q.Ordered ∧ p.Mono q ∧
      ∀ a, t.memory a ≠ s.memory a →
        (∃ b, Nd b ∧ CacheCell b a) ∨ KBuf s a ∨ ¬ p.Allocated a.toNat

theorem ptrsOf_fp {s : State σ} {p : Ptrs} (h : ptrsOf s = some p) :
    ∃ w, gword s gFrame = some w ∧ w.toNat = p.fp := by
  unfold ptrsOf at h
  split at h
  · rename_i h1 f1 p1 e1 e2 e3
    cases h
    exact ⟨f1, e2, rfl⟩
  · cases h

theorem fp_eq_of_glob {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p')
    (h : t.globals.lookup gFrame = s.globals.lookup gFrame) : p'.fp = p.fp := by
  obtain ⟨w, hw, e⟩ := ptrsOf_fp hp
  obtain ⟨w', hw', e'⟩ := ptrsOf_fp hp'
  have hg : gword t gFrame = gword s gFrame := by unfold gword; rw [h]
  rw [hg, hw] at hw'
  cases hw'
  omega

/-- Cells of `[p.hp, heapEnd)` and of `[q.sp, p.sp)` with `q` ordered and the frame pointer kept are
unallocated at entry. -/
theorem unalloc_of_fresh {p q : Ptrs} (ho : p.Ordered) (hq : q.Ordered) (hfp : q.fp = p.fp) {a : Nat}
    (h : (p.hp ≤ a ∧ a < heapEnd) ∨ (q.sp ≤ a ∧ a < p.sp)) : ¬ p.Allocated a := by
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := ho
  obtain ⟨q1, q2, q3, q4, q5, -⟩ := hq
  unfold Ptrs.Allocated
  rintro (⟨c1, c2⟩ | ⟨c1, c2⟩ | ⟨c1, c2⟩) <;> rcases h with ⟨d1, d2⟩ | ⟨d1, d2⟩ <;> omega

theorem foot_of_foF {Nd : BitVec 64 → Prop} {s t : State σ} {p : Ptrs} (hp : ptrsOf s = some p)
    (ho : p.Ordered) (h : FoF s Nd p.hp p.sp t) : Foot Nd s t p := by
  obtain ⟨q, hq, hqo, h1, h2, hg, hw⟩ := h
  have hfp : q.fp = p.fp := fp_eq_of_glob hp hq (hg gFrame (by decide) (by decide))
  refine ⟨fun g a b => hg g a b, q, hq, hqo, ⟨h1, by omega, h2⟩, fun a ha => ?_⟩
  rcases hw a ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (unalloc_of_fresh ho hqo hfp (Or.inl h)))
  · exact Or.inr (Or.inr (unalloc_of_fresh ho hqo hfp (Or.inr h)))

theorem foot_of_clean {Nd : BitVec 64 → Prop} {s t : State σ} {p : Ptrs} (hp : ptrsOf s = some p)
    (ho : p.Ordered) (hm : t.memory = s.memory) (hg : t.globals = s.globals) : Foot Nd s t p :=
  foot_of_foF hp ho (foF_of_eq (foF_refl hp ho) hm hg)

theorem ptrsOf_hp {s : State σ} {p : Ptrs} (h : ptrsOf s = some p) :
    ∃ w, gword s gHeap = some w ∧ w.toNat = p.hp := by
  unfold ptrsOf at h
  split at h
  · rename_i h1 f1 p1 e1 e2 e3
    cases h
    exact ⟨h1, e1, rfl⟩
  · cases h

theorem ptrsOf_setSp {s t : State σ} {q : Ptrs} (hq : ptrsOf s = some q) {w : BitVec 64}
    (hsp : t.globals.lookup gScratch = some (.val (.word w)))
    (hg : ∀ g, g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) :
    ptrsOf t = some { q with sp := w.toNat } := by
  obtain ⟨wh, hwh, eh⟩ := ptrsOf_hp hq
  obtain ⟨wf, hwf, ef⟩ := ptrsOf_fp hq
  have e1 : gword t gHeap = some wh := by
    rw [← hwh]; unfold gword; rw [hg _ (by decide)]
  have e2 : gword t gFrame = some wf := by
    rw [← hwf]; unfold gword; rw [hg _ (by decide)]
  have e3 : gword t gScratch = some w := by unfold gword; rw [hsp]
  unfold ptrsOf
  rw [e1, e2, e3]
  simp [eh, ef]

/-- The release step: `scratch_ptr` set to `p.sp`. -/
theorem foot_of_release {Nd : BitVec 64 → Prop} {s t t' : State σ} {p : Ptrs} (hp : ptrsOf s = some p)
    (ho : p.Ordered) (h : FoF s Nd p.hp p.sp t) (hm : t'.memory = t.memory)
    (hsp : t'.globals.lookup gScratch = some (.val (.word (BitVec.ofNat 64 p.sp))))
    (hg : ∀ g, g ≠ gScratch → t'.globals.lookup g = t.globals.lookup g) : Foot Nd s t' p := by
  obtain ⟨q, hq, hqo, h1, h2, hgl, hw⟩ := h
  have hfp : q.fp = p.fp := fp_eq_of_glob hp hq (hgl gFrame (by decide) (by decide))
  have hse := ho.2.2.2.2.1
  have hsp' : p.sp < 2 ^ 64 := by have := Spec.Mpt.scratchEnd_lt; omega
  have hq' := ptrsOf_setSp hq hsp hg
  have hsn : (BitVec.ofNat 64 p.sp).toNat = p.sp := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hsp']
  rw [hsn] at hq'
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hqo
  obtain ⟨p1, p2, p3, p4, p5, p6, p7, p8⟩ := ho
  refine ⟨fun g a b => ?_, _, hq', ⟨o1, o2, o3, by simp [hfp]; omega, by simpa using p5, o6, o7, p8⟩,
    ⟨h1, by simp [hfp], by simp⟩, fun a ha => ?_⟩
  · rw [hg g b, hgl g a b]
  · rw [hm] at ha
    rcases hw a ha with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (unalloc_of_fresh ⟨p1, p2, p3, p4, p5, p6, p7, p8⟩
        ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ hfp (Or.inl h)))
    · exact Or.inr (Or.inr (unalloc_of_fresh ⟨p1, p2, p3, p4, p5, p6, p7, p8⟩
        ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ hfp (Or.inr h)))

end InitECandidate.Solver.MemSafe.Trie
