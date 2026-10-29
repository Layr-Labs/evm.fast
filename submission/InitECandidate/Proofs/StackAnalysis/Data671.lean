import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody671_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0), (4, 4), (8, 6)]

def optimizedBody671_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 12#64)

def optimizedBody671_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody671_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 8), (46, 0)]

def optimizedBody671_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody671_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody671_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody671_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_5 optimizedBody671_6

def optimizedBody671_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody671_4, 671, 2)) (some 669) ([2, 4]) (some (2, optimizedBody671_7, 671, 3))

def optimizedBody671_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody671_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody671_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody671_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_10 optimizedBody671_11

def optimizedBody671_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_9 optimizedBody671_12

def optimizedBody671_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_2 optimizedBody671_13

def optimizedBody671_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_8 optimizedBody671_14

def optimizedBody671_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_3 optimizedBody671_15

def optimizedBody671_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_2 optimizedBody671_16

def optimizedBody671_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (6, 6), (8, 8), (44, 0)]

def optimizedBody671_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody671_17 optimizedBody671_18

def optimizedBody671_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 8), (8, 8), (44, 44)]

def optimizedBody671_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody671_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody671_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_22 optimizedBody671_6

def optimizedBody671_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody671_21, 671, 4)) (some 670) ([2, 4, 6, 8]) (some (2, optimizedBody671_23, 671, 5))

def optimizedBody671_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_24 optimizedBody671_14

def optimizedBody671_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_20 optimizedBody671_25

def optimizedBody671_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_2 optimizedBody671_26

def optimizedBody671_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_2 optimizedBody671_27

def optimizedBody671_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_19 optimizedBody671_28

def optimizedBody671_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_1 optimizedBody671_29

def optimizedBody671_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody671_0 optimizedBody671_30

def optimized671 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(671, 4, optimizedBody671_31)
end InitECandidate.Proofs.StackAnalysis
