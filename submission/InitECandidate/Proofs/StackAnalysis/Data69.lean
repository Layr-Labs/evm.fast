import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody69_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody69_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody69_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody69_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody69_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551608#64))

def optimizedBody69_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody69_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody69_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_5 optimizedBody69_6

def optimizedBody69_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_4 optimizedBody69_7

def optimizedBody69_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_3 optimizedBody69_8

def optimizedBody69_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_2 optimizedBody69_9

def optimizedBody69_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_1 optimizedBody69_10

def optimizedBody69_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody69_0 optimizedBody69_11

def optimized69 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(69, 1, optimizedBody69_12)
end InitECandidate.Proofs.StackAnalysis
