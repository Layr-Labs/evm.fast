import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody560_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (58, 4), (68, 2), (74, 6)]

def optimizedBody560_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 8), (6, 6), (0, 2), (44, 44), (58, 58), (68, 68), (74, 74)]

def optimizedBody560_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (58, 58), (68, 68), (74, 74)]

def optimizedBody560_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody560_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_2 optimizedBody560_3

def optimizedBody560_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_1, 560, 2)) (some 475) ([]) (some (2, optimizedBody560_4, 560, 3))

def optimizedBody560_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody560_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (52, 4), (58, 58), (62, 8), (66, 6), (68, 68), (74, 74), (76, 0)]

def optimizedBody560_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (6, 6), (4, 4), (0, 2), (44, 44), (52, 52), (58, 58), (62, 62), (66, 66), (68, 68), (74, 74), (76, 76)]

def optimizedBody560_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (52, 52), (58, 58), (62, 62), (66, 66), (68, 68), (74, 74), (76, 76)]

def optimizedBody560_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_9 optimizedBody560_3

def optimizedBody560_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_8, 560, 4)) (some 475) ([]) (some (2, optimizedBody560_10, 560, 5))

def optimizedBody560_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (48, 8), (52, 52), (54, 6), (58, 58), (60, 4), (62, 62), (66, 66), (68, 68), (72, 0), (74, 74), (76, 76)]

def optimizedBody560_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (8, 8), (4, 4), (0, 2), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (60, 60), (62, 62), (66, 66),
    (68, 68), (72, 72), (74, 74), (76, 76)]

def optimizedBody560_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (48, 48), (52, 52), (54, 54), (58, 58), (60, 60), (62, 62), (66, 66), (68, 68), (72, 72), (74, 74),
    (76, 76)]

def optimizedBody560_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_14 optimizedBody560_3

def optimizedBody560_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_13, 560, 6)) (some 475) ([]) (some (2, optimizedBody560_15, 560, 7))

def optimizedBody560_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 6), (48, 48), (52, 52), (54, 54), (56, 8), (58, 58), (60, 60),
    (62, 62), (64, 4), (66, 66), (68, 68), (70, 0), (72, 72), (74, 74), (76, 76)]

def optimizedBody560_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody560_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody560_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_19 optimizedBody560_3

def optimizedBody560_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_18, 560, 8)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody560_20, 560, 9))

def optimizedBody560_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody560_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(18, 2), (44, 44), (14, 46), (46, 48), (48, 50), (4, 52), (52, 54), (16, 56), (54, 58), (56, 60), (8, 62), (12, 64),
    (6, 66), (62, 68), (10, 70), (66, 72), (68, 74), (0, 76)]

def optimizedBody560_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (14, 46), (46, 48), (48, 50), (4, 52), (52, 54), (16, 56), (54, 58), (56, 60), (8, 62), (12, 64),
    (6, 66), (62, 68), (10, 70), (66, 72), (68, 74), (0, 76)]

def optimizedBody560_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_24 optimizedBody560_3

def optimizedBody560_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_23, 560, 10)) (some 465) ([2]) (some (2, optimizedBody560_25, 560, 11))

def optimizedBody560_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 4),
    (52, 52), (54, 54), (56, 56), (58, 8), (60, 6), (62, 62), (64, 18), (66, 66), (68, 68), (70, 0)]

def optimizedBody560_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (12, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (8, 62),
    (0, 64), (62, 66), (64, 68), (66, 70)]

def optimizedBody560_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (8, 62), (0, 64),
    (62, 66), (64, 68), (66, 70)]

def optimizedBody560_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_29 optimizedBody560_3

def optimizedBody560_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody560_28, 560, 12)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody560_30, 560, 13))

def optimizedBody560_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody560_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody560_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody560_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody560_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody560_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody560_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 10), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 12)]

def optimizedBody560_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody560_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody560_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_40 optimizedBody560_3

def optimizedBody560_42 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody560_39, 560, 14)) (some 463) ([2, 4]) (some (2, optimizedBody560_41, 560, 15))

def optimizedBody560_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68)]

def optimizedBody560_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68)]

def optimizedBody560_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 68)]

def optimizedBody560_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_45 optimizedBody560_3

def optimizedBody560_47 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody560_44, 560, 16)) (some 470) ([2]) (some (2, optimizedBody560_46, 560, 17))

def optimizedBody560_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66)]

def optimizedBody560_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (0, 48), (4, 50), (50, 52), (52, 54), (54, 56), (8, 58), (6, 60), (56, 62), (58, 64), (10, 66)]

def optimizedBody560_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (0, 48), (4, 50), (50, 52), (52, 54), (54, 56), (8, 58), (6, 60), (56, 62), (58, 64),
    (10, 66)]

def optimizedBody560_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_50 optimizedBody560_3

def optimizedBody560_52 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody560_49, 560, 18)) (some 482) ([2]) (some (2, optimizedBody560_51, 560, 19))

