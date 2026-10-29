import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody859_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody859_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 200#64)

def optimizedBody859_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody859_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody859_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody859_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody859_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_4 optimizedBody859_5

def optimizedBody859_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_3, 859, 2)) (some 68) ([2]) (some (2, optimizedBody859_6, 859, 3))

def optimizedBody859_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody859_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody859_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 200#64)

def optimizedBody859_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2)]

def optimizedBody859_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody859_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody859_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_13 optimizedBody859_5

def optimizedBody859_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody859_12, 859, 4)) (some 78) ([2, 4]) (some (2, optimizedBody859_14, 859, 5))

def optimizedBody859_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody859_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody859_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_16 optimizedBody859_17

def optimizedBody859_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_8 optimizedBody859_18

def optimizedBody859_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_15 optimizedBody859_19

def optimizedBody859_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_11 optimizedBody859_20

def optimizedBody859_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_10 optimizedBody859_21

def optimizedBody859_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_9 optimizedBody859_22

def optimizedBody859_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_8 optimizedBody859_23

def optimizedBody859_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_7 optimizedBody859_24

def optimizedBody859_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_2 optimizedBody859_25

def optimizedBody859_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_1 optimizedBody859_26

def optimizedBody859_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody859_0 optimizedBody859_27

def optimized859 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(859, 1, optimizedBody859_28)
end InitECandidate.Proofs.StackAnalysis
