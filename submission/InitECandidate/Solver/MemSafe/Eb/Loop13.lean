import InitECandidate.Solver.MemSafe.Eb.Loop12

/-!
# `execute_block`: loop part 13 (the `while` loop, `loop_walk`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem less_true' {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true) : x.toNat < y.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess, hx, hy,
    if_true, decide_eq_true_eq] at h
  exact h

theorem less_false' {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = false) : y.toNat ≤ x.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess, hx, hy,
    if_true, decide_eq_false_iff_not] at h
  omega

end InitECandidate.Solver.MemSafe.Eb
