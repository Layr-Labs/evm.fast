import InitECandidate.Solver.MemSafe.Mod.Eval
import InitECandidate.Solver.MemSafe.Bn.JL
import InitECandidate.Solver.MemSafe.Bn2.Mul
import InitECandidate.Solver.MemSafe.Bn2.Mod
import InitECandidate.Solver.MemSafe.Helpers.Mem

set_option autoImplicit false

/-!
# Argument lemmas for the callees of `modexp`

For each callee signature and the literal argument list of `modexp`'s call: the `ArgsOK` from
`BufOK` facts of the buffer arguments, and the cells of the buffer arguments
(`ArgCells`) as overlaps with the buffer ranges.

* `bn_from_be(p, nbytes, d)`: `d` is `bufArg 1 2 6`;  `bn_to_be(d, nd, out, nbytes)`: `out` is `bufArg 3 1 0`;
* `bn_mul(a, na, b, nb, out)`: `out` is `bufArg 1 16 0`;
* `bn_mod(u, m, v, n, r, q, un, vn)`: `r`, `vn` are `bufArg 3 8 0`, `q` `bufArg 1 8 0`, `un` `bufArg 1 8 8`;
* `memzero(d, n)`: `bufArg 1 1 0`;  `memcpy(d, s, n)`: `bufArg 2 1 0`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe

variable {σ : Type} {C : Cfg} {Γ : Gam} {p : Ptrs}

abbrev V (w : BitVec 64) : ValueHOL 64 := .val (.word w)

/-! ### `bn_from_be` -/

theorem argsOK_bfb {P NB D : BitVec 64} (h : BufOK C Γ p D.toNat (2 * NB.toNat + 6)) :
    ArgsOK C Γ p Bn.bnFromBeSig.params [V P, V NB, V D] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Bn.bnFromBeSig] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · exact ⟨D, NB, rfl, rfl, h⟩

theorem argCells_bfb {P NB D x : BitVec 64}
    (h : ArgCells Bn.bnFromBeSig.params [V P, V NB, V D] x) : Overlap D.toNat (2 * NB.toNat + 6) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [Bn.bnFromBeSig] at hn
  · rcases i with _ | _ | _ | i <;> simp [Bn.bnFromBeSig] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

/-! ### `bn_to_be` -/

theorem argsOK_btb {R N O ML : BitVec 64} (h : BufOK C Γ p O.toNat (1 * ML.toNat + 0)) :
    ArgsOK C Γ p Bn.bnToBeSig.params [V R, V N, V O, V ML] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | i <;> simp [Bn.bnToBeSig] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · exact ⟨O, ML, rfl, rfl, h⟩
  · trivial

theorem argCells_btb {R N O ML x : BitVec 64}
    (h : ArgCells Bn.bnToBeSig.params [V R, V N, V O, V ML] x) : Overlap O.toNat (1 * ML.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | i <;> simp [Bn.bnToBeSig] at hn
  · rcases i with _ | _ | _ | _ | i <;> simp [Bn.bnToBeSig] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

/-! ### `bn_mul` -/

theorem argsOK_mul {A NA B NB O : BitVec 64} (h : BufOK C Γ p O.toNat (16 * NA.toNat + 0)) :
    ArgsOK C Γ p Bn2.bnMulSig.params [V A, V NA, V B, V NB, V O] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnMulSig] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · trivial
  · trivial
  · exact ⟨O, NA, rfl, rfl, h⟩

theorem argCells_mul {A NA B NB O x : BitVec 64}
    (h : ArgCells Bn2.bnMulSig.params [V A, V NA, V B, V NB, V O] x) :
    Overlap O.toNat (16 * NA.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnMulSig] at hn
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnMulSig] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

