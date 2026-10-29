import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody395_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody395_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 56#64)

def optimizedBody395_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody395_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46)]

def optimizedBody395_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46)]

def optimizedBody395_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody395_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_4 optimizedBody395_5

def optimizedBody395_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody395_3, 395, 2)) (some 68) ([2]) (some (2, optimizedBody395_6, 395, 3))

def optimizedBody395_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody395_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody395_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 56#64)

def optimizedBody395_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 2)]

def optimizedBody395_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody395_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody395_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_13 optimizedBody395_5

def optimizedBody395_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody395_12, 395, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody395_14, 395, 5))

def optimizedBody395_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody395_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody395_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_16 optimizedBody395_17

def optimizedBody395_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_8 optimizedBody395_18

def optimizedBody395_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_15 optimizedBody395_19

def optimizedBody395_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_11 optimizedBody395_20

def optimizedBody395_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_10 optimizedBody395_21

def optimizedBody395_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_9 optimizedBody395_22

def optimizedBody395_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_8 optimizedBody395_23

def optimizedBody395_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_7 optimizedBody395_24

def optimizedBody395_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_2 optimizedBody395_25

def optimizedBody395_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_1 optimizedBody395_26

def optimizedBody395_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody395_0 optimizedBody395_27

def optimized395 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(395, 2, optimizedBody395_28)
end InitECandidate.Proofs.StackAnalysis
