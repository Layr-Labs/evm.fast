import InitECandidate.Solver.MemSafe.Ptx.PtD7

/-!
# F3e: chunk 4a (`te_new` and the first stores into `te`, `ptS38` to `ptS47`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem nonrd_fbuf (wt : BitVec 64) (N : Nat) : ∀ y, ¬ (Fct.fbuf wt N).reads y := by simp [Fct.reads]
theorem nonrd_prop (P : Prop) : ∀ y, ¬ (Fct.prop P).reads y := by simp [Fct.reads]

end InitECandidate.Solver.MemSafe.Ptx
