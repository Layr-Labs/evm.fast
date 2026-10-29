import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody120_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (16, 16), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody120_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody120_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody120_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 18 (Flapjack.WordRegImm.reg 12)))

def optimizedBody120_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody120_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 18 (Flapjack.WordRegImm.reg 8)))

def optimizedBody120_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody120_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 18 (Flapjack.WordRegImm.reg 6)))

def optimizedBody120_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody120_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 18 18 (Flapjack.WordRegImm.reg 4)))

def optimizedBody120_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody120_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody120_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 10), (54, 0)]

def optimizedBody120_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (12, 2), (14, 54)]

def optimizedBody120_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 54)]

def optimizedBody120_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody120_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_14 optimizedBody120_15

def optimizedBody120_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_13, 120, 2)) (some 119) ([2, 4]) (some (2, optimizedBody120_16, 120, 3))

def optimizedBody120_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody120_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody120_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody120_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 4), (6, 6), (8, 8)]

def optimizedBody120_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody120_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_21 optimizedBody120_22

def optimizedBody120_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_20 optimizedBody120_23

def optimizedBody120_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_19 optimizedBody120_24

def optimizedBody120_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_18 optimizedBody120_25

def optimizedBody120_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_26

def optimizedBody120_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_17 optimizedBody120_27

def optimizedBody120_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_12 optimizedBody120_28

def optimizedBody120_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_29

def optimizedBody120_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 16), (48, 8), (52, 4), (50, 12), (0, 2), (10, 10), (68, 6), (60, 14), (44, 0)]

def optimizedBody120_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 20) optimizedBody120_30 optimizedBody120_31

def optimizedBody120_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 10), (44, 44), (46, 46), (48, 48), (52, 52), (50, 50), (54, 0), (58, 10), (68, 68), (60, 60)]

def optimizedBody120_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 2), (44, 44), (46, 46), (48, 48), (52, 52), (0, 50), (6, 54), (58, 58), (68, 68), (60, 60)]

def optimizedBody120_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (52, 52), (0, 50), (6, 54), (58, 58), (68, 68), (60, 60)]

def optimizedBody120_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_35 optimizedBody120_15

def optimizedBody120_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_34, 120, 4)) (some 119) ([2, 4]) (some (2, optimizedBody120_36, 120, 5))

def optimizedBody120_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 0), (44, 44), (46, 46), (48, 48), (50, 4), (52, 52), (54, 0), (56, 6), (58, 58), (70, 8), (68, 68),
    (60, 60)]

def optimizedBody120_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (0, 58), (70, 70), (68, 68),
    (60, 60)]

def optimizedBody120_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (54, 54), (56, 56), (0, 58), (70, 70), (68, 68), (60, 60)]

def optimizedBody120_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_40 optimizedBody120_15

def optimizedBody120_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_39, 120, 6)) (some 119) ([2, 4]) (some (2, optimizedBody120_41, 120, 7))

def optimizedBody120_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 6), (54, 54), (62, 8), (56, 56), (58, 0), (70, 70),
    (68, 68), (60, 60), (80, 4)]

def optimizedBody120_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (62, 62), (6, 56), (58, 58), (70, 70),
    (68, 68), (0, 60), (80, 80)]

def optimizedBody120_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (62, 62), (6, 56), (58, 58), (70, 70), (68, 68),
    (0, 60), (80, 80)]

def optimizedBody120_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_45 optimizedBody120_15

def optimizedBody120_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_44, 120, 8)) (some 119) ([2, 4]) (some (2, optimizedBody120_46, 120, 9))

def optimizedBody120_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (56, 8), (54, 54), (62, 62), (64, 6), (66, 4),
    (58, 58), (70, 70), (68, 68), (78, 0), (80, 80)]

def optimizedBody120_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (56, 56), (0, 54), (62, 62), (64, 64), (66, 66),
    (52, 58), (70, 70), (68, 68), (78, 78), (80, 80)]

def optimizedBody120_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (6, 52), (56, 56), (0, 54), (62, 62), (64, 64), (66, 66), (52, 58),
    (70, 70), (68, 68), (78, 78), (80, 80)]

def optimizedBody120_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_50 optimizedBody120_15

def optimizedBody120_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_49, 120, 10)) (some 119) ([2, 4]) (some (2, optimizedBody120_51, 120, 11))

