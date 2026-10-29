import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody792_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 0), (46, 16), (48, 8), (50, 24), (52, 4), (54, 20), (56, 12), (58, 28), (60, 2), (62, 18), (66, 10), (68, 26),
    (70, 6), (72, 22), (74, 14)]

def optimizedBody792_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody792_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (66, 66),
    (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody792_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody792_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_2 optimizedBody792_3

def optimizedBody792_5 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody792_1, 792, 2)) (some 69) ([]) (some (2, optimizedBody792_4, 792, 3))

def optimizedBody792_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody792_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody792_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 0),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody792_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody792_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74)]

def optimizedBody792_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_10 optimizedBody792_3

def optimizedBody792_12 : WordLangProgHOL (BitVec 64) :=
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody792_9, 792, 4)) (some 68) ([2]) (some (2, optimizedBody792_11, 792, 5))

def optimizedBody792_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody792_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 576#64)

def optimizedBody792_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 2)]

def optimizedBody792_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (4, 76)]

def optimizedBody792_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (0, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (4, 76)]

def optimizedBody792_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_17 optimizedBody792_3

def optimizedBody792_19 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody792_16, 792, 6)) (some 78) ([2, 4]) (some (2, optimizedBody792_18, 792, 7))

def optimizedBody792_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody792_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody792_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 68), (70, 70), (72, 72), (74, 74), (76, 2)]

def optimizedBody792_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (16, 46), (8, 48), (46, 50), (0, 52), (50, 54), (12, 56), (52, 58), (54, 60), (56, 62), (58, 64), (10, 66),
    (60, 68), (6, 70), (62, 72), (14, 74), (18, 76)]

def optimizedBody792_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (8, 48), (46, 50), (0, 52), (50, 54), (12, 56), (52, 58), (54, 60), (56, 62), (58, 64),
    (10, 66), (60, 68), (6, 70), (62, 72), (14, 74), (18, 76)]

def optimizedBody792_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_24 optimizedBody792_3

def optimizedBody792_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody792_23, 792, 8)) (some 729) ([2, 4]) (some (2, optimizedBody792_25, 792, 9))

def optimizedBody792_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody792_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody792_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody792_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody792_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 0), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 18)]

def optimizedBody792_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (12, 46), (4, 48), (8, 50), (16, 52), (46, 54), (6, 56), (48, 58), (14, 60), (10, 62), (0, 64)]

def optimizedBody792_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (12, 46), (4, 48), (8, 50), (16, 52), (46, 54), (6, 56), (48, 58), (14, 60), (10, 62), (0, 64)]

def optimizedBody792_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_33 optimizedBody792_3

def optimizedBody792_35 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody792_32, 792, 10)) (some 742) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody792_34, 792, 11))

def optimizedBody792_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 384#64)))

def optimizedBody792_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody792_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody792_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (6, 50)]

def optimizedBody792_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_39 optimizedBody792_3

def optimizedBody792_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody792_38, 792, 12)) (some 742) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody792_40, 792, 13))

def optimizedBody792_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody792_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody792_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody792_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_44 optimizedBody792_3

def optimizedBody792_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody792_43, 792, 14)) (some 758) ([2, 4, 6]) (some (2, optimizedBody792_45, 792, 15))

def optimizedBody792_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody792_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody792_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody792_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_49 optimizedBody792_3

def optimizedBody792_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody792_48, 792, 16)) (some 70) ([2]) (some (2, optimizedBody792_50, 792, 17))

def optimizedBody792_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody792_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody792_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody792_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_53 optimizedBody792_54

def optimizedBody792_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_52 optimizedBody792_55

def optimizedBody792_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_56

def optimizedBody792_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_51 optimizedBody792_57

def optimizedBody792_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_47 optimizedBody792_58

def optimizedBody792_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_59

def optimizedBody792_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_46 optimizedBody792_60

def optimizedBody792_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_42 optimizedBody792_61

def optimizedBody792_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_62

def optimizedBody792_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_41 optimizedBody792_63

def optimizedBody792_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_37 optimizedBody792_64

def optimizedBody792_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_36 optimizedBody792_65

def optimizedBody792_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_29 optimizedBody792_66

def optimizedBody792_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_67

def optimizedBody792_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_35 optimizedBody792_68

def optimizedBody792_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_31 optimizedBody792_69

def optimizedBody792_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_30 optimizedBody792_70

def optimizedBody792_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_29 optimizedBody792_71

def optimizedBody792_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_28 optimizedBody792_72

def optimizedBody792_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_27 optimizedBody792_73

def optimizedBody792_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_74

def optimizedBody792_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_26 optimizedBody792_75

def optimizedBody792_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_22 optimizedBody792_76

def optimizedBody792_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_21 optimizedBody792_77

def optimizedBody792_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_20 optimizedBody792_78

def optimizedBody792_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_79

def optimizedBody792_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_19 optimizedBody792_80

def optimizedBody792_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_15 optimizedBody792_81

def optimizedBody792_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_14 optimizedBody792_82

def optimizedBody792_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_13 optimizedBody792_83

def optimizedBody792_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_84

def optimizedBody792_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_12 optimizedBody792_85

def optimizedBody792_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_8 optimizedBody792_86

def optimizedBody792_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_7 optimizedBody792_87

def optimizedBody792_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_6 optimizedBody792_88

def optimizedBody792_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_5 optimizedBody792_89

def optimizedBody792_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody792_0 optimizedBody792_90

def optimized792 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(792, 15, optimizedBody792_91)
end InitECandidate.Proofs.StackAnalysis
