import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody764_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 2)]

def optimizedBody764_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46)]

def optimizedBody764_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody764_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody764_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_2 optimizedBody764_3

def optimizedBody764_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_1, 764, 2)) (some 763) ([2, 4]) (some (2, optimizedBody764_4, 764, 3))

def optimizedBody764_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody764_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (44, 44)]

def optimizedBody764_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody764_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody764_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_9 optimizedBody764_3

def optimizedBody764_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody764_8, 764, 4)) (some 760) ([2, 4]) (some (2, optimizedBody764_10, 764, 5))

def optimizedBody764_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody764_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody764_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody764_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_13 optimizedBody764_14

def optimizedBody764_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_12 optimizedBody764_15

def optimizedBody764_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_16

def optimizedBody764_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_11 optimizedBody764_17

def optimizedBody764_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_7 optimizedBody764_18

def optimizedBody764_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_6 optimizedBody764_19

def optimizedBody764_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_5 optimizedBody764_20

def optimizedBody764_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody764_0 optimizedBody764_21

def optimized764 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(764, 3, optimizedBody764_22)
end InitECandidate.Proofs.StackAnalysis