theorem pre_mul {A NA B NB O : BitVec 64} (h : NB.toNat ≤ NA.toNat) (s : State σ) (Γ : Gam) :
    Bn2.BnMulPre [V A, V NA, V B, V NB, V O] s Γ := by
  intro NA' NB' h1 h3
  simp [argW, wordOf, V] at h1 h3
  subst h1; subst h3
  exact h

/-! ### `bn_mod` -/

theorem argsOK_mod {U M2 MD N R Q UN VN : BitVec 64}
    (hr : BufOK C Γ p R.toNat (8 * N.toNat + 0)) (hq : BufOK C Γ p Q.toNat (8 * M2.toNat + 0))
    (hu : BufOK C Γ p UN.toNat (8 * M2.toNat + 8)) (hv : BufOK C Γ p VN.toNat (8 * N.toNat + 0)) :
    ArgsOK C Γ p Bn2.bnModSig.params [V U, V M2, V MD, V N, V R, V Q, V UN, V VN] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [Bn2.bnModSig] at hpt hw <;>
    subst hpt <;> subst hw
  · trivial
  · trivial
  · trivial
  · trivial
  · exact ⟨R, N, rfl, rfl, hr⟩
  · exact ⟨Q, M2, rfl, rfl, hq⟩
  · exact ⟨UN, M2, rfl, rfl, hu⟩
  · exact ⟨VN, N, rfl, rfl, hv⟩

theorem argCells_mod {U M2 MD N R Q UN VN x : BitVec 64}
    (h : ArgCells Bn2.bnModSig.params [V U, V M2, V MD, V N, V R, V Q, V UN, V VN] x) :
    Overlap R.toNat (8 * N.toNat + 0) x ∨ Overlap Q.toNat (8 * M2.toNat + 0) x ∨
      Overlap UN.toNat (8 * M2.toNat + 8) x ∨ Overlap VN.toNat (8 * N.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [Bn2.bnModSig] at hn
  · rcases i with _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [Bn2.bnModSig] at hj
    · obtain ⟨rfl, rfl, rfl⟩ := hj
      simp [argW, wordOf, V] at hw hz
      subst hw; subst hz
      exact Or.inl ho
    · obtain ⟨rfl, rfl, rfl⟩ := hj
      simp [argW, wordOf, V] at hw hz
      subst hw; subst hz
      exact Or.inr (Or.inl ho)
    · obtain ⟨rfl, rfl, rfl⟩ := hj
      simp [argW, wordOf, V] at hw hz
      subst hw; subst hz
      exact Or.inr (Or.inr (Or.inl ho))
    · obtain ⟨rfl, rfl, rfl⟩ := hj
      simp [argW, wordOf, V] at hw hz
      subst hw; subst hz
      exact Or.inr (Or.inr (Or.inr ho))

theorem pre_mod {U M2 MD N R Q UN VN : BitVec 64} (h : 1 ≤ N.toNat) (s : State σ) (Γ : Gam) :
    Bn2.BnModPre [V U, V M2, V MD, V N, V R, V Q, V UN, V VN] s Γ := by
  intro N' h3
  simp [argW, wordOf, V] at h3
  subst h3
  exact h

/-! ### `memzero`, `memcpy` -/

theorem argsOK_mz {D N : BitVec 64} (h : BufOK C Γ p D.toNat (1 * N.toNat + 0)) :
    ArgsOK C Γ p Helpers.sigMemzero.params [V D, V N] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial

theorem argCells_mz {D N x : BitVec 64} (h : ArgCells Helpers.sigMemzero.params [V D, V N] x) :
    Overlap D.toNat (1 * N.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hn
  · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_mc {D S N : BitVec 64} (h : BufOK C Γ p D.toNat (1 * N.toNat + 0)) :
    ArgsOK C Γ p Helpers.sigMemcpy.params [V D, V S, V N] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem argCells_mc {D S N x : BitVec 64} (h : ArgCells Helpers.sigMemcpy.params [V D, V S, V N] x) :
    Overlap D.toNat (1 * N.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hn
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.argCells_mod
