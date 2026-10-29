import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody130_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0)]

def optimizedBody130_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 2), (6, 6), (4, 4), (0, 44)]

def optimizedBody130_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody130_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody130_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody130_2 optimizedBody130_3

def optimizedBody130_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14, 16]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody130_1, 130, 2)) (some 129) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody130_4, 130, 3))

def optimizedBody130_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody130_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody130_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody130_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody130_7 optimizedBody130_8

def optimizedBody130_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody130_6 optimizedBody130_9

def optimizedBody130_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody130_5 optimizedBody130_10

def optimizedBody130_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody130_0 optimizedBody130_11

def optimized130 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(130, 9, optimizedBody130_12)
end InitECandidate.Proofs.StackAnalysis
