import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody249_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody249_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody249_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody249_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody249_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_2 optimizedBody249_3

def optimizedBody249_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody249_1, 249, 2)) (some 248) ([]) (some (2, optimizedBody249_4, 249, 3))

def optimizedBody249_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody249_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (0, 44)]

def optimizedBody249_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody249_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_8 optimizedBody249_3

def optimizedBody249_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody249_7, 249, 4)) (some 90) ([]) (some (2, optimizedBody249_9, 249, 5))

def optimizedBody249_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 6), (4, 4)]

def optimizedBody249_12 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 256) ([0, 2, 4]) (none)

def optimizedBody249_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_11 optimizedBody249_12

def optimizedBody249_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_6 optimizedBody249_13

def optimizedBody249_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_10 optimizedBody249_14

def optimizedBody249_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_1 optimizedBody249_15

def optimizedBody249_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_6 optimizedBody249_16

def optimizedBody249_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_5 optimizedBody249_17

def optimizedBody249_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody249_0 optimizedBody249_18

def optimized249 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(249, 1, optimizedBody249_19)
end InitECandidate.Proofs.StackAnalysis
