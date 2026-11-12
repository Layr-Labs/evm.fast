import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.LogDefs

set_option autoImplicit false

/-!
# `encode_receipt`: the log list as data, and the condition `LogsK`

For the log list `logs` read from a memory `m`: `N` records, array `P = rd m logs`, record `i` at
`rd m (P + 8 i)`, whose `LOG_TOPICS_N` (+16) and `LOG_DATA_N` (+32) are `nt_i`, `dn_i`.
`Sk m logs i = Σ_{j<i} (64 + 33 nt_j + dn_j)`.

`LogsK Γ p m h0 logs`: F3's `RecsBelow` (the records are `tLOG` objects of `Γ` below `h0`), the list cells lie outside `[h0, heapEnd)`, are allocated at `p` and outside `Γ` (`CellOK`), and the
field bounds `nt ≤ 2^20`, `dn ≤ 2^30`, `N ≤ 2^25` (no wrap in `logs_encoded_bound`).
-/

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe

def lgN (m : Mem) (logs : BitVec 64) : Nat := (rd m (logs + 8)).toNat
def lgP (m : Mem) (logs : BitVec 64) : BitVec 64 := rd m logs
def lgArr (m : Mem) (logs : BitVec 64) (i : Nat) : BitVec 64 := lgP m logs + BitVec.ofNat 64 (8 * i)
def lgRec (m : Mem) (logs : BitVec 64) (i : Nat) : BitVec 64 := rd m (lgArr m logs i)
def lgNt (m : Mem) (logs : BitVec 64) (i : Nat) : Nat := (rd m (lgRec m logs i + 16)).toNat
def lgDn (m : Mem) (logs : BitVec 64) (i : Nat) : Nat := (rd m (lgRec m logs i + 32)).toNat

/-- The encoded-size bound of record `i`. -/
def lgWb (m : Mem) (logs : BitVec 64) (i : Nat) : Nat := 64 + 33 * lgNt m logs i + lgDn m logs i

def Sk (m : Mem) (logs : BitVec 64) : Nat → Nat
  | 0 => 0
  | i + 1 => Sk m logs i + lgWb m logs i

/-- A list cell lies below `h0` or at or above `heapEnd`, is allocated and is no writable cell of `Γ`. -/
def CellOK (Γ : Gam) (p : Ptrs) (h0 : Nat) (c : BitVec 64) : Prop :=
  (c.toNat + 8 ≤ h0 ∨ heapEnd ≤ c.toNat) ∧ p.Allocated c.toNat ∧ ¬ WCell Types.guestC Γ c

/-- F3's `RecsBelow`: every record is a `tLOG` object of `Γ` below `h0`, with its field bounds. -/
def RecsB (Γ : Gam) (m : Mem) (h0 : Nat) (logs : BitVec 64) : Prop :=
  ∀ i : Nat, i < (rd m (logs + 8)).toNat →
    LogRecF Γ h0 m (rd m (rd m logs + BitVec.ofNat 64 (8 * i)))

def LogsK (Γ : Gam) (p : Ptrs) (m : Mem) (h0 : Nat) (logs : BitVec 64) : Prop :=
  RecsB Γ m h0 logs ∧ CellOK Γ p h0 logs ∧ CellOK Γ p h0 (logs + 8) ∧
    (∀ i, i < lgN m logs → CellOK Γ p h0 (lgArr m logs i)) ∧
    lgN m logs ≤ 2 ^ 25

/-- The field bounds, from `RecsB`. -/
theorem logsK_bounds {Γ : Gam} {p : Ptrs} {m : Mem} {h0 : Nat} {logs : BitVec 64}
    (h : LogsK Γ p m h0 logs) {i : Nat} (hi : i < lgN m logs) :
    lgNt m logs i ≤ 2 ^ 20 ∧ lgDn m logs i ≤ 2 ^ 30 :=
  (h.1 i hi).2

theorem lgWb_le (m : Mem) (logs : BitVec 64) (i : Nat) (h1 : lgNt m logs i ≤ 2 ^ 20)
    (h2 : lgDn m logs i ≤ 2 ^ 30) : lgWb m logs i ≤ 2 ^ 31 := by
  unfold lgWb
  omega

theorem sk_le (m : Mem) (logs : BitVec 64) (n : Nat)
    (h : ∀ i, i < n → lgWb m logs i ≤ 2 ^ 31) : Sk m logs n ≤ n * 2 ^ 31 := by
  induction n with
  | zero => simp [Sk]
  | succ k ih =>
    have := ih fun i hi => h i (by omega)
    have h2 := h k (by omega)
    simp only [Sk]
    rw [Nat.succ_mul]
    omega

theorem sk_mono (m : Mem) (logs : BitVec 64) {i j : Nat} (h : i ≤ j) : Sk m logs i ≤ Sk m logs j := by
  induction j with
  | zero =>
    have : i = 0 := by omega
    subst this
    exact Nat.le_refl _
  | succ k ih =>
    rcases Nat.lt_or_ge i (k + 1) with hh | hh
    · have := ih (by omega)
      simp only [Sk]
      omega
    · have : i = k + 1 := by omega
      subst this
      exact Nat.le_refl _

theorem sk_small {m : Mem} {logs : BitVec 64} (hn : lgN m logs ≤ 2 ^ 25)
    (h : ∀ i, i < lgN m logs → lgWb m logs i ≤ 2 ^ 31) {i : Nat} (hi : i ≤ lgN m logs) :
    Sk m logs i ≤ 2 ^ 56 := by
  have h1 := sk_mono m logs hi
  have h2 := sk_le m logs _ h
  have h3 : lgN m logs * 2 ^ 31 ≤ 2 ^ 25 * 2 ^ 31 := Nat.mul_le_mul_right _ hn
  omega

end InitECandidate.Solver.MemSafe.Rcpt
