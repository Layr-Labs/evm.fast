import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody491_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody491_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody491_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody491_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody491_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody491_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody491_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody491_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody491_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_6 optimizedBody491_7

def optimizedBody491_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_5 optimizedBody491_8

def optimizedBody491_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_4 optimizedBody491_9

def optimizedBody491_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_3 optimizedBody491_10

def optimizedBody491_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_2 optimizedBody491_11

def optimizedBody491_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_1 optimizedBody491_12

def optimizedBody491_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody491_0 optimizedBody491_13

def optimized491 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(491, 1, optimizedBody491_14)
end InitECandidate.Proofs.StackAnalysis
