import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody309_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody309_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 44), (4, 46)]

def optimizedBody309_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody309_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody309_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody309_2 optimizedBody309_3

def optimizedBody309_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody309_1, 309, 2)) (some 305) ([2, 4]) (some (2, optimizedBody309_4, 309, 3))

def optimizedBody309_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody309_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6), (4, 4)]

def optimizedBody309_8 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 308) ([0, 2, 4]) (none)

def optimizedBody309_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody309_7 optimizedBody309_8

def optimizedBody309_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody309_6 optimizedBody309_9

def optimizedBody309_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody309_5 optimizedBody309_10

def optimizedBody309_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody309_0 optimizedBody309_11

def optimized309 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(309, 4, optimizedBody309_12)
end InitECandidate.Proofs.StackAnalysis
