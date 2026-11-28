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
def bPtLit : Nat := 50242184090838478289801244582038102369297508177384405155058

theorem bPt_eq : bPt = bPtLit := by
  let callCost := cbd (callD (nm "state_fresh_tx") [])
  let tailCost := cbd ptS0
  have splitCost : bPt = callCost + tailCost := by
    conv_lhs => rw [bPt, ptBody, cbd]
  have firstPrice : tbl (nm "state_fresh_tx") = 107 := by decide +kernel
  have callValue : callCost = 108 := by
    dsimp only [callCost]
    conv_lhs => rw [callD, cbd, firstPrice]
  have tailValue : tailCost = 50242184090838478289801244582038102369297508177384405154950 :=
    cbk_0
  have total : 108 + 50242184090838478289801244582038102369297508177384405154950 = bPtLit := by
    decide +kernel
  exact splitCost.trans (addCostValues callValue tailValue total)

/-- **`HypPtCost σ (2^24 + 2) B` for the literal `B = bPtLit`.** -/
theorem hypPtCost_lit : Eb.HypPtCost σ (2 ^ 24 + 2) bPtLit := bPt_eq ▸ hypPtCost

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.hypPtCost_lit
