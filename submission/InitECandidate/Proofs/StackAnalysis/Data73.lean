import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody73_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody73_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody73_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody73_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody73_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def optimizedBody73_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody73_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody73_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody73_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody73_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody73_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_8 optimizedBody73_9

def optimizedBody73_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_7 optimizedBody73_10

def optimizedBody73_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_6 optimizedBody73_11

def optimizedBody73_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_5 optimizedBody73_12

def optimizedBody73_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_4 optimizedBody73_13

def optimizedBody73_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_3 optimizedBody73_14

def optimizedBody73_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_2 optimizedBody73_15

def optimizedBody73_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_1 optimizedBody73_16

def optimizedBody73_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody73_0 optimizedBody73_17

def optimized73 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(73, 2, optimizedBody73_18)
end InitECandidate.Proofs.StackAnalysis
