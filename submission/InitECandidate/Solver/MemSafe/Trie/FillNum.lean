import InitECandidate.Solver.MemSafe.Trie.FillDefs

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# Numeric side conditions of `_node_rlp_finish` from length bounds

`LenStat Nd s`: the nibble / value lengths of the nodes are `< 2^32`. `finish_numeric`: from `RC`, `LenStat` and a
bound on the record's compact length, the payload word `pl1` is `< 2^62` and the three length identities
`hs1 / hs2 / hs3` of `finishG` hold (no wrap-around).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def LenStat (Nd : BitVec 64 → Prop) (s : State σ) : Prop :=
  ∀ a, Nd a → ((rd s.memory a = 1 ∨ rd s.memory a = 2) → (rd s.memory (a + 40)).toNat ≤ 2 ^ 32) ∧
    (rd s.memory a = 1 → (rd s.memory (a + 56)).toNat ≤ 2 ^ 32) ∧
    (rd s.memory a = 3 → (rd s.memory (a + 168)).toNat ≤ 2 ^ 32)

theorem encLenN_le (fb N : BitVec 64) : encLenN fb N ≤ 9 + N.toNat := by
  unfold encLenN
  have := (MemSafe.Helpers.hdrLen_le N.isLt).2
  split <;> omega

theorem RL_le (M : MemSafe.Mem) (c : BitVec 64) : (RL M c).toNat ≤ 33 := by
  unfold RL
  split
  · decide
  · split
    · decide
    · split
      · rename_i h; exact Nat.le_of_lt (by omega)
      · decide

theorem brSumN_le (M : MemSafe.Mem) (ND : BitVec 64) : ∀ n, brSumN M ND n ≤ 33 * n
  | 0 => by simp [brSumN]
  | n + 1 => by
      rw [brSumN_succ]
      have := brSumN_le M ND n
      have := RL_le M (rd M (slot ND n))
      omega

