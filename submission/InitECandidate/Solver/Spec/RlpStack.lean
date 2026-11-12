import InitECandidate.Solver.Spec.RlpHdr
import InitECandidate.Solver.Spec.Scratch

/-!
# The record stack of `_rlp_validate_items_body`

The walker keeps pending list continuations as `<resume, end, prev>` records in the
scratch arena (allocated downwards by `scratch_alloc(24)`). `RChain M SP F P Ln top e es`
says that the chain of records starting at `top` in memory `M` mirrors the list `es` of
outer frame ends: the record at `top` holds `resume = e` (the current frame end), the
outer end `e'` and the next record; offsets from the payload start `P` grow outwards
and stay below `Ln`. Every record word is *safe*: above the arena pointer `SP` or below
the frame-memory pointer `F` (`SafeW`), so a fresh record in `[F, SP)` cannot overwrite
it (`rchain_congr`).

`alloc_safe`: the three words of a fresh record `q = (p - 24) & -8` with `F ≤ q` are safe
for the new arena pointer `q` (also when `p - 24` wraps, which forces `p < F`);
`alloc_below`: with `F ≤ p` the record lies below `p`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

/-- Offset of `x` from `P`. -/
def off (P x : BitVec 64) : Nat := (x - P).toNat

def SafeW (SP F : Nat) (w : BitVec 64) : Prop := SP ≤ w.toNat ∨ w.toNat < F

def RChain (M : BitVec 64 → HolWordLab 64) (SP F : Nat) (P : BitVec 64) (Ln : Nat) :
    BitVec 64 → BitVec 64 → List (BitVec 64) → Prop
  | top, e, [] => top = 0 ∧ off P e ≤ Ln
  | top, e, e' :: es => top ≠ 0 ∧ M top = .word e ∧ M (top + BitVec.ofNat 64 8) = .word e' ∧
      SafeW SP F top ∧ SafeW SP F (top + BitVec.ofNat 64 8) ∧
      SafeW SP F (top + BitVec.ofNat 64 16) ∧ off P e ≤ off P e' ∧
      ∃ nxt, M (top + BitVec.ofNat 64 16) = .word nxt ∧ RChain M SP F P Ln nxt e' es

/-- Length of the record chain at `top` (with fuel). -/
noncomputable def chainLen (M : BitVec 64 → HolWordLab 64) (top : BitVec 64) : Nat → Nat
  | 0 => 0
  | f + 1 =>
      if top = 0 then 0 else
        match M (top + BitVec.ofNat 64 16) with
        | .word n => chainLen M n f + 1

