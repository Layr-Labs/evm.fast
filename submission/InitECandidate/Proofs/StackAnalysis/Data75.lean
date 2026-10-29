import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody75_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody75_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody75_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody75_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody75_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551592#64))

def optimizedBody75_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody75_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody75_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_5 optimizedBody75_6

def optimizedBody75_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_4 optimizedBody75_7

def optimizedBody75_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_3 optimizedBody75_8

def optimizedBody75_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_2 optimizedBody75_9

def optimizedBody75_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_1 optimizedBody75_10

def optimizedBody75_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody75_0 optimizedBody75_11

def optimized75 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(75, 1, optimizedBody75_12)
end InitECandidate.Proofs.StackAnalysis
