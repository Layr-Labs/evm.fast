import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody567_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody567_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (0, 2), (6, 6), (44, 44)]

def optimizedBody567_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody567_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody567_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_2 optimizedBody567_3

def optimizedBody567_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_1, 567, 2)) (some 475) ([]) (some (2, optimizedBody567_4, 567, 3))

def optimizedBody567_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody567_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody567_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody567_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_8, 567, 4)) (some 466) ([2, 4, 6, 8]) (some (2, optimizedBody567_4, 567, 5))

def optimizedBody567_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (60, 0)]

def optimizedBody567_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (8, 8), (0, 2), (4, 4), (44, 44), (60, 60)]

def optimizedBody567_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (60, 60)]

def optimizedBody567_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_12 optimizedBody567_3

def optimizedBody567_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_11, 567, 6)) (some 475) ([]) (some (2, optimizedBody567_13, 567, 7))

def optimizedBody567_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 6), (54, 8), (60, 60), (62, 0), (64, 4)]

def optimizedBody567_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (0, 2), (4, 4), (44, 44), (52, 52), (54, 54), (60, 60), (62, 62), (64, 64)]

def optimizedBody567_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (54, 54), (60, 60), (62, 62), (64, 64)]

def optimizedBody567_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_17 optimizedBody567_3

def optimizedBody567_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_16, 567, 8)) (some 475) ([]) (some (2, optimizedBody567_18, 567, 9))

def optimizedBody567_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (48, 8), (50, 6), (52, 52), (54, 54), (56, 0), (60, 60), (62, 62), (64, 64), (72, 4)]

def optimizedBody567_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (6, 6), (8, 8), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (60, 60), (62, 62),
    (64, 64), (72, 72)]

def optimizedBody567_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (60, 60), (62, 62), (64, 64), (72, 72)]

def optimizedBody567_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_22 optimizedBody567_3

def optimizedBody567_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_21, 567, 10)) (some 475) ([]) (some (2, optimizedBody567_23, 567, 11))

def optimizedBody567_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 4),
    (60, 60), (62, 62), (64, 64), (66, 6), (68, 8), (72, 72)]

def optimizedBody567_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72)]

def optimizedBody567_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (72, 72)]

def optimizedBody567_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_27 optimizedBody567_3

def optimizedBody567_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_26, 567, 12)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody567_28, 567, 13))

def optimizedBody567_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 0), (72, 72)]

def optimizedBody567_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (10, 46), (46, 48), (48, 50), (6, 52), (8, 54), (54, 56), (12, 58), (58, 60), (0, 62), (4, 64),
    (14, 66), (16, 68), (64, 70), (66, 72)]

def optimizedBody567_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (10, 46), (46, 48), (48, 50), (6, 52), (8, 54), (54, 56), (12, 58), (58, 60), (0, 62), (4, 64),
    (14, 66), (16, 68), (64, 70), (66, 72)]

def optimizedBody567_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_32 optimizedBody567_3

def optimizedBody567_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_31, 567, 14)) (some 465) ([2]) (some (2, optimizedBody567_33, 567, 15))

def optimizedBody567_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 6),
    (52, 8), (54, 54), (56, 18), (58, 58), (60, 0), (62, 4), (64, 64), (66, 66)]

def optimizedBody567_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (62, 62),
    (64, 64), (66, 66)]

def optimizedBody567_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (0, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody567_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_37 optimizedBody567_3

def optimizedBody567_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_36, 567, 16)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody567_38, 567, 17))

def optimizedBody567_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 0), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 6), (70, 4)]

def optimizedBody567_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (10, 68), (66, 70)]

def optimizedBody567_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62), (62, 64),
    (64, 66), (10, 68), (66, 70)]

def optimizedBody567_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_42 optimizedBody567_3

def optimizedBody567_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_41, 567, 18)) (some 495) ([2]) (some (2, optimizedBody567_43, 567, 19))

def optimizedBody567_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody567_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody567_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody567_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody567_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody567_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody567_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 100#64)))

def optimizedBody567_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 8)]

def optimizedBody567_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody567_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody567_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_54 optimizedBody567_3

def optimizedBody567_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_53, 567, 20)) (some 463) ([2, 4]) (some (2, optimizedBody567_55, 567, 21))

def optimizedBody567_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody567_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (4, 68)]

def optimizedBody567_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (4, 68)]

def optimizedBody567_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_59 optimizedBody567_3

def optimizedBody567_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_58, 567, 22)) (some 470) ([2]) (some (2, optimizedBody567_60, 567, 23))

def optimizedBody567_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 0), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66)]

def optimizedBody567_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (0, 66)]

def optimizedBody567_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (0, 66)]

def optimizedBody567_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_64 optimizedBody567_3

def optimizedBody567_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_63, 567, 24)) (some 496) ([2, 4]) (some (2, optimizedBody567_65, 567, 25))

def optimizedBody567_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64)]

def optimizedBody567_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody567_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (0, 56), (56, 58), (58, 60), (60, 62), (62, 64)]

def optimizedBody567_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_69 optimizedBody567_3

def optimizedBody567_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_68, 567, 26)) (some 482) ([2]) (some (2, optimizedBody567_70, 567, 27))

def optimizedBody567_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody567_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 2), (4, 4), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (12, 56), (0, 58), (10, 60), (58, 62)]

def optimizedBody567_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (6, 50), (8, 52), (50, 54), (12, 56), (0, 58), (10, 60), (58, 62)]

def optimizedBody567_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_74 optimizedBody567_3

def optimizedBody567_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_73, 567, 28)) (some 565) ([2]) (some (2, optimizedBody567_75, 567, 29))

