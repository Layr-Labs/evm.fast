import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody353_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody353_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 352#64))

def optimizedBody353_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody353_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 360#64))

def optimizedBody353_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 368#64))

def optimizedBody353_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 376#64))

def optimizedBody353_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody353_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody353_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_6 optimizedBody353_7

def optimizedBody353_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_5 optimizedBody353_8

def optimizedBody353_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_2 optimizedBody353_9

def optimizedBody353_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_4 optimizedBody353_10

def optimizedBody353_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_2 optimizedBody353_11

def optimizedBody353_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_3 optimizedBody353_12

def optimizedBody353_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_2 optimizedBody353_13

def optimizedBody353_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_1 optimizedBody353_14

def optimizedBody353_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody353_0 optimizedBody353_15

def optimized353 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(353, 2, optimizedBody353_16)
end InitECandidate.Proofs.StackAnalysis
