import InitECandidate.Solver.Spec.CostInv
import Mathlib.Data.List.Perm.Subperm

/-!
# Counting domain hits ahead of a cursor

`cnt D base n`: how many of the `n` addresses `base, base + 1, …, base + (n - 1)` pass the
domain check of `D` (`Hit`). A walker that only advances (by `d ≥ 1`) from a hit address
loses at least one hit (`cnt_step`), and when `D` lies in a cyclic interval of length `L`
the count is at most `L + 8` (`cnt_le`): the addresses are distinct and all lie within
`L + alignSlack 64` of the interval start. This replaces a `2 ^ 64` iteration factor by
the domain size.
-/

namespace InitECandidate.Solver.Spec
open Flapjack
open InitECandidate.Solver.SourceCost

open Classical in
/-- Hits among `base + i`, `i < n`. -/
noncomputable def cnt (D : BitVec 64 → Prop) (base : BitVec 64) (n : Nat) : Nat :=
  ((List.range n).filter (fun i => decide (Hit D (base + BitVec.ofNat 64 i)))).length

theorem cnt_add (D : BitVec 64 → Prop) (base : BitVec 64) (d m : Nat) :
    cnt D base (d + m) = cnt D base d + cnt D (base + BitVec.ofNat 64 d) m := by
  classical
  unfold cnt
  rw [List.range_add, List.filter_append, List.length_append, List.filter_map,
    List.length_map]
  congr 3
  funext i
  simp only [Function.comp_apply]
  congr 2
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add, Nat.add_mod]

theorem cnt_one (D : BitVec 64 → Prop) (base : BitVec 64) (h : Hit D base) : cnt D base 1 = 1 := by
  classical
  unfold cnt
  simp [h]

theorem cnt_le_n (D : BitVec 64 → Prop) (base : BitVec 64) (n : Nat) : cnt D base n ≤ n := by
  unfold cnt
  exact (List.length_filter_le _ _).trans (by simp)

/-- Advancing by `d ∈ [1, n]` from a hit loses at least one hit. -/
theorem cnt_step {D : BitVec 64 → Prop} {base : BitVec 64} {n d : Nat} (h : Hit D base)
    (h1 : 1 ≤ d) (hd : d ≤ n) : cnt D (base + BitVec.ofNat 64 d) (n - d) + 1 ≤ cnt D base n := by
  have e1 : n = d + (n - d) := by omega
  have e2 : d = 1 + (d - 1) := by omega
  conv => rhs; rw [e1, cnt_add, e2, cnt_add, cnt_one D base h]
  rw [← e2]
  omega

/-- Advancing by `d ≤ n` never gains hits. -/
theorem cnt_mono {D : BitVec 64 → Prop} {base : BitVec 64} {n d : Nat} (hd : d ≤ n) :
    cnt D (base + BitVec.ofNat 64 d) (n - d) ≤ cnt D base n := by
  have e1 : n = d + (n - d) := by omega
  conv => rhs; rw [e1, cnt_add]
  omega

/-- **Domain bound.** If `D` lies in a cyclic interval of length `L`, at most `L + 8` of
any `n ≤ 2 ^ 64` consecutive addresses hit it. -/
theorem cnt_le {D : BitVec 64 → Prop} {lo : BitVec 64} {L : Nat} (hD : DomIn D lo L)
    (hL : L + 8 ≤ 2 ^ 64) (base : BitVec 64) {n : Nat} (hn : n ≤ 2 ^ 64) :
    cnt D base n ≤ L + 8 := by
  classical
  unfold cnt
  have hA : alignSlack 64 = 8 := by
    unfold alignSlack
    rw [show (64 : Nat) / 8 = 2 ^ 3 by rfl, Nat.log2_two_pow]
  set l := (List.range n).filter (fun i => decide (Hit D (base + BitVec.ofNat 64 i))) with hl
  let f : Nat → Nat := fun i => ((base + BitVec.ofNat 64 i) - lo).toNat
  have hnd : l.Nodup := (List.nodup_range).filter _
  have hmem : ∀ i ∈ l, i < n ∧ Hit D (base + BitVec.ofNat 64 i) := by
    intro i hi
    rw [hl, List.mem_filter, List.mem_range, decide_eq_true_eq] at hi
    exact hi
  have hinj : ∀ i ∈ l, ∀ j ∈ l, f i = f j → i = j := by
    intro i hi j hj hij
    have hi' := (hmem i hi).1
    have hj' := (hmem j hj).1
    have h1 : (base + BitVec.ofNat 64 i) - lo = (base + BitVec.ofNat 64 j) - lo :=
      BitVec.eq_of_toNat_eq hij
    have h2 : BitVec.ofNat 64 i = BitVec.ofNat 64 j := by
      have := congrArg (· + lo) h1
      simp only [BitVec.sub_add_cancel] at this
      exact (BitVec.add_right_inj _).mp this
    have := congrArg BitVec.toNat h2
    simp only [BitVec.toNat_ofNat] at this
    rwa [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at this
  have hnd' : (l.map f).Nodup := List.Nodup.map_on hinj hnd
  have hsub : l.map f ⊆ List.range (L + 8) := by
    intro x hx
    obtain ⟨i, hi, rfl⟩ := List.mem_map.mp hx
    rw [List.mem_range]
    have := hit_offset hD (by rw [hA]; exact hL) (hmem i hi).2
    rw [hA] at this
    exact this
  have := (List.subperm_of_subset hnd' hsub).length_le
  rw [List.length_map, List.length_range] at this
  exact this

end InitECandidate.Solver.Spec