def optimizedBody567_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody567_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody567_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 12), (4, 0), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 14), (54, 4), (56, 10), (58, 58)]

def optimizedBody567_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (6, 48), (0, 50), (46, 52), (48, 54), (52, 56), (4, 58)]

def optimizedBody567_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48), (0, 50), (46, 52), (48, 54), (52, 56), (4, 58)]

def optimizedBody567_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_81 optimizedBody567_3

def optimizedBody567_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_80, 567, 30)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody567_82, 567, 31))

def optimizedBody567_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 10), (52, 52)]

def optimizedBody567_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (10, 46), (4, 48), (0, 50), (8, 52)]

def optimizedBody567_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (4, 48), (0, 50), (8, 52)]

def optimizedBody567_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_86 optimizedBody567_3

def optimizedBody567_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_85, 567, 32)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody567_87, 567, 33))

def optimizedBody567_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody567_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 10 Flapjack.WordStore.heapLength

def optimizedBody567_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody567_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10 10

def optimizedBody567_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 18446744073709551360#64))

def optimizedBody567_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody567_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody567_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody567_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody567_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_97, 567, 34)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody567_4, 567, 35))

def optimizedBody567_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody567_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_99

def optimizedBody567_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_98 optimizedBody567_100

def optimizedBody567_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_96 optimizedBody567_101

def optimizedBody567_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_95 optimizedBody567_102

def optimizedBody567_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_94 optimizedBody567_103

def optimizedBody567_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_93 optimizedBody567_104

def optimizedBody567_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_92 optimizedBody567_105

def optimizedBody567_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_91 optimizedBody567_106

def optimizedBody567_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_90 optimizedBody567_107

def optimizedBody567_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_89 optimizedBody567_108

def optimizedBody567_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_109

def optimizedBody567_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_88 optimizedBody567_110

def optimizedBody567_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_84 optimizedBody567_111

def optimizedBody567_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_112

def optimizedBody567_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_83 optimizedBody567_113

def optimizedBody567_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_79 optimizedBody567_114

def optimizedBody567_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_115

def optimizedBody567_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 2) optimizedBody567_116 optimizedBody567_100

def optimizedBody567_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody567_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody567_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody567_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_120 optimizedBody567_3

def optimizedBody567_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody567_119, 567, 36)) (some 490) ([2]) (some (2, optimizedBody567_121, 567, 37))

def optimizedBody567_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody567_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody567_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_123 optimizedBody567_124

def optimizedBody567_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_78 optimizedBody567_125

def optimizedBody567_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_126

def optimizedBody567_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_122 optimizedBody567_127

def optimizedBody567_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_2 optimizedBody567_128

def optimizedBody567_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_118 optimizedBody567_129

def optimizedBody567_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_130

def optimizedBody567_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_117 optimizedBody567_131

def optimizedBody567_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_78 optimizedBody567_132

def optimizedBody567_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_77 optimizedBody567_133

def optimizedBody567_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_134

def optimizedBody567_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_76 optimizedBody567_135

def optimizedBody567_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_72 optimizedBody567_136

def optimizedBody567_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_137

def optimizedBody567_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_71 optimizedBody567_138

def optimizedBody567_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_67 optimizedBody567_139

def optimizedBody567_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_140

def optimizedBody567_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_66 optimizedBody567_141

def optimizedBody567_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_62 optimizedBody567_142

def optimizedBody567_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_143

def optimizedBody567_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_61 optimizedBody567_144

def optimizedBody567_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_57 optimizedBody567_145

def optimizedBody567_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_146

def optimizedBody567_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_56 optimizedBody567_147

def optimizedBody567_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_52 optimizedBody567_148

def optimizedBody567_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_51 optimizedBody567_149

def optimizedBody567_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_50 optimizedBody567_150

def optimizedBody567_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_49 optimizedBody567_151

def optimizedBody567_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_48 optimizedBody567_152

def optimizedBody567_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_47 optimizedBody567_153

def optimizedBody567_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_46 optimizedBody567_154

def optimizedBody567_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_45 optimizedBody567_155

def optimizedBody567_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_156

def optimizedBody567_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_44 optimizedBody567_157

def optimizedBody567_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_40 optimizedBody567_158

def optimizedBody567_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_159

def optimizedBody567_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_39 optimizedBody567_160

def optimizedBody567_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_35 optimizedBody567_161

def optimizedBody567_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_162

def optimizedBody567_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_34 optimizedBody567_163

def optimizedBody567_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_30 optimizedBody567_164

def optimizedBody567_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_165

def optimizedBody567_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_29 optimizedBody567_166

def optimizedBody567_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_25 optimizedBody567_167

def optimizedBody567_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_168

def optimizedBody567_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_24 optimizedBody567_169

def optimizedBody567_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_20 optimizedBody567_170

def optimizedBody567_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_171

def optimizedBody567_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_19 optimizedBody567_172

def optimizedBody567_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_15 optimizedBody567_173

def optimizedBody567_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_174

def optimizedBody567_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_14 optimizedBody567_175

def optimizedBody567_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_10 optimizedBody567_176

def optimizedBody567_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_177

def optimizedBody567_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_9 optimizedBody567_178

def optimizedBody567_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_7 optimizedBody567_179

def optimizedBody567_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_6 optimizedBody567_180

def optimizedBody567_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_5 optimizedBody567_181

def optimizedBody567_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody567_0 optimizedBody567_182

def optimized567 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(567, 1, optimizedBody567_183)
end InitECandidate.Proofs.StackAnalysis
