import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody684_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 0), (18, 4), (20, 6), (8, 8), (10, 10), (12, 12), (14, 14)]

def optimizedBody684_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody684_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody684_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody684_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody684_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(50, 16), (44, 8), (46, 18), (48, 12), (52, 2), (54, 10), (56, 0), (58, 20), (64, 14)]

def optimizedBody684_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (0, 56), (58, 58), (64, 64)]

def optimizedBody684_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (0, 56), (58, 58), (64, 64)]

def optimizedBody684_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody684_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_7 optimizedBody684_8

def optimizedBody684_10 : WordLangProgHOL (BitVec 64) :=
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
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody684_6, 684, 2)) (some 69) ([]) (some (2, optimizedBody684_9, 684, 3))

def optimizedBody684_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody684_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 0), (58, 58), (62, 4), (64, 64)]

def optimizedBody684_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (0, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody684_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (0, 56), (58, 58), (62, 62), (64, 64)]

def optimizedBody684_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_14 optimizedBody684_8

def optimizedBody684_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody684_13, 684, 4)) (some 68) ([2]) (some (2, optimizedBody684_15, 684, 5))

def optimizedBody684_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 0), (58, 58), (60, 4), (62, 62), (64, 64)]

def optimizedBody684_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (50, 50), (44, 44), (46, 46), (48, 48), (0, 52), (52, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def optimizedBody684_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (44, 44), (46, 46), (48, 48), (0, 52), (52, 54), (56, 56), (58, 58), (4, 60), (62, 62), (64, 64)]

def optimizedBody684_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_19 optimizedBody684_8

def optimizedBody684_21 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_18, 684, 6)) (some 68) ([2]) (some (2, optimizedBody684_20, 684, 7))

def optimizedBody684_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (50, 50), (44, 44), (46, 46), (48, 48), (54, 0), (52, 52), (56, 56), (58, 58), (60, 4), (62, 62),
    (64, 64), (66, 6)]

def optimizedBody684_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 50), (44, 44), (46, 46), (48, 48), (54, 54), (52, 52), (6, 56), (4, 58), (60, 60), (62, 62), (64, 64), (0, 66)]

def optimizedBody684_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (44, 44), (46, 46), (48, 48), (54, 54), (52, 52), (6, 56), (4, 58), (60, 60), (62, 62), (64, 64),
    (0, 66)]

def optimizedBody684_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_24 optimizedBody684_8

def optimizedBody684_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_23, 684, 8)) (some 680) ([2, 4]) (some (2, optimizedBody684_25, 684, 9))

def optimizedBody684_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (50, 50), (44, 44), (46, 46), (48, 48), (54, 54), (52, 52), (56, 6), (58, 4), (60, 60),
    (62, 62), (64, 64), (66, 0)]

def optimizedBody684_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 50), (0, 44), (46, 46), (6, 48), (54, 54), (4, 52), (56, 56), (58, 58), (60, 60), (62, 62), (8, 64), (66, 66)]

def optimizedBody684_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (0, 44), (46, 46), (6, 48), (54, 54), (4, 52), (56, 56), (58, 58), (60, 60), (62, 62), (8, 64),
    (66, 66)]

def optimizedBody684_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_29 optimizedBody684_8

def optimizedBody684_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_28, 684, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody684_30, 684, 11))

def optimizedBody684_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (50, 50), (44, 0), (46, 46), (48, 6), (54, 54), (52, 4), (56, 56), (58, 58),
    (60, 60), (62, 62), (64, 8), (66, 66)]

def optimizedBody684_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (50, 50), (14, 44), (44, 46), (6, 48), (54, 54), (4, 52), (48, 56), (56, 58), (46, 60), (52, 62), (12, 64),
    (58, 66)]

def optimizedBody684_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (14, 44), (44, 46), (6, 48), (54, 54), (4, 52), (48, 56), (56, 58), (46, 60), (52, 62), (12, 64),
    (58, 66)]

def optimizedBody684_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_34 optimizedBody684_8

def optimizedBody684_36 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_33, 684, 12)) (some 138) ([2, 4, 6, 8]) (some (2, optimizedBody684_35, 684, 13))

