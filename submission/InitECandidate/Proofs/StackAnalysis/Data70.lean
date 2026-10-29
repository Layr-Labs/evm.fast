import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody70_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody70_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody70_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody70_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody70_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody70_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody70_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody70_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody70_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody70_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody70_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_8 optimizedBody70_9

def optimizedBody70_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_7 optimizedBody70_10

def optimizedBody70_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_6 optimizedBody70_11

def optimizedBody70_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_5 optimizedBody70_12

def optimizedBody70_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_4 optimizedBody70_13

def optimizedBody70_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_3 optimizedBody70_14

def optimizedBody70_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_2 optimizedBody70_15

def optimizedBody70_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_1 optimizedBody70_16

def optimizedBody70_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody70_0 optimizedBody70_17

def optimized70 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(70, 2, optimizedBody70_18)
end InitECandidate.Proofs.StackAnalysis
