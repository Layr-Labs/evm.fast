import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody350_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody350_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 160#64))

def optimizedBody350_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody350_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 168#64))

def optimizedBody350_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 176#64))

def optimizedBody350_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 2 184#64))

def optimizedBody350_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody350_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody350_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_6 optimizedBody350_7

def optimizedBody350_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_5 optimizedBody350_8

def optimizedBody350_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_2 optimizedBody350_9

def optimizedBody350_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_4 optimizedBody350_10

def optimizedBody350_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_2 optimizedBody350_11

def optimizedBody350_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_3 optimizedBody350_12

def optimizedBody350_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_2 optimizedBody350_13

def optimizedBody350_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_1 optimizedBody350_14

def optimizedBody350_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody350_0 optimizedBody350_15

def optimized350 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(350, 2, optimizedBody350_16)
end InitECandidate.Proofs.StackAnalysis
