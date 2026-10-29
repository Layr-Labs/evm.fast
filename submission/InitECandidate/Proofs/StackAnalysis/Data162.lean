import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody162_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody162_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (8, 8), (10, 2), (44, 44), (0, 46)]

def optimizedBody162_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody162_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody162_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_2 optimizedBody162_3

def optimizedBody162_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody162_1, 162, 2)) (some 161) ([2, 4]) (some (2, optimizedBody162_4, 162, 3))

def optimizedBody162_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody162_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody162_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody162_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 6), (48, 4), (50, 8), (52, 10)]

def optimizedBody162_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48), (8, 50), (10, 52)]

def optimizedBody162_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48), (8, 50), (10, 52)]

def optimizedBody162_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_11 optimizedBody162_3

def optimizedBody162_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody162_10, 162, 4)) (some 159) ([2]) (some (2, optimizedBody162_12, 162, 5))

def optimizedBody162_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4), (8, 8), (10, 10)]

def optimizedBody162_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_6 optimizedBody162_14

def optimizedBody162_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_13 optimizedBody162_15

def optimizedBody162_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_9 optimizedBody162_16

def optimizedBody162_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_8 optimizedBody162_17

def optimizedBody162_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_6 optimizedBody162_18

def optimizedBody162_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (6, 6), (4, 4), (8, 8), (10, 10)]

def optimizedBody162_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_6 optimizedBody162_20

def optimizedBody162_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 0) optimizedBody162_19 optimizedBody162_21

def optimizedBody162_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody162_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody162_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_23 optimizedBody162_24

def optimizedBody162_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_6 optimizedBody162_25

def optimizedBody162_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_22 optimizedBody162_26

def optimizedBody162_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_7 optimizedBody162_27

def optimizedBody162_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_6 optimizedBody162_28

def optimizedBody162_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_5 optimizedBody162_29

def optimizedBody162_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody162_0 optimizedBody162_30

def optimized162 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(162, 3, optimizedBody162_31)
end InitECandidate.Proofs.StackAnalysis
