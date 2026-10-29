import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody370_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody370_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (46, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody370_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (6, 52)]

def optimizedBody370_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody370_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_2 optimizedBody370_3

def optimizedBody370_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody370_1, 370, 2)) (some 69) ([]) (some (2, optimizedBody370_4, 370, 3))

def optimizedBody370_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody370_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 8)]

def optimizedBody370_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (6, 46), (46, 48)]

def optimizedBody370_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48)]

def optimizedBody370_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_9 optimizedBody370_3

def optimizedBody370_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody370_8, 370, 4)) (some 367) ([2, 4, 6]) (some (2, optimizedBody370_10, 370, 5))

def optimizedBody370_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody370_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody370_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody370_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_14 optimizedBody370_3

def optimizedBody370_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody370_13, 370, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody370_15, 370, 7))

def optimizedBody370_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody370_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody370_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody370_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_19 optimizedBody370_3

def optimizedBody370_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody370_18, 370, 8)) (some 70) ([2]) (some (2, optimizedBody370_20, 370, 9))

def optimizedBody370_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody370_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody370_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody370_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_23 optimizedBody370_24

def optimizedBody370_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_22 optimizedBody370_25

def optimizedBody370_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_6 optimizedBody370_26

def optimizedBody370_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_21 optimizedBody370_27

def optimizedBody370_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_17 optimizedBody370_28

def optimizedBody370_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_6 optimizedBody370_29

def optimizedBody370_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_16 optimizedBody370_30

def optimizedBody370_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_12 optimizedBody370_31

def optimizedBody370_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_6 optimizedBody370_32

def optimizedBody370_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_11 optimizedBody370_33

def optimizedBody370_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_7 optimizedBody370_34

def optimizedBody370_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_6 optimizedBody370_35

def optimizedBody370_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_5 optimizedBody370_36

def optimizedBody370_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody370_0 optimizedBody370_37

def optimized370 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(370, 5, optimizedBody370_38)
end InitECandidate.Proofs.StackAnalysis
