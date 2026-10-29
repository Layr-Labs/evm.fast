import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody572_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody572_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody572_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody572_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody572_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody572_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody572_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody572_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody572_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody572_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_7 optimizedBody572_8

def optimizedBody572_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_6 optimizedBody572_9

def optimizedBody572_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_5 optimizedBody572_10

def optimizedBody572_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_4 optimizedBody572_11

def optimizedBody572_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_3 optimizedBody572_12

def optimizedBody572_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_2 optimizedBody572_13

def optimizedBody572_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_1 optimizedBody572_14

def optimizedBody572_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody572_0 optimizedBody572_15

def optimized572 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(572, 1, optimizedBody572_16)
end InitECandidate.Proofs.StackAnalysis
