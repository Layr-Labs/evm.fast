import InitECandidate.Solver.MemSafe.Trie.CsrA
import InitECandidate.Solver.MemSafe.Trie.MptSet

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: argument lists of the buffer callees
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

theorem argsOK_ab {C : Cfg} {Γ : Gam} {p : Ptrs} {v0 : ValueHOL 64} {w : BitVec 64} {n : Nat}
    (h : BufOK C Γ p w.toNat n) :
    ArgsOK C Γ p [.any, .buf n] [v0, .val (.word w)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · exact ⟨w, rfl, h⟩

theorem argCells_ab {n : Nat} {v0 : ValueHOL 64} {w x : BitVec 64}
    (h : ArgCells [.any, .buf n] [v0, .val (.word w)] x) : Overlap w.toNat n x := by
  obtain ⟨i, w', hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | i
    · simp at hm
    · simp at hm
      subst hm
      simp [argW, wordOf] at hw
      subst hw
      exact ho
    · simp at hm
  · rcases i with _ | _ | i <;> simp at hj

theorem argsOK_rlp {C : Cfg} {Γ : Gam} {p : Ptrs} {v1 : ValueHOL 64} {D N : BitVec 64}
    (h : BufOK C Γ p D.toNat (1 * N.toNat + 9)) :
    ArgsOK C Γ p [.bufArg 2 1 9, .any, .any] [.val (.word D), v1, .val (.word N)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem argCells_rlp {v1 : ValueHOL 64} {D N x : BitVec 64}
    (h : ArgCells [.bufArg 2 1 9, .any, .any] [.val (.word D), v1, .val (.word N)] x) :
    Overlap D.toNat (1 * N.toNat + 9) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, -⟩ | ⟨j, c, d, y, hj, hy, ho⟩
  · rcases i with _ | _ | _ | i <;> simp at hm
  · rcases i with _ | _ | _ | i <;> simp at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hy
    subst hw; subst hy
    exact ho

theorem argsOK_mps {C : Cfg} {Γ : Gam} {p : Ptrs} {k kl vp vl : ValueHOL 64} {w : BitVec 64}
    (h : BufOK C Γ p w.toNat 16) :
    ArgsOK C Γ p mpsSig.params [.val (.word w), k, kl, vp, vl] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp [mpsSig] at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨w, rfl, h⟩
  all_goals trivial

theorem argCells_mps {k kl vp vl : ValueHOL 64} {w x : BitVec 64}
    (h : ArgCells mpsSig.params [.val (.word w), k, kl, vp, vl] x) : Overlap w.toNat 16 x := by
  obtain ⟨i, w', hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [mpsSig] at hm
    simp [argW, wordOf] at hw
    subst hw
    subst hm
    exact ho
  · rcases i with _ | _ | _ | _ | _ | i <;> simp [mpsSig] at hj

/-- The handle's two cells are a writable buffer. -/
theorem bufok_hrec {C : Cfg} {Γ : Gam} {q : Ptrs} {mm : Mem} {M : BitVec 64} (h : HRec Γ q mm M) :
    BufOK C Γ q M.toNat 16 := by
  obtain ⟨h8, hb, hq, hn0, hn8, -⟩ := h
  intro c ⟨hc8, hc1, hc2⟩
  right
  have hcM : c.toNat = M.toNat ∨ c.toNat = M.toNat + 8 := by omega
  refine ⟨?_, ?_⟩
  · rcases hcM with h | h <;> rw [h]
    · exact hn0
    · exact hn8
  · unfold Ptrs.Allocated; left; unfold heapBase at *; omega

theorem hrec_cells {Γ : Gam} {q : Ptrs} {mm : Mem} {M y : BitVec 64} (h : HRec Γ q mm M)
    (hy : Overlap M.toNat 16 y) : ¬ InObj Γ y.toNat := by
  obtain ⟨h8, hb, hq, hn0, hn8, -⟩ := h
  obtain ⟨hc8, hc1, hc2⟩ := hy
  have hcM : y.toNat = M.toNat ∨ y.toNat = M.toNat + 8 := by omega
  rcases hcM with h | h <;> rw [h]
  · exact hn0
  · exact hn8

end InitECandidate.Solver.MemSafe.Trie
