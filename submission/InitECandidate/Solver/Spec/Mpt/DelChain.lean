import InitECandidate.Solver.Spec.Mpt.DeleteDescent
import InitECandidate.Solver.MemSafe.Summary

/-!
# The record chain of `_mpt_delete_node_body`, and the callee footprint hypothesis

* `RecOK M r`: the delete record at `r` is sane: an extension record (kind word `2` at
  `r + 16`) holds a node `fnode = M (r + 8)` with `fnode + 56 ≤ heapEnd`; any other record
  holds `fnode + 176 ≤ heapEnd` and a child index `M (r + 32) < 16`.
* `ChainOK M lo hi r`: `r` heads a chain of records in `[lo, hi)`: `0`, or a sane record
  with `lo ≤ r`, `r + 40 ≤ hi` whose link `M r` heads a chain in `[r + 40, hi)`. It reads
  only cells in `[lo, hi)` (`chainOK_frame`).
* `BelowSP σ X f Pre` (**callee footprint hypothesis**, discharged from `G` and `SumSpec`s
  by the memory-safety framework): a good run of `f` from an `AllocOK` state satisfying
  `Pre` keeps the allocator pointers ordered and `scratch_ptr` fixed, and writes only cells
  below the entry `scratch_ptr`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

theorem mem_word (M : MemSafe.Mem) (a : BitVec 64) : M a = .word (rd M a) := by
  unfold rd; cases M a; rfl

/-- A sane delete record. -/
def RecOK (M : MemSafe.Mem) (r : BitVec 64) : Prop :=
  (rd M (r + 16) = 2 → (rd M (r + 8)).toNat + 56 ≤ heapEnd) ∧
    (rd M (r + 16) ≠ 2 → (rd M (r + 8)).toNat + 176 ≤ heapEnd ∧ (rd M (r + 32)).toNat < 16)

/-- `r` heads a chain of sane records in `[lo, hi)`. -/
def ChainOK (M : MemSafe.Mem) (lo hi : Nat) (r : BitVec 64) : Prop :=
  r = 0 ∨ if h : lo ≤ r.toNat ∧ r.toNat + 40 ≤ hi then
    RecOK M r ∧ ChainOK M (r.toNat + 40) hi (rd M r) else False
termination_by hi - lo
decreasing_by omega

theorem chainOK_unfold {M : MemSafe.Mem} {lo hi : Nat} {r : BitVec 64} (h : ChainOK M lo hi r)
    (hr : r ≠ 0) : lo ≤ r.toNat ∧ r.toNat + 40 ≤ hi ∧ RecOK M r ∧
      ChainOK M (r.toNat + 40) hi (rd M r) := by
  rw [ChainOK] at h
  rcases h with h | h
  · exact absurd h hr
  · split at h
    · rename_i hh; exact ⟨hh.1, hh.2, h⟩
    · exact h.elim

theorem chainOK_cons {M : MemSafe.Mem} {lo hi : Nat} {r : BitVec 64} (h1 : lo ≤ r.toNat)
    (h2 : r.toNat + 40 ≤ hi) (h3 : RecOK M r) (h4 : ChainOK M (r.toNat + 40) hi (rd M r)) :
    ChainOK M lo hi r := by
  rw [ChainOK]
  right
  rw [dif_pos ⟨h1, h2⟩]
  exact ⟨h3, h4⟩

theorem chainOK_zero (M : MemSafe.Mem) (lo hi : Nat) : ChainOK M lo hi 0 := by
  rw [ChainOK]; exact Or.inl rfl

theorem chainOK_mono {M : MemSafe.Mem} {lo lo' hi : Nat} {r : BitVec 64} (hl : lo' ≤ lo)
    (h : ChainOK M lo hi r) : ChainOK M lo' hi r := by
  by_cases hr : r = 0
  · subst hr; exact chainOK_zero _ _ _
  · obtain ⟨h1, h2, h3, h4⟩ := chainOK_unfold h hr
    exact chainOK_cons (by omega) h2 h3 h4

/-- The chain reads only cells in `[lo, hi)`. -/
theorem chainOK_frame {M M' : MemSafe.Mem} {hi : Nat} (hhi : hi ≤ 2 ^ 64) :
    ∀ n lo (r : BitVec 64), hi - lo = n → (∀ a : BitVec 64, lo ≤ a.toNat → a.toNat < hi → M' a = M a) →
      ChainOK M lo hi r → ChainOK M' lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hn hM h
  by_cases hr : r = 0
  · subst hr; exact chainOK_zero _ _ _
  obtain ⟨h1, h2, ⟨h3a, h3b⟩, h4⟩ := chainOK_unfold h hr
  have hrd : ∀ k : BitVec 64, k.toNat < 40 → rd M' (r + k) = rd M (r + k) := by
    intro k hk
    unfold rd
    rw [hM (r + k) (by rw [BitVec.toNat_add]; omega) (by rw [BitVec.toNat_add]; omega)]
  have e0 : M' r = M r := hM r h1 (by omega)
  have r8 := hrd 8 (by decide)
  have r16 := hrd 16 (by decide)
  have r32 := hrd 32 (by decide)
  refine chainOK_cons h1 h2 ⟨?_, ?_⟩ ?_
  · intro hk
    rw [r8]; exact h3a (by rw [← r16]; exact hk)
  · intro hk
    rw [r8, r32]; exact h3b (by rw [← r16]; exact hk)
  · rw [show rd M' r = rd M r by unfold rd; rw [e0]]
    exact ih (hi - (r.toNat + 40)) (by omega) _ _ rfl
      (fun a ha1 ha2 => hM a (by omega) ha2) h4

/-! ## The callee footprint hypothesis -/

/-- Good runs of `f` from an allocator-ordered state satisfying `Pre` keep the pointers
ordered and `scratch_ptr` fixed, and write only cells below the entry `scratch_ptr`. -/
def BelowSP (σ : Type) (X : Ctx 64) (f : MlS)
    (Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → ∀ p : Ptrs, ptrsOf s = some p → p.Ordered →
    Pre vs s → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p'.sp = p.sp ∧
      ∀ a : BitVec 64, t.memory a ≠ s.memory a → a.toNat < p.sp)

/-- The first argument word, as a number (`0` otherwise). -/
def arg0 (vs : List (ValueHOL 64)) : Nat :=
  match vs with
  | .val (.word w) :: _ => w.toNat
  | _ => 0

end InitECandidate.Solver.Spec.Mpt
