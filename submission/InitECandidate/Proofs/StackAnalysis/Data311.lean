import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody311_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody311_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (4, 46), (0, 48), (6, 50)]

def optimizedBody311_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (6, 50)]

def optimizedBody311_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody311_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_2 optimizedBody311_3

def optimizedBody311_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody311_1, 311, 2)) (some 69) ([]) (some (2, optimizedBody311_4, 311, 3))

def optimizedBody311_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody311_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 8)]

def optimizedBody311_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 4), (4, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody311_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48)]

def optimizedBody311_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_9 optimizedBody311_3

def optimizedBody311_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody311_8, 311, 4)) (some 310) ([2, 4, 6]) (some (2, optimizedBody311_10, 311, 5))

def optimizedBody311_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody311_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody311_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody311_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (6, 6), (44, 44), (0, 46)]

def optimizedBody311_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody311_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_16 optimizedBody311_3

def optimizedBody311_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody311_15, 311, 6)) (some 306) ([2, 4, 6]) (some (2, optimizedBody311_17, 311, 7))

def optimizedBody311_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4), (48, 8), (50, 6)]

def optimizedBody311_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody311_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (8, 48), (6, 50)]

def optimizedBody311_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_21 optimizedBody311_3

def optimizedBody311_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody311_20, 311, 8)) (some 70) ([2]) (some (2, optimizedBody311_22, 311, 9))

def optimizedBody311_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8), (4, 4), (6, 6)]

def optimizedBody311_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6]

def optimizedBody311_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_24 optimizedBody311_25

def optimizedBody311_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_6 optimizedBody311_26

def optimizedBody311_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_23 optimizedBody311_27

def optimizedBody311_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_19 optimizedBody311_28

def optimizedBody311_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_6 optimizedBody311_29

def optimizedBody311_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_18 optimizedBody311_30

def optimizedBody311_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_14 optimizedBody311_31

def optimizedBody311_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_13 optimizedBody311_32

def optimizedBody311_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_12 optimizedBody311_33

def optimizedBody311_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_6 optimizedBody311_34

def optimizedBody311_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_11 optimizedBody311_35

def optimizedBody311_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_7 optimizedBody311_36

def optimizedBody311_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_6 optimizedBody311_37

def optimizedBody311_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_5 optimizedBody311_38

def optimizedBody311_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody311_0 optimizedBody311_39

def optimized311 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(311, 4, optimizedBody311_40)
end InitECandidate.Proofs.StackAnalysis