theorem rchain_len {M : BitVec 64 → HolWordLab 64} {SP F Ln : Nat} {P : BitVec 64} :
    ∀ (es : List (BitVec 64)) (top e : BitVec 64) (f : Nat), RChain M SP F P Ln top e es →
      es.length ≤ f → chainLen M top f = es.length
  | [], top, e, f, h, _ => by
      cases f with
      | zero => rfl
      | succ f => simp [chainLen, h.1]
  | e' :: es, top, e, f, h, hf => by
      obtain ⟨hne, _, _, _, _, _, _, nxt, hn, hr⟩ := h
      cases f with
      | zero => simp at hf
      | succ f =>
          simp only [chainLen, hne, if_false, hn]
          rw [rchain_len es nxt e' f hr (by simp at hf; omega)]
          rfl

theorem rchain_off_le {M : BitVec 64 → HolWordLab 64} {SP F Ln : Nat} {P : BitVec 64} :
    ∀ (es : List (BitVec 64)) (top e : BitVec 64), RChain M SP F P Ln top e es → off P e ≤ Ln
  | [], _, _, h => h.2
  | e' :: es, _, _, h => by
      obtain ⟨_, _, _, _, _, _, hle, nxt, _, hr⟩ := h
      exact Nat.le_trans hle (rchain_off_le es nxt e' hr)

theorem rchain_nil_of_zero {M : BitVec 64 → HolWordLab 64} {SP F Ln : Nat} {P e : BitVec 64}
    {es : List (BitVec 64)} (h : RChain M SP F P Ln 0 e es) : es = [] := by
  cases es with
  | nil => rfl
  | cons e' es => exact absurd rfl h.1

theorem rchain_congr {M M' : BitVec 64 → HolWordLab 64} {SP F Ln : Nat} {P : BitVec 64}
    (hM : ∀ w, SafeW SP F w → M' w = M w) :
    ∀ (es : List (BitVec 64)) (top e : BitVec 64), RChain M SP F P Ln top e es →
      RChain M' SP F P Ln top e es
  | [], _, _, h => h
  | e' :: es, top, e, h => by
      obtain ⟨h0, h1, h2, s0, s8, s16, hle, nxt, hn, hr⟩ := h
      exact ⟨h0, by rw [hM _ s0]; exact h1, by rw [hM _ s8]; exact h2, s0, s8, s16, hle, nxt,
        by rw [hM _ s16]; exact hn, rchain_congr hM es nxt e' hr⟩

theorem safeW_mono {SP SP' F : Nat} (h : SP' ≤ SP) {w : BitVec 64} (hw : SafeW SP F w) :
    SafeW SP' F w := by
  rcases hw with hw | hw
  · exact Or.inl (Nat.le_trans h hw)
  · exact Or.inr hw

theorem rchain_mono {M : BitVec 64 → HolWordLab 64} {SP SP' F Ln : Nat} {P : BitVec 64}
    (hle : SP' ≤ SP) :
    ∀ (es : List (BitVec 64)) (top e : BitVec 64), RChain M SP F P Ln top e es →
      RChain M SP' F P Ln top e es
  | [], _, _, h => h
  | e' :: es, top, e, h => by
      obtain ⟨h0, h1, h2, s0, s8, s16, hle', nxt, hn, hr⟩ := h
      exact ⟨h0, h1, h2, safeW_mono hle s0, safeW_mono hle s8, safeW_mono hle s16, hle', nxt, hn,
        rchain_mono hle es nxt e' hr⟩

/-! ## Allocation arithmetic -/

/-- A fresh record `q ≤ p - 24` with `24 ≤ p - F` (as words) and `F ≤ q`: its three words
are safe for the new arena pointer `q`. -/
theorem alloc_safe {P0 F0 Q : BitVec 64} (h1 : 24 ≤ (P0 - F0).toNat)
    (h2 : Q.toNat ≤ (P0 - BitVec.ofNat 64 24).toNat) (h3 : F0.toNat ≤ Q.toNat) (j : Nat)
    (hj : j ≤ 16) : SafeW Q.toNat F0.toNat (Q + BitVec.ofNat 64 j) := by
  unfold SafeW
  have hQ := Q.isLt
  have hP := P0.isLt
  have hF := F0.isLt
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : j < 2 ^ 64)]
  rw [BitVec.toNat_sub] at h1 h2
  rw [BitVec.toNat_ofNat] at h2
  by_cases hw : Q.toNat + j < 2 ^ 64
  · left; rw [Nat.mod_eq_of_lt hw]; omega
  · right
    have e : (Q.toNat + j) % 2 ^ 64 = Q.toNat + j - 2 ^ 64 := by
      rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)]
    rw [e]
    -- `p - 24` wrapped, so `p < 24`, hence `p < F`
    have hp24 : P0.toNat < 24 := by
      by_contra hc
      have : (2 ^ 64 - 24 % 2 ^ 64 + P0.toNat) % 2 ^ 64 = P0.toNat - 24 := by
        rw [show 2 ^ 64 - 24 % 2 ^ 64 + P0.toNat = (P0.toNat - 24) + 2 ^ 64 by omega,
          Nat.add_mod_right, Nat.mod_eq_of_lt (by omega)]
      omega
    have hpF : P0.toNat < F0.toNat := by
      by_contra hc
      have : (2 ^ 64 - F0.toNat + P0.toNat) % 2 ^ 64 = P0.toNat - F0.toNat := by
        rw [show 2 ^ 64 - F0.toNat + P0.toNat = (P0.toNat - F0.toNat) + 2 ^ 64 by omega,
          Nat.add_mod_right, Nat.mod_eq_of_lt (by omega)]
      omega
    have : (2 ^ 64 - 24 % 2 ^ 64 + P0.toNat) % 2 ^ 64 = 2 ^ 64 - 24 + P0.toNat := by
      rw [Nat.mod_eq_of_lt (by omega)]
    omega

/-- With `F ≤ p` the fresh record lies below `p`. -/
theorem alloc_below {P0 F0 Q : BitVec 64} (h1 : 24 ≤ (P0 - F0).toNat)
    (h2 : Q.toNat ≤ (P0 - BitVec.ofNat 64 24).toNat) (hFP : F0.toNat ≤ P0.toNat) :
    Q.toNat + 24 ≤ P0.toNat := by
  rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact hFP)] at h1
  rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)] at h2
  simp at h2
  omega

/-- A word of the fresh record is not a safe word of the old arena pointer `p`. -/
theorem alloc_fresh {P0 F0 Q w : BitVec 64} (hb : Q.toNat + 24 ≤ P0.toNat) (h3 : F0.toNat ≤ Q.toNat)
    (hw : SafeW P0.toNat F0.toNat w) (j : Nat) (hj : j ≤ 16) : w ≠ Q + BitVec.ofNat 64 j := by
  rintro rfl
  have hQ := Q.isLt
  unfold SafeW at hw
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : j < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)] at hw
  rcases hw with hw | hw <;> omega

/-! ## Offsets -/

theorem off_add {P x : BitVec 64} (y : BitVec 64) (h : off P x + y.toNat < 2 ^ 64) :
    off P (x + y) = off P x + y.toNat := by
  unfold off at h ⊢
  rw [show x + y - P = (x - P) + y by bv_omega, BitVec.toNat_add, Nat.mod_eq_of_lt h]

theorem sub_toNat_off {P x y : BitVec 64} (h : off P x ≤ off P y) :
    (y - x).toNat = off P y - off P x := by
  unfold off at h ⊢
  rw [show y - x = (y - P) - (x - P) by bv_omega,
    BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact h)]

theorem off_lt (P x : BitVec 64) : off P x < 2 ^ 64 := (x - P).isLt

theorem off_self (P : BitVec 64) : off P P = 0 := by simp [off]

theorem ofNat_toNat_add (a b : BitVec 64) :
    BitVec.ofNat 64 (a.toNat + b.toNat) = a + b := by
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add]

end InitECandidate.Solver.Spec
