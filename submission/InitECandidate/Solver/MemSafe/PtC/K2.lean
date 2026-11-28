import InitECandidate.Solver.Improvements.SeventhReceipt
import InitECandidate.Solver.TxAl.Replay
import InitECandidate.Solver.AddrDec.Receipt
import InitECandidate.Solver.Divm.Replay
import InitECandidate.Solver.HtFd.Analyzer
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
def bPmc : Nat := 62436485732800163323110907244123401516386363636453625

/-- The bound of a callee: the table, else the two conditional callees of `process_transaction`. -/
def tbl (f : MlS) : Nat :=
  match Shards.finalState.1.lookup f with
  | some B => if f = nm "encode_receipt" then InitECandidate.Solver.AddrDec.receiptPrice2
      else if f = nm "recover_sender_with_chain_id" then InitECandidate.Solver.TxAl.recoverPrice
      else if f = nm "encode_transaction" then InitECandidate.Solver.TxAl.encodePrice
      else if f = nm "check_transaction" then InitECandidate.Solver.Divm.checkPrice5
      else if f = nm "calculate_blob_gas_price" then InitECandidate.Solver.Divm.blobPrice5
      else match InitECandidate.Solver.HtFd.htFind f with
        | some B' => B'
        | none => B
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
  | .while c body => if deletionGuard c then deletionLoopPrice else (InitECandidate.Solver.HtFd.costFinH (.while c body)).getD 0
  | p => (Wg.costFin p).getD 0

theorem cbdDeletionLoop : cbd ptS178 = deletionLoopPrice := rfl

end InitECandidate.Solver.MemSafe.PtC
