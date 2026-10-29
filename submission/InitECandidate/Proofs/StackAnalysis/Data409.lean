import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody409_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody409_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 4), (0, 2), (10, 44), (8, 46)]

def optimizedBody409_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (8, 46)]

def optimizedBody409_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody409_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_2 optimizedBody409_3

def optimizedBody409_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody409_1, 409, 2)) (some 186) ([2, 4]) (some (2, optimizedBody409_4, 409, 3))

def optimizedBody409_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody409_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody409_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody409_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody409_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody409_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4]

def optimizedBody409_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_10 optimizedBody409_11

def optimizedBody409_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_9 optimizedBody409_12

def optimizedBody409_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_8 optimizedBody409_13

def optimizedBody409_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_14

def optimizedBody409_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody409_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody409_15 optimizedBody409_16

def optimizedBody409_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 8), (44, 10)]

def optimizedBody409_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (0, 44)]

def optimizedBody409_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody409_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_20 optimizedBody409_3

def optimizedBody409_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody409_19, 409, 4)) (some 186) ([2, 4]) (some (2, optimizedBody409_21, 409, 5))

def optimizedBody409_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody409_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody409_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_23 optimizedBody409_24

def optimizedBody409_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_25

def optimizedBody409_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_22 optimizedBody409_26

def optimizedBody409_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_18 optimizedBody409_27

def optimizedBody409_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_28

def optimizedBody409_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_29

def optimizedBody409_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_17 optimizedBody409_30

def optimizedBody409_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_8 optimizedBody409_31

def optimizedBody409_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_7 optimizedBody409_32

def optimizedBody409_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_6 optimizedBody409_33

def optimizedBody409_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_5 optimizedBody409_34

def optimizedBody409_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody409_0 optimizedBody409_35

def optimized409 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(409, 4, optimizedBody409_36)
end InitECandidate.Proofs.StackAnalysis