def optimizedBody684_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody684_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 50), (10, 10), (14, 14), (44, 44), (6, 6), (0, 0), (54, 54), (4, 4), (48, 48), (56, 56), (46, 46), (52, 52),
    (12, 12), (58, 58)]

def optimizedBody684_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody684_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 4), (6, 6), (8, 12), (10, 10), (50, 50), (44, 10), (46, 14), (48, 44), (52, 6), (54, 0), (56, 54),
    (58, 4), (60, 48), (62, 56), (64, 46), (66, 52), (68, 12), (70, 58)]

def optimizedBody684_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (16, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (8, 70)]

def optimizedBody684_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (16, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (8, 70)]

def optimizedBody684_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_42 optimizedBody684_8

def optimizedBody684_44 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_41, 684, 14)) (some 104) ([2, 4, 6, 8, 10]) (some (2, optimizedBody684_43, 684, 15))

def optimizedBody684_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody684_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody684_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 64), (6, 64), (8, 8), (50, 50), (44, 44), (46, 46), (48, 48), (52, 52), (54, 54), (56, 16), (58, 58),
    (60, 60), (62, 62), (64, 64), (66, 66), (68, 68), (70, 8)]

def optimizedBody684_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 50), (4, 44), (46, 46), (48, 48), (52, 52), (0, 54), (16, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (8, 70)]

def optimizedBody684_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (4, 44), (46, 46), (48, 48), (52, 52), (0, 54), (16, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (8, 70)]

def optimizedBody684_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_49 optimizedBody684_8

def optimizedBody684_51 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_48, 684, 16)) (some 683) ([2, 4, 6, 8]) (some (2, optimizedBody684_50, 684, 17))

def optimizedBody684_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 50), (4, 4), (46, 46), (48, 48), (52, 52), (0, 0), (16, 16), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (8, 8)]

def optimizedBody684_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_52

def optimizedBody684_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_51 optimizedBody684_53

def optimizedBody684_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_47 optimizedBody684_54

def optimizedBody684_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_55

def optimizedBody684_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 50), (4, 44), (46, 46), (48, 48), (52, 52), (0, 54), (16, 16), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (68, 68), (8, 8)]

def optimizedBody684_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_57

def optimizedBody684_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody684_56 optimizedBody684_58

def optimizedBody684_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody684_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody684_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 16), (4, 8), (6, 8), (50, 50), (44, 10), (46, 46), (48, 48), (52, 52), (54, 0), (56, 16), (58, 58), (60, 60),
    (62, 62), (64, 64), (66, 66), (68, 68), (70, 8)]

def optimizedBody684_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(50, 50), (10, 44), (14, 46), (24, 48), (6, 52), (0, 54), (16, 56), (4, 58), (22, 60), (20, 62), (18, 64), (52, 66),
    (12, 68), (8, 70)]

def optimizedBody684_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (50, 50), (10, 44), (14, 46), (24, 48), (6, 52), (0, 54), (16, 56), (4, 58), (22, 60), (20, 62), (18, 64),
    (52, 66), (12, 68), (8, 70)]

def optimizedBody684_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_64 optimizedBody684_8

def optimizedBody684_66 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody684_63, 684, 18)) (some 682) ([2, 4, 6]) (some (2, optimizedBody684_65, 684, 19))

def optimizedBody684_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 50), (10, 10), (14, 14), (24, 24), (6, 6), (0, 0), (16, 16), (4, 4), (22, 22), (20, 20), (18, 18), (52, 52),
    (12, 12), (8, 8)]

def optimizedBody684_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_67

def optimizedBody684_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_66 optimizedBody684_68

def optimizedBody684_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_62 optimizedBody684_69

def optimizedBody684_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_70

def optimizedBody684_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 50), (10, 10), (14, 46), (24, 48), (6, 52), (0, 0), (16, 16), (4, 58), (22, 60), (20, 62), (18, 64), (52, 66),
    (12, 68), (8, 8)]

def optimizedBody684_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_72

def optimizedBody684_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody684_71 optimizedBody684_73

