import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody76_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody76_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody76_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody76_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody76_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551592#64)))

def optimizedBody76_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody76_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody76_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody76_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody76_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody76_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_8 optimizedBody76_9

def optimizedBody76_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_7 optimizedBody76_10

def optimizedBody76_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_6 optimizedBody76_11

def optimizedBody76_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_5 optimizedBody76_12

def optimizedBody76_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_4 optimizedBody76_13

def optimizedBody76_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_3 optimizedBody76_14

def optimizedBody76_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_2 optimizedBody76_15

def optimizedBody76_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_1 optimizedBody76_16

def optimizedBody76_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody76_0 optimizedBody76_17

def optimized76 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(76, 2, optimizedBody76_18)
end InitECandidate.Proofs.StackAnalysis
