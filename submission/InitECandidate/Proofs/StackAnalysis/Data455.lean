import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody455_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody455_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody455_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody455_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody455_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_2 optimizedBody455_3

def optimizedBody455_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody455_1, 455, 2)) (some 454) ([]) (some (2, optimizedBody455_4, 455, 3))

def optimizedBody455_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody455_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody455_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody455_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_8 optimizedBody455_3

def optimizedBody455_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody455_7, 455, 4)) (some 433) ([]) (some (2, optimizedBody455_9, 455, 5))

def optimizedBody455_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody455_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody455_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody455_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_12 optimizedBody455_13

def optimizedBody455_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_11 optimizedBody455_14

def optimizedBody455_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_6 optimizedBody455_15

def optimizedBody455_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_10 optimizedBody455_16

def optimizedBody455_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_1 optimizedBody455_17

def optimizedBody455_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_6 optimizedBody455_18

def optimizedBody455_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_5 optimizedBody455_19

def optimizedBody455_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody455_0 optimizedBody455_20

def optimized455 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(455, 1, optimizedBody455_21)
end InitECandidate.Proofs.StackAnalysis
