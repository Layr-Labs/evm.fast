import Mathlib.Data.Fintype.Pigeonhole
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Vals

/-! # Orbits of a self-map that stay in a finite set -/

namespace InitECandidate.Solver.SourceCost.Arith

section
variable {α : Type}

def iterA (G : α → α) : Nat → α → α
  | 0, v => v
  | m + 1, v => G (iterA G m v)

theorem iterA_succ' (G : α → α) : ∀ m v, iterA G m (G v) = iterA G (m + 1) v
  | 0, _ => rfl
  | m + 1, v => by
      show G (iterA G m (G v)) = G (iterA G (m + 1) v)
      rw [iterA_succ' G m v]

theorem iterA_add (G : α → α) (v : α) : ∀ m k, iterA G (m + k) v = iterA G m (iterA G k v)
  | 0, k => by rw [Nat.zero_add]; rfl
  | m + 1, k => by
      rw [Nat.succ_add]
      show G (iterA G (m + k) v) = G (iterA G m (iterA G k v))
      rw [iterA_add G v m k]

/-- If the orbit stays in a set of at most `M` points and a property holds on its first
`M + 1` points, it holds on the next one. -/
theorem iterA_closed (G : α → α) (v : α) (S : Finset α) (M : Nat) (hS : S.card ≤ M)
    (hmem : ∀ m, iterA G m v ∈ S) (P : α → Prop) (h : ∀ m ≤ M, P (iterA G m v)) :
    P (iterA G (M + 1) v) := by
  obtain ⟨a, ha, b, hb, hab, he⟩ := Finset.exists_ne_map_eq_of_card_lt_of_maps_to
    (s := Finset.range (M + 1)) (t := S) (f := fun m => iterA G m v)
    (by rw [Finset.card_range]; omega) (fun m _ => hmem m)
  simp only [Finset.coe_range, Set.mem_Iio, Finset.mem_range] at ha hb
  have key : ∀ a b, a < b → b ≤ M → iterA G a v = iterA G b v → P (iterA G (M + 1) v) := by
    intro a b hab hb he
    have hK : M + 1 = (M + 1 - b) + b := by omega
    have e1 : iterA G ((M + 1 - b) + b) v = iterA G ((M + 1 - b) + a) v := by
      rw [iterA_add, iterA_add, he]
    rw [hK, e1]
    exact h _ (by omega)
  rcases Nat.lt_or_gt_of_ne hab with hlt | hlt
  · exact key a b hlt (by omega) he
  · exact key b a hlt (by omega) he.symm

/-- Number of consecutive orbit points (at most `N`) satisfying `Q`. -/
def runLenA (Q : α → Bool) (G : α → α) : Nat → α → Nat
  | 0, _ => 0
  | N + 1, v => if Q v then runLenA Q G N (G v) + 1 else 0

theorem runLenA_le (Q : α → Bool) (G : α → α) : ∀ N v, runLenA Q G N v ≤ N
  | 0, _ => Nat.le_refl _
  | N + 1, v => by
      unfold runLenA
      split
      · have := runLenA_le Q G N (G v); omega
      · omega

theorem runLenA_eq_iff (Q : α → Bool) (G : α → α) :
    ∀ N v, runLenA Q G N v = N ↔ ∀ m < N, Q (iterA G m v) = true
  | 0, v => by simp [runLenA]
  | N + 1, v => by
      unfold runLenA
      split
      · rename_i hp
        rw [Nat.add_right_cancel_iff, runLenA_eq_iff Q G N (G v)]
        constructor
        · intro h m hm
          cases m with
          | zero => exact hp
          | succ m => rw [← iterA_succ']; exact h m (by omega)
        · intro h m hm
          rw [iterA_succ']; exact h (m + 1) (by omega)
      · rename_i hp
        constructor
        · intro h; omega
        · intro h; exact absurd (h 0 (by omega)) hp

theorem runLenA_succ_of_lt (Q : α → Bool) (G : α → α) :
    ∀ N v, runLenA Q G N v < N → runLenA Q G (N + 1) v = runLenA Q G N v
  | 0, v, h => by simp at h
  | N + 1, v, h => by
      unfold runLenA at h ⊢
      split
      · rename_i hp
        simp only [hp, if_true] at h
        rw [runLenA_succ_of_lt Q G N (G v) (by omega)]
      · rfl

/-- A full run of `M + 1` points stays full after one step, when the orbit stays in a set
of at most `M` points. -/
theorem runLenA_full_step (Q : α → Bool) (G : α → α) (v : α) (S : Finset α) (M : Nat)
    (hS : S.card ≤ M) (hmem : ∀ m, iterA G m v ∈ S)
    (h : runLenA Q G (M + 1) v = M + 1) : runLenA Q G (M + 1) (G v) = M + 1 := by
  have hall := (runLenA_eq_iff Q G _ v).mp h
  rw [runLenA_eq_iff]
  intro m hm
  rw [iterA_succ']
  by_cases hlast : m + 1 < M + 1
  · exact hall (m + 1) hlast
  · have : m + 1 = M + 1 := by omega
    rw [this]
    exact iterA_closed G v S M hS hmem (fun u => Q u = true) (fun m hm => hall m (by omega))

end

end InitECandidate.Solver.SourceCost.Arith
