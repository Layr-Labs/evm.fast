import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody390_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody390_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody390_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody390_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody390_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551600#64))

def optimizedBody390_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody390_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody390_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_5 optimizedBody390_6

def optimizedBody390_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_4 optimizedBody390_7

def optimizedBody390_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_3 optimizedBody390_8

def optimizedBody390_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_2 optimizedBody390_9

def optimizedBody390_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_1 optimizedBody390_10

def optimizedBody390_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody390_0 optimizedBody390_11

def optimized390 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(390, 1, optimizedBody390_12)
end InitECandidate.Proofs.StackAnalysis
