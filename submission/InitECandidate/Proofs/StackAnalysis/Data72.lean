import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody72_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody72_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody72_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody72_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody72_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551584#64))

def optimizedBody72_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody72_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody72_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_5 optimizedBody72_6

def optimizedBody72_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_4 optimizedBody72_7

def optimizedBody72_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_3 optimizedBody72_8

def optimizedBody72_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_2 optimizedBody72_9

def optimizedBody72_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_1 optimizedBody72_10

def optimizedBody72_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody72_0 optimizedBody72_11

def optimized72 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(72, 1, optimizedBody72_12)
end InitECandidate.Proofs.StackAnalysis
