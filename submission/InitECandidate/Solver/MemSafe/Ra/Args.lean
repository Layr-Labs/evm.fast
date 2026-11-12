import InitECandidate.Solver.MemSafe.Ra.Callees

set_option autoImplicit false

/-!
# Argument obligations for the callees of `recover_authority` (sonnet-ra)

`ao_*`: `ArgsOK` for a parameter list with one buffer parameter; `ac_*`: its `ArgCells` are the
buffer's overlapped cells.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

theorem wordOf_eq {v : ValueHOL 64} {w : BitVec 64} (h : wordOf v = some w) : v = .val (.word w) := by
  cases v with
  | val x => cases x; simp [wordOf] at h; rw [h]
  | _ => simp [wordOf] at h

/-! ### `[.any, .buf n]` -/

theorem ao_ab {C : Cfg} {Γ : Gam} {q : Ptrs} (v0 : ValueHOL 64) (T : BitVec 64) {n : Nat}
    (h : BufOK C Γ q T.toNat n) : ArgsOK C Γ q [.any, .buf n] [v0, .val (.word T)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · exact ⟨T, rfl, h⟩

theorem ac_ab {v0 : ValueHOL 64} {T : BitVec 64} {n : Nat} {x : BitVec 64}
    (h : ArgCells [.any, .buf n] [v0, .val (.word T)] x) : Overlap T.toNat n x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, z, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hm
    subst hm
    simp [argW, wordOf] at hw
    subst hw
    simpa using ho
  · rcases i with _ | _ | i <;> simp at hj

/-! ### `[.buf n, .any]` -/

theorem ao_ba {C : Cfg} {Γ : Gam} {q : Ptrs} (T : BitVec 64) (v1 : ValueHOL 64) {n : Nat}
    (h : BufOK C Γ q T.toNat n) : ArgsOK C Γ q [.buf n, .any] [.val (.word T), v1] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨T, rfl, h⟩
  · trivial

theorem ac_ba {v1 : ValueHOL 64} {T : BitVec 64} {n : Nat} {x : BitVec 64}
    (h : ArgCells [.buf n, .any] [.val (.word T), v1] x) : Overlap T.toNat n x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, z, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hm
    subst hm
    simp [argW, wordOf] at hw
    subst hw
    simpa using ho
  · rcases i with _ | _ | i <;> simp at hj

/-! ### `[.any, .any, .buf n]` -/

theorem ao_aab {C : Cfg} {Γ : Gam} {q : Ptrs} (v0 v1 : ValueHOL 64) (T : BitVec 64) {n : Nat}
    (h : BufOK C Γ q T.toNat n) :
    ArgsOK C Γ q [.any, .any, .buf n] [v0, v1, .val (.word T)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · trivial
  · exact ⟨T, rfl, h⟩

theorem ac_aab {v0 v1 : ValueHOL 64} {T : BitVec 64} {n : Nat} {x : BitVec 64}
    (h : ArgCells [.any, .any, .buf n] [v0, v1, .val (.word T)] x) : Overlap T.toNat n x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, z, hj, -⟩
  · rcases i with _ | _ | _ | i <;> simp at hm
    subst hm
    simp [argW, wordOf] at hw
    subst hw
    simpa using ho
  · rcases i with _ | _ | _ | i <;> simp at hj

/-! ### `[.any, .any, .any, .any, .buf n]` -/

theorem ao_aaaab {C : Cfg} {Γ : Gam} {q : Ptrs} (v0 v1 v2 v3 : ValueHOL 64) (T : BitVec 64) {n : Nat}
    (h : BufOK C Γ q T.toNat n) :
    ArgsOK C Γ q [.any, .any, .any, .any, .buf n] [v0, v1, v2, v3, .val (.word T)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · trivial
  · trivial
  · trivial
  · exact ⟨T, rfl, h⟩

theorem ac_aaaab {v0 v1 v2 v3 : ValueHOL 64} {T : BitVec 64} {n : Nat} {x : BitVec 64}
    (h : ArgCells [.any, .any, .any, .any, .buf n] [v0, v1, v2, v3, .val (.word T)] x) :
    Overlap T.toNat n x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, z, hj, -⟩
  · rcases i with _ | _ | _ | _ | _ | i <;> simp at hm
    subst hm
    simp [argW, wordOf] at hw
    subst hw
    simpa using ho
  · rcases i with _ | _ | _ | _ | _ | i <;> simp at hj

/-! ### `[.bufArg 2 1 d, .any, .any]` -/

theorem ao_barg {C : Cfg} {Γ : Gam} {q : Ptrs} (D : BitVec 64) (v1 : ValueHOL 64) (N : BitVec 64)
    (d : Nat) (h : BufOK C Γ q D.toNat (1 * N.toNat + d)) :
    ArgsOK C Γ q [.bufArg 2 1 d, .any, .any] [.val (.word D), v1, .val (.word N)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem ac_barg {v1 : ValueHOL 64} {D N : BitVec 64} {d : Nat} {x : BitVec 64}
    (h : ArgCells [.bufArg 2 1 d, .any, .any] [.val (.word D), v1, .val (.word N)] x) :
    Overlap D.toNat (1 * N.toNat + d) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d', z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp at hm
  · rcases i with _ | _ | _ | i <;> simp at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.ao_barg
#print axioms InitECandidate.Solver.MemSafe.Ra.ac_aaaab