def optimizedBody684_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 50), (10, 10), (14, 14), (44, 24), (6, 6), (0, 0), (54, 16), (4, 4), (48, 22), (56, 20), (46, 18), (52, 52),
    (12, 12), (58, 8)]

def optimizedBody684_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody684_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_75 optimizedBody684_76

def optimizedBody684_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_77

def optimizedBody684_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_74 optimizedBody684_78

def optimizedBody684_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_39 optimizedBody684_79

def optimizedBody684_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_61 optimizedBody684_80

def optimizedBody684_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_60 optimizedBody684_81

def optimizedBody684_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_82

def optimizedBody684_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_59 optimizedBody684_83

def optimizedBody684_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_46 optimizedBody684_84

def optimizedBody684_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_45 optimizedBody684_85

def optimizedBody684_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_86

def optimizedBody684_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_44 optimizedBody684_87

def optimizedBody684_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_40 optimizedBody684_88

def optimizedBody684_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_89

def optimizedBody684_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody684_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_91

def optimizedBody684_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 0) optimizedBody684_90 optimizedBody684_92

def optimizedBody684_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(50, 2), (10, 10), (14, 14), (44, 8), (6, 6), (0, 0), (54, 16), (4, 4), (48, 18), (56, 20), (46, 22), (52, 24),
    (12, 12), (58, 26)]

def optimizedBody684_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_94

def optimizedBody684_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_93 optimizedBody684_95

def optimizedBody684_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_39 optimizedBody684_96

def optimizedBody684_98 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody684_97 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody684_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 44), (4, 46), (6, 48), (44, 50), (46, 52)]

def optimizedBody684_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody684_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody684_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_101 optimizedBody684_8

def optimizedBody684_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody684_100, 684, 20)) (some 77) ([2, 4, 6]) (some (2, optimizedBody684_102, 684, 21))

def optimizedBody684_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody684_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody684_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody684_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_106 optimizedBody684_8

def optimizedBody684_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody684_105, 684, 22)) (some 70) ([2]) (some (2, optimizedBody684_107, 684, 23))

def optimizedBody684_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody684_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody684_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody684_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_110 optimizedBody684_111

def optimizedBody684_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_109 optimizedBody684_112

def optimizedBody684_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_113

def optimizedBody684_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_108 optimizedBody684_114

def optimizedBody684_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_104 optimizedBody684_115

def optimizedBody684_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_116

def optimizedBody684_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_103 optimizedBody684_117

def optimizedBody684_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_99 optimizedBody684_118

def optimizedBody684_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_119

def optimizedBody684_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_98 optimizedBody684_120

def optimizedBody684_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_38 optimizedBody684_121

def optimizedBody684_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_122

def optimizedBody684_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_37 optimizedBody684_123

def optimizedBody684_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_124

def optimizedBody684_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_36 optimizedBody684_125

def optimizedBody684_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_32 optimizedBody684_126

def optimizedBody684_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_127

def optimizedBody684_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_31 optimizedBody684_128

def optimizedBody684_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_27 optimizedBody684_129

def optimizedBody684_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_130

def optimizedBody684_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_26 optimizedBody684_131

def optimizedBody684_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_22 optimizedBody684_132

def optimizedBody684_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_133

def optimizedBody684_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_21 optimizedBody684_134

def optimizedBody684_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_17 optimizedBody684_135

def optimizedBody684_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_136

def optimizedBody684_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_16 optimizedBody684_137

def optimizedBody684_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_12 optimizedBody684_138

def optimizedBody684_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_11 optimizedBody684_139

def optimizedBody684_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_10 optimizedBody684_140

def optimizedBody684_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_5 optimizedBody684_141

def optimizedBody684_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_4 optimizedBody684_142

def optimizedBody684_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_3 optimizedBody684_143

def optimizedBody684_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_2 optimizedBody684_144

def optimizedBody684_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_1 optimizedBody684_145

def optimizedBody684_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody684_0 optimizedBody684_146

def optimized684 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(684, 8, optimizedBody684_147)
end InitECandidate.Proofs.StackAnalysis