def optimizedBody120_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 0), (44, 44), (46, 46), (48, 48), (50, 50), (54, 6), (56, 56), (58, 4), (60, 0), (62, 62), (64, 64),
    (66, 66), (52, 52), (70, 70), (68, 68), (76, 8), (78, 78), (80, 80)]

def optimizedBody120_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64),
    (66, 66), (0, 52), (70, 70), (6, 68), (76, 76), (78, 78), (80, 80)]

def optimizedBody120_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (64, 64), (66, 66),
    (0, 52), (70, 70), (6, 68), (76, 76), (78, 78), (80, 80)]

def optimizedBody120_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_55 optimizedBody120_15

def optimizedBody120_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_54, 120, 12)) (some 119) ([2, 4]) (some (2, optimizedBody120_56, 120, 13))

def optimizedBody120_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 6), (4, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 8), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62),
    (64, 64), (66, 66), (68, 0), (70, 70), (72, 6), (74, 4), (76, 76), (78, 78), (80, 80)]

def optimizedBody120_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(12, 4), (14, 2), (18, 44), (4, 46), (34, 48), (42, 50), (8, 52), (26, 54), (38, 56), (10, 58), (28, 60), (40, 62),
    (36, 64), (22, 66), (32, 68), (0, 70), (30, 72), (16, 74), (6, 76), (24, 78), (20, 80)]

def optimizedBody120_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (18, 44), (4, 46), (34, 48), (42, 50), (8, 52), (26, 54), (38, 56), (10, 58), (28, 60), (40, 62), (36, 64),
    (22, 66), (32, 68), (0, 70), (30, 72), (16, 74), (6, 76), (24, 78), (20, 80)]

def optimizedBody120_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_60 optimizedBody120_15

def optimizedBody120_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
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
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody120_59, 120, 14)) (some 119) ([2, 4]) (some (2, optimizedBody120_61, 120, 15))

def optimizedBody120_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 40), (42, 42), (2, 0)]

def optimizedBody120_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody120_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody120_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 42 42 40 0))

def optimizedBody120_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(40, 38), (42, 42), (38, 0)]

def optimizedBody120_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 38), (0, 0), (42, 42)]

def optimizedBody120_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 0 (Flapjack.WordRegImm.reg 38)))

def optimizedBody120_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 20), (40, 40), (20, 42)]

def optimizedBody120_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 42 40 38 0))

def optimizedBody120_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 22), (42, 42), (40, 0)]

def optimizedBody120_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 22 42 38 0))

def optimizedBody120_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(40, 40), (0, 0), (22, 22)]

def optimizedBody120_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 38 0 (Flapjack.WordRegImm.reg 40)))

def optimizedBody120_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (22, 22), (38, 38)]

def optimizedBody120_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 22 22 6 0))

def optimizedBody120_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 38), (0, 0), (22, 22)]

def optimizedBody120_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 38 0 (Flapjack.WordRegImm.reg 38)))

def optimizedBody120_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (22, 22), (38, 38)]

def optimizedBody120_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 22 8 0))

def optimizedBody120_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(38, 38), (0, 0), (6, 6)]

def optimizedBody120_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 38)))

def optimizedBody120_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (6, 6), (8, 8)]

def optimizedBody120_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 22 6 14 0))

def optimizedBody120_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (22, 22)]

def optimizedBody120_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody120_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 36), (4, 4), (8, 8), (22, 22)]

def optimizedBody120_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody120_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 26), (4, 24), (14, 0)]

def optimizedBody120_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 30), (4, 28), (24, 0)]

def optimizedBody120_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 34), (4, 32), (26, 0)]

def optimizedBody120_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(26, 26), (0, 0)]

def optimizedBody120_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 26)))

def optimizedBody120_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody120_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 24)))

def optimizedBody120_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody120_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody120_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody120_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody120_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 16)))

def optimizedBody120_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody120_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody120_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 20), (6, 22), (8, 8)]

def optimizedBody120_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2, 4, 6, 8]

def optimizedBody120_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_104 optimizedBody120_105

def optimizedBody120_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_87 optimizedBody120_106

def optimizedBody120_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_4 optimizedBody120_107

def optimizedBody120_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_103 optimizedBody120_108

def optimizedBody120_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_102 optimizedBody120_109

def optimizedBody120_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_101 optimizedBody120_110

def optimizedBody120_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_100 optimizedBody120_111

def optimizedBody120_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_99 optimizedBody120_112

def optimizedBody120_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_2 optimizedBody120_113

def optimizedBody120_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_98 optimizedBody120_114

