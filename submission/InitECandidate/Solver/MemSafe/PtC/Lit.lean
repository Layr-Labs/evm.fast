import InitECandidate.Solver.MemSafe.PtC.Eq18
import InitECandidate.Solver.MemSafe.PtC.Final

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- The literal bound. -/
def bPtLit : Nat := 1404544343490099317887021779954026714739459870564138299835738978071053496951680224717921741

theorem bPt_eq : bPt = bPtLit := by
  unfold bPt ptBody
  simp only [callD, cbd, cbk_0]
  decide_cbv

/-- **`HypPtCost σ (2^24 + 2) B` for the literal `B = bPtLit`.** -/
theorem hypPtCost_lit : Eb.HypPtCost σ (2 ^ 24 + 2) bPtLit := bPt_eq ▸ hypPtCost

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.hypPtCost_lit
