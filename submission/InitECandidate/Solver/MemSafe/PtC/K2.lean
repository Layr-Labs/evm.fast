import InitECandidate.Solver.Improvements.SeventhReceipt
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
def bPmc : Nat := 25696216083917193191361759794173569780004563835314426555859682839946

/-- The bound of a callee: the table, else the two conditional callees of `process_transaction`. -/
def tbl (f : MlS) : Nat :=
  match Shards.finalState.1.lookup f with
  | some B => if f = nm "encode_receipt" then SeventhReceipt.price else B
  | none => if f = nm "process_message_call" then bPmc else if f = nm "incorporate_tx_into_block" then Wg.bInc else 0

/-- Unconditional analyzer price of the account-deletion loop body, certified in `DelLoop`. -/
def deletionBodyPrice : Nat := 184433042994110756371157730629381081077024

/-- The deletion table's typed count bounds the number of iterations. -/
def deletionLoopPrice : Nat := 2 ^ 32 * (deletionBodyPrice + 1)

/-- Identify the deletion loop guard in the transaction spine. The cost walk
    establishes its conditional price at the typed load of `dcap`. -/
private def deletionGuard : ExpHOL 64 → Bool
  | .cmp .less (.var .local i) (.var .local cap) => i == nm "i" && cap == nm "dcap"
  | _ => false

/-- The structural bound of a program of the spine (binders, sequences, branches, calls); leaves by the analyzer. -/
def cbd : ProgHOL 64 → Nat
  | .seq a b => cbd a + cbd b
  | .ite _ a b => max (cbd a) (cbd b)
  | .dec _ _ _ b => cbd b
  | .decCall _ _ f _ k => 1 + tbl f + cbd k
  | .call none f _ => 1 + tbl f + 0
  | .call (some (_, none)) f _ => 1 + tbl f + 0
  | .while c body => if deletionGuard c then deletionLoopPrice else (Wg.costFin (.while c body)).getD 0
  | p => (Wg.costFin p).getD 0

theorem cbdDeletionLoop : cbd ptS178 = deletionLoopPrice := rfl

end InitECandidate.Solver.MemSafe.PtC
