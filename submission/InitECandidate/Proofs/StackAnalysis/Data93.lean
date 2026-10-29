import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody93_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (0, 0)]

def optimizedBody93_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody93_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody93_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody93_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_2 optimizedBody93_3

def optimizedBody93_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_4

def optimizedBody93_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody93_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody93_5 optimizedBody93_6

def optimizedBody93_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody93_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_8 optimizedBody93_3

def optimizedBody93_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_9

def optimizedBody93_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_1 optimizedBody93_10

def optimizedBody93_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_7 optimizedBody93_11

def optimizedBody93_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody93_0 optimizedBody93_12

def optimized93 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(93, 3, optimizedBody93_13)
end InitECandidate.Proofs.StackAnalysis
