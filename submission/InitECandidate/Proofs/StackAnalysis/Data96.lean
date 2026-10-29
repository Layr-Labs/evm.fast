import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody96_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody96_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 44)]

def optimizedBody96_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody96_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody96_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody96_2 optimizedBody96_3

def optimizedBody96_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody96_1, 96, 2)) (some 94) ([2, 4]) (some (2, optimizedBody96_4, 96, 3))

def optimizedBody96_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody96_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody96_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody96_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody96_7 optimizedBody96_8

def optimizedBody96_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody96_6 optimizedBody96_9

def optimizedBody96_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody96_5 optimizedBody96_10

def optimizedBody96_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody96_0 optimizedBody96_11

def optimized96 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(96, 3, optimizedBody96_12)
end InitECandidate.Proofs.StackAnalysis