def optimizedBody560_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody560_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58)]

def optimizedBody560_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (46, 48), (6, 50), (48, 52), (4, 54), (0, 56), (52, 58)]

def optimizedBody560_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (46, 48), (6, 50), (48, 52), (4, 54), (0, 56), (52, 58)]

def optimizedBody560_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_56 optimizedBody560_3

def optimizedBody560_58 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody560_55, 560, 20)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody560_57, 560, 21))

def optimizedBody560_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 10), (52, 52)]

def optimizedBody560_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (10, 48), (0, 50), (4, 52)]

def optimizedBody560_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (10, 48), (0, 50), (4, 52)]

def optimizedBody560_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_61 optimizedBody560_3

def optimizedBody560_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_60, 560, 22)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody560_62, 560, 23))

def optimizedBody560_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody560_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 10 Flapjack.WordStore.heapLength

def optimizedBody560_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody560_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10 10

def optimizedBody560_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 18446744073709551360#64))

def optimizedBody560_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 24#64))

def optimizedBody560_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody560_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44)]

def optimizedBody560_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody560_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody560_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_73 optimizedBody560_3

def optimizedBody560_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_72, 560, 24)) (some 484) ([2, 4, 6, 8, 10]) (some (2, optimizedBody560_74, 560, 25))

def optimizedBody560_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44)]

def optimizedBody560_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_76

def optimizedBody560_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_75 optimizedBody560_77

def optimizedBody560_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_71 optimizedBody560_78

def optimizedBody560_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_70 optimizedBody560_79

def optimizedBody560_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_69 optimizedBody560_80

def optimizedBody560_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_68 optimizedBody560_81

def optimizedBody560_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_67 optimizedBody560_82

def optimizedBody560_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_66 optimizedBody560_83

def optimizedBody560_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_65 optimizedBody560_84

def optimizedBody560_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_64 optimizedBody560_85

def optimizedBody560_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_86

def optimizedBody560_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_63 optimizedBody560_87

def optimizedBody560_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_59 optimizedBody560_88

def optimizedBody560_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_89

def optimizedBody560_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_58 optimizedBody560_90

def optimizedBody560_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_54 optimizedBody560_91

def optimizedBody560_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_92

def optimizedBody560_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody560_93 optimizedBody560_77

def optimizedBody560_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody560_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody560_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody560_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_97 optimizedBody560_3

def optimizedBody560_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody560_96, 560, 26)) (some 490) ([2]) (some (2, optimizedBody560_98, 560, 27))

def optimizedBody560_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody560_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody560_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_100 optimizedBody560_101

def optimizedBody560_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_53 optimizedBody560_102

def optimizedBody560_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_103

def optimizedBody560_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_99 optimizedBody560_104

def optimizedBody560_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_73 optimizedBody560_105

def optimizedBody560_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_95 optimizedBody560_106

def optimizedBody560_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_107

def optimizedBody560_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_94 optimizedBody560_108

def optimizedBody560_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_53 optimizedBody560_109

def optimizedBody560_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_32 optimizedBody560_110

def optimizedBody560_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_111

def optimizedBody560_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_52 optimizedBody560_112

def optimizedBody560_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_48 optimizedBody560_113

def optimizedBody560_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_114

def optimizedBody560_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_47 optimizedBody560_115

def optimizedBody560_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_43 optimizedBody560_116

def optimizedBody560_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_117

def optimizedBody560_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_42 optimizedBody560_118

def optimizedBody560_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_38 optimizedBody560_119

def optimizedBody560_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_37 optimizedBody560_120

def optimizedBody560_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_36 optimizedBody560_121

def optimizedBody560_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_35 optimizedBody560_122

def optimizedBody560_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_34 optimizedBody560_123

def optimizedBody560_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_33 optimizedBody560_124

def optimizedBody560_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_32 optimizedBody560_125

def optimizedBody560_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_126

def optimizedBody560_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_31 optimizedBody560_127

def optimizedBody560_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_27 optimizedBody560_128

def optimizedBody560_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_129

def optimizedBody560_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_26 optimizedBody560_130

def optimizedBody560_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_22 optimizedBody560_131

def optimizedBody560_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_132

def optimizedBody560_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_21 optimizedBody560_133

def optimizedBody560_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_17 optimizedBody560_134

def optimizedBody560_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_135

def optimizedBody560_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_16 optimizedBody560_136

def optimizedBody560_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_12 optimizedBody560_137

def optimizedBody560_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_138

def optimizedBody560_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_11 optimizedBody560_139

def optimizedBody560_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_7 optimizedBody560_140

def optimizedBody560_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_6 optimizedBody560_141

def optimizedBody560_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_5 optimizedBody560_142

def optimizedBody560_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody560_0 optimizedBody560_143

def optimized560 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(560, 4, optimizedBody560_144)
end InitECandidate.Proofs.StackAnalysis
