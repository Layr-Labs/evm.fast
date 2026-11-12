import InitECandidate.Solver.MemSafe.Fq.Calls

set_option autoImplicit false

/-!
# `fq12_inv`: arithmetic and call-argument facts

* `DegOK D`: `D = -1` or `D < 13` (what `fq_poly_deg(·, 13)` returns);
* the signed guards `0 >= d1` and `d0 >= d1`;
* `argsOK_sub`, `argCells_sub`, `pre_sub`: `fq_poly_submul(a, b, q, s, db)` with `a` a 416-byte block
  and `s + db <= 12`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

def DegOK (D : BitVec 64) : Prop := D = 0 - 1 ∨ D.toNat < 13

theorem degOK_of_R {vs : List (ValueHOL 64)} {s t : State σ} {v : ValueHOL 64} {A : BitVec 64}
    (h : Spec.Fq12.DegR vs s v t) (hvs : vs = [V A, V (BitVec.ofNat 64 13)]) :
    ∃ D, v = V D ∧ DegOK D := by
  obtain ⟨A', N, hvs', -, hd⟩ := h
  rw [hvs] at hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true, V] at hvs'
  obtain ⟨-, rfl⟩ := hvs'
  obtain ⟨d, rfl, hdf⟩ := hd rfl
  refine ⟨d, rfl, ?_⟩
  rcases hdf with ⟨h1, -⟩ | ⟨h1, -, -⟩
  · exact Or.inl h1
  · exact Or.inr h1

theorem d1_range' {D1 : BitVec 64} (hdeg : DegOK D1)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLess (BitVec.ofNat 64 0) D1 = false) :
    1 ≤ D1.toNat ∧ D1.toNat ≤ 12 := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_false'] at h
  rcases hdeg with rfl | hlt
  · exact absurd h (by decide)
  · rw [Spec.Fq12.signed_lt_iff (by simp) (by omega)] at h
    simp at h
    omega

theorem inner_cond {D0 D1 : BitVec 64} (h0 : DegOK D0) (h1 : D1.toNat ≤ 12)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLess D0 D1 = true) :
    D0 ≠ 0 - 1 ∧ D1.toNat ≤ D0.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true'] at h
  rcases h0 with rfl | hlt
  · rw [Spec.Fq12.signed_m1_lt (y := D1) (by omega)] at h
    exact absurd h (by decide)
  · have hne : D0 ≠ 0 - 1 := by intro he; rw [he, Spec.Fq12.m1_toNat] at hlt; omega
    rw [Spec.Fq12.signed_lt_iff (by omega) (by omega)] at h
    simp at h
    exact ⟨hne, by omega⟩

theorem toNat_sub_le' {x y : BitVec 64} (h : y.toNat ≤ x.toNat) : (x - y).toNat = x.toNat - y.toNat :=
  BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact h)

theorem toNat_inc' {I : BitVec 64} (h : I.toNat + 1 < 2 ^ 64) :
    (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 1) (by omega),
    Nat.mod_eq_of_lt (by omega)]

/-- `A + S * 32` for `S <= 12` and `A + 416 < 2^64`. -/
theorem toNat_slot1 {A S : BitVec 64} (hS : S.toNat ≤ 12) (hA : A.toNat + 416 < 2 ^ 64) :
    (A + S * BitVec.ofNat 64 32).toNat = A.toNat + 32 * S.toNat := by
  have e2 : (S * BitVec.ofNat 64 32).toNat = 32 * S.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  rw [BitVec.toNat_add, e2, Nat.mod_eq_of_lt (by omega)]

theorem argsOK_sub {C : Cfg} {Γ : Gam} {p : Ptrs} {A : BitVec 64} {v1 v2 v3 v4 : ValueHOL 64}
    (h : BufOK C Γ p A.toNat 416) :
    ArgsOK C Γ p Bn2.bnSubSig.params [V A, v1, v2, v3, v4] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnSubSig] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨A, rfl, h⟩
  all_goals trivial

theorem argCells_sub {A : BitVec 64} {v1 v2 v3 v4 : ValueHOL 64} {x : BitVec 64}
    (h : ArgCells Bn2.bnSubSig.params [V A, v1, v2, v3, v4] x) : Overlap A.toNat 416 x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, ho⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnSubSig] at hn
    subst hn
    simp [argW, wordOf, V] at hw
    subst hw
    exact ho
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [Bn2.bnSubSig] at hj

theorem pre_sub {A : BitVec 64} {v1 v2 : ValueHOL 64} {S DB : BitVec 64}
    (h : S.toNat + DB.toNat ≤ 12) (s : State σ) (Γ : Gam) :
    Bn2.SubPre [V A, v1, v2, V S, V DB] s Γ := by
  intro S' DB' h3 h4
  simp [argW, wordOf, V] at h3 h4
  subst h3; subst h4
  exact h

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.inner_cond
#print axioms InitECandidate.Solver.MemSafe.Fq.argCells_sub
