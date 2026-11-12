import InitECandidate.Solver.MemSafe.Ptx.PtL1

/-!
# F3e: loop 1 (`ptS56`: the address loop) -- definitions
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

theorem nsS_mono (m : Mem) (P : BitVec 64) {i n : Nat} (h : i ≤ n) : nsS m P i ≤ nsS m P n := by
  induction n with
  | zero =>
    have : i = 0 := by omega
    subst this
    exact Nat.le_refl _
  | succ k ih =>
    rcases Nat.lt_or_ge i (k + 1) with h' | h'
    · have := ih (by omega)
      simp only [nsS]
      omega
    · have : i = k + 1 := by omega
      subst this
      exact Nat.le_refl _

theorem pa_decClock {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) :
    PA E En S (decClockHOLFinite u) := by
  exact ⟨pb_loc h.1 u.locals (u.clock - 1), h.2⟩

end InitECandidate.Solver.MemSafe.Ptx
