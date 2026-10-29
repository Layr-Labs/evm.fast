import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody95_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody95_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody95_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody95_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody95_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody95_2 optimizedBody95_3

def optimizedBody95_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody95_1, 95, 2)) (some 94) ([2, 4]) (some (2, optimizedBody95_4, 95, 3))

def optimizedBody95_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody95_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody95_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody95_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody95_7 optimizedBody95_8

def optimizedBody95_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody95_6 optimizedBody95_9

def optimizedBody95_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody95_5 optimizedBody95_10

def optimizedBody95_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody95_0 optimizedBody95_11

def optimized95 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(95, 3, optimizedBody95_12)
end InitECandidate.Proofs.StackAnalysis
