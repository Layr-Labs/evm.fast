import InitECandidate.Solver.MemSafe.BlsSlotCost.Table
import InitECandidate.Solver.MemSafe.PtC.K1
import InitECandidate.Solver.MemSafe.Entry2.Final
import InitECandidate.Solver.MemSafe.Wg.CostWd

/-!
# PtC: the cost kit, part 2 (the structural bound `cbd`)
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
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- The bound of `process_message_call` at `M = 2^24 + 2`. -/
def bPmc : Nat := Entry2.pmcB (2 ^ 24 + 2) Entry2.bOp

/-- The bound of a callee: the table, else the two conditional callees of `process_transaction`. -/
def tbl (f : MlS) : Nat :=
  match BlsSlotCost.Callers.table12 f with
  | some B => B
  | none => if f = nm "process_message_call" then bPmc else if f = nm "incorporate_tx_into_block" then Wg.bInc else 0

/-- The structural bound of a program of the spine (binders, sequences, branches, calls); leaves by the analyzer. -/
def cbd : ProgHOL 64 → Nat
  | .seq a b => cbd a + cbd b
  | .ite _ a b => max (cbd a) (cbd b)
  | .dec _ _ _ b => cbd b
  | .decCall _ _ f _ k => 1 + tbl f + cbd k
  | .call none f _ => 1 + tbl f + 0
  | .call (some (_, none)) f _ => 1 + tbl f + 0
  | p => (BlsSlotCost.Table.costFin p).getD 0

example : BlsSlotCost.Table.costFin ptS4 = some (cbd ptS4) := by decide_cbv
example : BlsSlotCost.Table.costFin ptS212 = some (cbd ptS212) := by decide_cbv
example : BlsSlotCost.Table.costFin ptS172 = some (cbd ptS172) := by decide_cbv

end InitECandidate.Solver.MemSafe.PtC