/-- The payload word and the three length identities, for a record `T` of the node `N`. -/
theorem finish_numeric {s : State σ} {Nd : BitVec 64 → Prop} {T N : BitVec 64}
    (hL : LenStat Nd s) (hN : Nd N) (hrk : RecKind (rd s.memory N)) (hRC : RC s T N)
    (hcl : (rd s.memory (T + 32)).toNat < 2 ^ 33) :
    (pl1 s N (rd s.memory (T + 40))).toNat < 2 ^ 62 ∧
    (rd s.memory N = 1 → (pl1 s N (rd s.memory (T + 40))).toNat =
      encLenN (ld8W s (rd s.memory (T + 24))) (rd s.memory (T + 32)) +
      encLenN (ld8W s (rd s.memory (N + 48))) (rd s.memory (N + 56))) ∧
    (rd s.memory N = 2 → (pl1 s N (rd s.memory (T + 40))).toNat =
      encLenN (ld8W s (rd s.memory (T + 24))) (rd s.memory (T + 32)) +
      (RL s.memory (rd s.memory (N + 48))).toNat) ∧
    (rd s.memory N = 3 → (pl1 s N (rd s.memory (T + 40))).toNat = brSumN s.memory N 16 +
      encLenN (ld8W s (rd s.memory (N + 160))) (rd s.memory (N + 168))) := by
  have c40 : (N + 40 : BitVec 64) = N + BitVec.ofNat 64 40 := rfl
  have c48 : (N + 48 : BitVec 64) = N + BitVec.ofNat 64 48 := rfl
  have c56 : (N + 56 : BitVec 64) = N + BitVec.ofNat 64 56 := rfl
  have c160 : (N + 160 : BitVec 64) = N + BitVec.ofNat 64 160 := rfl
  have c168 : (N + 168 : BitVec 64) = N + BitVec.ofNat 64 168 := rfl
  obtain ⟨hRC3, hRC2, hRC1⟩ := hRC
  obtain ⟨hl12, hl1, hl3⟩ := hL N hN
  simp only [c40, c48, c56, c160, c168] at hl12 hl1 hl3 hRC1 hRC2 hRC3 ⊢
  set K := rd s.memory N with hK
  set PL0 := rd s.memory (T + 40) with hPL0
  have e1le := encLenN_le (ld8W s (rd s.memory (T + 24))) (rd s.memory (T + 32))
  rcases hrk with h1 | h2 | h3
  · -- leaf
    have hK1 : K = 1 := h1
    have hR := hRC1 hK1
    have hv := hl1 hK1
    have hn := hl12 (Or.inl hK1)
    set e1 := encLenN (ld8W s (rd s.memory (T + 24))) (rd s.memory (T + 32)) with he1
    set e2 := encLenN (ld8W s (rd s.memory (N + 48#64))) (rd s.memory (N + 56#64)) with he2
    have e2le := encLenN_le (ld8W s (rd s.memory (N + 48#64))) (rd s.memory (N + 56#64))
    have hP : PL0 = BitVec.ofNat 64 (e1 + e2) := by
      rw [hR, encLen_eq, valLen_eq, ← BitVec.ofNat_add_ofNat]
    have hPn : PL0.toNat = e1 + e2 := by
      rw [hP, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hpl : pl1 s N PL0 = PL0 := by
      unfold pl1; rw [← hK, if_neg (by rw [hK1]; decide), if_neg (by rw [hK1]; decide)]
    rw [hpl]
    exact ⟨by omega, fun _ => hPn, fun h => absurd (hK1.symm.trans h) (by decide),
      fun h => absurd (hK1.symm.trans h) (by decide)⟩
  · -- extension
    have hK2 : K = 2 := h2
    have hR := hRC2 hK2
    have hn := hl12 (Or.inr hK2)
    set e1 := encLenN (ld8W s (rd s.memory (T + 24))) (rd s.memory (T + 32)) with he1
    have hP : PL0 = BitVec.ofNat 64 e1 := by rw [hR, encLen_eq]
    have hPn : PL0.toNat = e1 := by rw [hP, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hrl := RL_le s.memory (rd s.memory (N + 48#64))
    have hpl : (pl1 s N PL0).toNat = e1 + (RL s.memory (rd s.memory (N + 48#64))).toNat := by
      unfold pl1; rw [← hK, if_pos hK2, BitVec.toNat_add, hPn]
      show (e1 + (RL s.memory (rd s.memory (N + 48#64))).toNat) % 2 ^ 64 = _
      exact Nat.mod_eq_of_lt (by omega)
    exact ⟨by omega, fun h => absurd (hK2.symm.trans h) (by decide), fun _ => hpl,
      fun h => absurd (hK2.symm.trans h) (by decide)⟩
  · -- branch
    have hK3 : K = 3 := h3
    have hR := hRC3 hK3
    have hv := hl3 hK3
    set e5 := encLenN (ld8W s (rd s.memory (N + 160#64))) (rd s.memory (N + 168#64)) with he5
    have e5le := encLenN_le (ld8W s (rd s.memory (N + 160#64))) (rd s.memory (N + 168#64))
    have hbs := brSumN_le s.memory N 16
    have hpl : (pl1 s N PL0).toNat = brSumN s.memory N 16 + e5 := by
      unfold pl1
      rw [← hK, if_neg (by rw [hK3]; decide), if_pos hK3, hR, BitVec.toNat_add, BitVec.toNat_add,
        valLen_eq, ← brSum_ofNat, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
      have h0 : (0 : BitVec 64).toNat = 0 := rfl
      rw [h0]
      have h1 : (0 + brSumN s.memory N 16 % 2 ^ 64) % 2 ^ 64 = brSumN s.memory N 16 := by
        rw [Nat.zero_add, Nat.mod_mod, Nat.mod_eq_of_lt (by omega)]
      rw [h1]
      omega
    exact ⟨by omega, fun h => absurd (hK3.symm.trans h) (by decide),
      fun h => absurd (hK3.symm.trans h) (by decide), fun _ => hpl⟩

end InitECandidate.Solver.MemSafe.Trie
