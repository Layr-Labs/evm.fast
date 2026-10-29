import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody275_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 8), (48, 4), (50, 2), (54, 10), (56, 6)]

def optimizedBody275_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56)]

def optimizedBody275_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56)]

def optimizedBody275_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody275_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_2 optimizedBody275_3

def optimizedBody275_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody275_1, 275, 2)) (some 69) ([]) (some (2, optimizedBody275_4, 275, 3))

def optimizedBody275_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody275_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody275_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56)]

def optimizedBody275_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (6, 46), (0, 48), (46, 50), (48, 52), (8, 54), (4, 56)]

def optimizedBody275_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (46, 50), (48, 52), (8, 54), (4, 56)]

def optimizedBody275_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_10 optimizedBody275_3

def optimizedBody275_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody275_9, 275, 4)) (some 68) ([2]) (some (2, optimizedBody275_11, 275, 5))

def optimizedBody275_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 10)]

def optimizedBody275_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody275_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody275_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_15 optimizedBody275_3

def optimizedBody275_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody275_14, 275, 6)) (some 148) ([2, 4, 6, 8, 10]) (some (2, optimizedBody275_16, 275, 7))

def optimizedBody275_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody275_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody275_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody275_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_20 optimizedBody275_3

def optimizedBody275_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody275_19, 275, 8)) (some 176) ([2, 4, 6]) (some (2, optimizedBody275_21, 275, 9))

def optimizedBody275_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody275_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody275_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody275_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_25 optimizedBody275_3

def optimizedBody275_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody275_24, 275, 10)) (some 70) ([2]) (some (2, optimizedBody275_26, 275, 11))

def optimizedBody275_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody275_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody275_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_28 optimizedBody275_29

def optimizedBody275_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_6 optimizedBody275_30

def optimizedBody275_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_27 optimizedBody275_31

def optimizedBody275_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_23 optimizedBody275_32

def optimizedBody275_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_6 optimizedBody275_33

def optimizedBody275_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_22 optimizedBody275_34

def optimizedBody275_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_18 optimizedBody275_35

def optimizedBody275_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_6 optimizedBody275_36

def optimizedBody275_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_17 optimizedBody275_37

def optimizedBody275_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_13 optimizedBody275_38

def optimizedBody275_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_6 optimizedBody275_39

def optimizedBody275_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_12 optimizedBody275_40

def optimizedBody275_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_8 optimizedBody275_41

def optimizedBody275_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_7 optimizedBody275_42

def optimizedBody275_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_6 optimizedBody275_43

def optimizedBody275_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_5 optimizedBody275_44

def optimizedBody275_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody275_0 optimizedBody275_45

def optimized275 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(275, 6, optimizedBody275_46)
end InitECandidate.Proofs.StackAnalysis