def optimizedBody120_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_97 optimizedBody120_115

def optimizedBody120_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_96 optimizedBody120_116

def optimizedBody120_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_95 optimizedBody120_117

def optimizedBody120_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_94 optimizedBody120_118

def optimizedBody120_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_93 optimizedBody120_119

def optimizedBody120_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_89 optimizedBody120_120

def optimizedBody120_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_92 optimizedBody120_121

def optimizedBody120_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_89 optimizedBody120_122

def optimizedBody120_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_91 optimizedBody120_123

def optimizedBody120_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_89 optimizedBody120_124

def optimizedBody120_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_90 optimizedBody120_125

def optimizedBody120_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_89 optimizedBody120_126

def optimizedBody120_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_88 optimizedBody120_127

def optimizedBody120_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_87 optimizedBody120_128

def optimizedBody120_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_86 optimizedBody120_129

def optimizedBody120_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_85 optimizedBody120_130

def optimizedBody120_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_131

def optimizedBody120_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_132

def optimizedBody120_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_84 optimizedBody120_133

def optimizedBody120_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_83 optimizedBody120_134

def optimizedBody120_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_82 optimizedBody120_135

def optimizedBody120_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_81 optimizedBody120_136

def optimizedBody120_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_137

def optimizedBody120_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_138

def optimizedBody120_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_80 optimizedBody120_139

def optimizedBody120_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_79 optimizedBody120_140

def optimizedBody120_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_78 optimizedBody120_141

def optimizedBody120_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_77 optimizedBody120_142

def optimizedBody120_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_143

def optimizedBody120_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_144

def optimizedBody120_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_76 optimizedBody120_145

def optimizedBody120_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_75 optimizedBody120_146

def optimizedBody120_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_74 optimizedBody120_147

def optimizedBody120_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_73 optimizedBody120_148

def optimizedBody120_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_149

def optimizedBody120_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_150

def optimizedBody120_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_72 optimizedBody120_151

def optimizedBody120_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_71 optimizedBody120_152

def optimizedBody120_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_153

def optimizedBody120_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_154

def optimizedBody120_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_70 optimizedBody120_155

def optimizedBody120_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_69 optimizedBody120_156

def optimizedBody120_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_68 optimizedBody120_157

def optimizedBody120_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_66 optimizedBody120_158

def optimizedBody120_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_159

def optimizedBody120_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_160

def optimizedBody120_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_67 optimizedBody120_161

def optimizedBody120_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_66 optimizedBody120_162

def optimizedBody120_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_65 optimizedBody120_163

def optimizedBody120_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_64 optimizedBody120_164

def optimizedBody120_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_63 optimizedBody120_165

def optimizedBody120_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_166

def optimizedBody120_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_62 optimizedBody120_167

def optimizedBody120_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_58 optimizedBody120_168

def optimizedBody120_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_169

def optimizedBody120_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_57 optimizedBody120_170

def optimizedBody120_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_53 optimizedBody120_171

def optimizedBody120_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_172

def optimizedBody120_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_52 optimizedBody120_173

def optimizedBody120_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_48 optimizedBody120_174

def optimizedBody120_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_175

def optimizedBody120_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_47 optimizedBody120_176

def optimizedBody120_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_43 optimizedBody120_177

def optimizedBody120_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_178

def optimizedBody120_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_42 optimizedBody120_179

def optimizedBody120_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_38 optimizedBody120_180

def optimizedBody120_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_181

def optimizedBody120_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_37 optimizedBody120_182

def optimizedBody120_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_33 optimizedBody120_183

def optimizedBody120_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_184

def optimizedBody120_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_11 optimizedBody120_185

def optimizedBody120_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_32 optimizedBody120_186

def optimizedBody120_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_10 optimizedBody120_187

def optimizedBody120_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_9 optimizedBody120_188

def optimizedBody120_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_8 optimizedBody120_189

def optimizedBody120_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_7 optimizedBody120_190

def optimizedBody120_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_6 optimizedBody120_191

def optimizedBody120_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_5 optimizedBody120_192

def optimizedBody120_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_4 optimizedBody120_193

def optimizedBody120_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_3 optimizedBody120_194

def optimizedBody120_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_2 optimizedBody120_195

def optimizedBody120_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_1 optimizedBody120_196

def optimizedBody120_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody120_0 optimizedBody120_197

def optimized120 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(120, 9, optimizedBody120_198)
end InitECandidate.Proofs.StackAnalysis
