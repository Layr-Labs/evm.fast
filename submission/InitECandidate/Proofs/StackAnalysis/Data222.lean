import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody222_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 0)]

def optimizedBody222_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 64#64))

def optimizedBody222_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody222_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 72#64))

def optimizedBody222_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 80#64))

def optimizedBody222_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 88#64))

def optimizedBody222_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody222_7 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 102) ([0, 2, 4, 6, 8]) (none)

def optimizedBody222_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_6 optimizedBody222_7

def optimizedBody222_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_5 optimizedBody222_8

def optimizedBody222_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_9

def optimizedBody222_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_4 optimizedBody222_10

def optimizedBody222_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_11

def optimizedBody222_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_3 optimizedBody222_12

def optimizedBody222_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_2 optimizedBody222_13

def optimizedBody222_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_1 optimizedBody222_14

def optimizedBody222_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody222_0 optimizedBody222_15

def optimized222 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(222, 2, optimizedBody222_16)
end InitECandidate.Proofs.StackAnalysis
