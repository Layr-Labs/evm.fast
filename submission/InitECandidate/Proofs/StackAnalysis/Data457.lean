import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody457_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (12, 2), (6, 6), (8, 8), (10, 10)]

def optimizedBody457_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody457_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody457_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody457_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody457_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody457_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_4 optimizedBody457_5

def optimizedBody457_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_3 optimizedBody457_6

def optimizedBody457_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_7

def optimizedBody457_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody457_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 2) optimizedBody457_8 optimizedBody457_9

def optimizedBody457_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 8), (46, 4), (52, 12), (54, 10), (50, 6)]

def optimizedBody457_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (48, 48), (0, 46), (52, 52), (54, 54), (4, 50)]

def optimizedBody457_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (52, 52), (54, 54), (4, 50)]

def optimizedBody457_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody457_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_13 optimizedBody457_14

def optimizedBody457_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody457_12, 457, 2)) (some 69) ([]) (some (2, optimizedBody457_15, 457, 3))

def optimizedBody457_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (56, 4), (50, 0)]

def optimizedBody457_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody457_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56)]

def optimizedBody457_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (4, 48), (0, 50), (12, 52), (50, 54), (8, 56)]

def optimizedBody457_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (12, 52), (50, 54), (8, 56)]

def optimizedBody457_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_21 optimizedBody457_14

def optimizedBody457_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody457_20, 457, 4)) (some 68) ([2]) (some (2, optimizedBody457_22, 457, 5))

def optimizedBody457_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 6), (12, 12)]

def optimizedBody457_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody457_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (12, 12), (4, 4), (0, 0), (2, 2), (48, 12), (50, 50), (54, 52), (52, 52), (8, 8)]

def optimizedBody457_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody457_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody457_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 12), (4, 4), (0, 0), (2, 2), (48, 48), (50, 50), (54, 54), (52, 52), (8, 8), (10, 10)]

def optimizedBody457_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (10, 10)]

def optimizedBody457_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (2, 2)]

def optimizedBody457_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody457_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (0, 0)]

def optimizedBody457_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (12, 0)]

def optimizedBody457_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_34

def optimizedBody457_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (12, 12)]

def optimizedBody457_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_36

def optimizedBody457_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody457_35 optimizedBody457_37

def optimizedBody457_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (2, 2)]

def optimizedBody457_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody457_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody457_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 0), (56, 0)]

def optimizedBody457_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_42

def optimizedBody457_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (56, 0)]

def optimizedBody457_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_44

def optimizedBody457_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody457_43 optimizedBody457_45

def optimizedBody457_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 10), (12, 12)]

def optimizedBody457_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 14), (48, 6), (50, 4), (52, 56), (0, 0), (54, 2), (56, 48), (58, 50), (60, 54), (62, 52),
    (8, 8), (12, 12), (66, 0), (64, 0), (68, 12)]

def optimizedBody457_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody457_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody457_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_49 optimizedBody457_50

def optimizedBody457_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_51

def optimizedBody457_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody457_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_53 optimizedBody457_50

def optimizedBody457_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_54

def optimizedBody457_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.WordRegImm.reg 12) optimizedBody457_52 optimizedBody457_55

def optimizedBody457_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 48), (16, 68)]

def optimizedBody457_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody457_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_25 optimizedBody457_58

def optimizedBody457_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_59

def optimizedBody457_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_3 optimizedBody457_58

def optimizedBody457_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_61

def optimizedBody457_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 16 (Flapjack.WordRegImm.reg 10) optimizedBody457_60 optimizedBody457_62

def optimizedBody457_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody457_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody457_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 8), (8, 8), (48, 0)]

def optimizedBody457_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0)]

def optimizedBody457_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody457_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 16), (4, 8), (72, 8), (80, 16)]

def optimizedBody457_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody457_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 50), (44, 44), (46, 46), (48, 14), (50, 10), (52, 50), (54, 52), (56, 48), (58, 2), (60, 54),
    (62, 56), (64, 4), (66, 58), (68, 60), (70, 62), (72, 72), (74, 12), (76, 66), (78, 64), (80, 80)]

def optimizedBody457_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (12, 58), (58, 60), (60, 62), (14, 64),
    (62, 66), (10, 68), (66, 70), (4, 72), (70, 74), (72, 76), (0, 78), (76, 80)]

def optimizedBody457_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (12, 58), (58, 60), (60, 62), (14, 64),
    (62, 66), (10, 68), (66, 70), (4, 72), (70, 74), (72, 76), (0, 78), (76, 80)]

def optimizedBody457_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_73 optimizedBody457_14

def optimizedBody457_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody457_72, 457, 6)) (some 456) ([2, 4, 6]) (some (2, optimizedBody457_74, 457, 7))

def optimizedBody457_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody457_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (8, 4), (74, 0)]

def optimizedBody457_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody457_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody457_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (6, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 10), (66, 66), (68, 8), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody457_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 48), (48, 50), (50, 52), (52, 54), (0, 56), (54, 58), (56, 60), (58, 62), (4, 64), (62, 66),
    (8, 68), (12, 70), (66, 72), (6, 74), (68, 76)]

def optimizedBody457_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (14, 48), (48, 50), (50, 52), (52, 54), (0, 56), (54, 58), (56, 60), (58, 62), (4, 64),
    (62, 66), (8, 68), (12, 70), (66, 72), (6, 74), (68, 76)]

def optimizedBody457_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_82 optimizedBody457_14

def optimizedBody457_84 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody457_81, 457, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody457_83, 457, 9))

def optimizedBody457_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody457_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody457_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (48, 48), (50, 50), (52, 52), (0, 0), (54, 54), (56, 56), (58, 58), (4, 4), (62, 62),
    (8, 8), (12, 12), (66, 66), (6, 6), (68, 68)]

def optimizedBody457_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_86 optimizedBody457_87

def optimizedBody457_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_85 optimizedBody457_88

def optimizedBody457_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_89

def optimizedBody457_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_84 optimizedBody457_90

def optimizedBody457_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_80 optimizedBody457_91

def optimizedBody457_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_79 optimizedBody457_92

def optimizedBody457_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_78 optimizedBody457_93

def optimizedBody457_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_94

def optimizedBody457_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_77 optimizedBody457_95

def optimizedBody457_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_96

def optimizedBody457_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 14), (6, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 10), (66, 66), (68, 8), (70, 70), (72, 72), (74, 74), (76, 76)]

def optimizedBody457_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 48), (48, 50), (50, 52), (52, 54), (0, 56), (54, 58), (56, 60), (58, 62), (4, 64), (62, 66),
    (8, 68), (12, 70), (66, 72), (6, 74), (10, 76)]

def optimizedBody457_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (14, 48), (48, 50), (50, 52), (52, 54), (0, 56), (54, 58), (56, 60), (58, 62), (4, 64),
    (62, 66), (8, 68), (12, 70), (66, 72), (6, 74), (10, 76)]

def optimizedBody457_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_100 optimizedBody457_14

def optimizedBody457_102 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody457_99, 457, 10)) (some 77) ([2, 4, 6]) (some (2, optimizedBody457_101, 457, 11))

def optimizedBody457_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody457_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody457_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (48, 48), (50, 50), (52, 52), (0, 0), (54, 54), (56, 56), (58, 58), (4, 4), (62, 62),
    (8, 8), (12, 12), (66, 66), (6, 6), (68, 2)]

def optimizedBody457_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_104 optimizedBody457_105

def optimizedBody457_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_103 optimizedBody457_106

def optimizedBody457_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_107

def optimizedBody457_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_102 optimizedBody457_108

def optimizedBody457_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_98 optimizedBody457_109

def optimizedBody457_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_79 optimizedBody457_110

def optimizedBody457_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_78 optimizedBody457_111

def optimizedBody457_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_112

def optimizedBody457_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_77 optimizedBody457_113

def optimizedBody457_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_114

def optimizedBody457_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody457_97 optimizedBody457_115

def optimizedBody457_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody457_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (48, 48), (50, 50), (52, 52), (0, 0), (54, 54), (56, 56), (58, 58), (60, 4), (62, 62),
    (8, 8), (12, 12), (66, 66), (64, 2), (68, 68)]

def optimizedBody457_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody457_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_118 optimizedBody457_119

def optimizedBody457_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_117 optimizedBody457_120

def optimizedBody457_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_76 optimizedBody457_121

def optimizedBody457_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_122

def optimizedBody457_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_116 optimizedBody457_123

def optimizedBody457_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_3 optimizedBody457_124

def optimizedBody457_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_76 optimizedBody457_125

def optimizedBody457_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_126

def optimizedBody457_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_75 optimizedBody457_127

def optimizedBody457_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_71 optimizedBody457_128

def optimizedBody457_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_70 optimizedBody457_129

def optimizedBody457_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_67 optimizedBody457_130

def optimizedBody457_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_131

def optimizedBody457_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_69 optimizedBody457_132

def optimizedBody457_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_68 optimizedBody457_133

def optimizedBody457_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_67 optimizedBody457_134

def optimizedBody457_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_135

def optimizedBody457_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_66 optimizedBody457_136

def optimizedBody457_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(48, 10), (0, 0), (12, 12), (68, 16)]

def optimizedBody457_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody457_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_138 optimizedBody457_139

def optimizedBody457_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody457_137 optimizedBody457_140

def optimizedBody457_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (14, 14), (48, 6), (50, 10), (52, 16), (0, 0), (54, 18), (56, 20), (58, 22), (60, 24), (62, 26),
    (8, 8), (12, 12), (66, 28), (64, 30), (68, 32)]

def optimizedBody457_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_142

def optimizedBody457_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_141 optimizedBody457_143

def optimizedBody457_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_65 optimizedBody457_144

def optimizedBody457_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_64 optimizedBody457_145

def optimizedBody457_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_146

def optimizedBody457_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_63 optimizedBody457_147

def optimizedBody457_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_57 optimizedBody457_148

def optimizedBody457_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_149

def optimizedBody457_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_56 optimizedBody457_150

def optimizedBody457_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_33 optimizedBody457_151

def optimizedBody457_153 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody457_152 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody457_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 14), (48, 48), (50, 50), (52, 52), (62, 0), (54, 54), (56, 56), (58, 58), (12, 60),
    (60, 62), (8, 8), (64, 12), (66, 66), (0, 64), (68, 68)]

def optimizedBody457_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 64), (2, 62)]

def optimizedBody457_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 8), (8, 8), (74, 0)]

def optimizedBody457_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 8), (8, 8), (62, 2), (2, 0)]

def optimizedBody457_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (2, 2), (0, 0)]

def optimizedBody457_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody457_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (0, 0)]

def optimizedBody457_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 8), (44, 44), (46, 46), (48, 14), (50, 48), (52, 50), (54, 52), (56, 62), (58, 54), (60, 56),
    (62, 58), (64, 12), (66, 60), (68, 8), (70, 10), (72, 66), (74, 74), (76, 68)]

def optimizedBody457_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 48), (6, 50), (50, 52), (52, 54), (4, 56), (54, 58), (56, 60), (58, 62), (12, 64), (60, 66),
    (8, 68), (64, 70), (66, 72), (0, 74), (10, 76)]

def optimizedBody457_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (14, 48), (6, 50), (50, 52), (52, 54), (4, 56), (54, 58), (56, 60), (58, 62), (12, 64),
    (60, 66), (8, 68), (64, 70), (66, 72), (0, 74), (10, 76)]

def optimizedBody457_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_163 optimizedBody457_14

def optimizedBody457_165 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody457_162, 457, 12)) (some 77) ([2, 4, 6]) (some (2, optimizedBody457_164, 457, 13))

def optimizedBody457_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody457_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody457_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (62, 2)]

def optimizedBody457_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (48, 6), (50, 50), (52, 52), (62, 62), (54, 54), (56, 56), (58, 58), (12, 12),
    (60, 60), (8, 8), (64, 64), (66, 66), (0, 0), (68, 10)]

def optimizedBody457_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_169 optimizedBody457_119

def optimizedBody457_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_86 optimizedBody457_170

def optimizedBody457_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_168 optimizedBody457_171

def optimizedBody457_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_167 optimizedBody457_172

def optimizedBody457_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_166 optimizedBody457_173

def optimizedBody457_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_174

def optimizedBody457_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_165 optimizedBody457_175

def optimizedBody457_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_161 optimizedBody457_176

def optimizedBody457_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_70 optimizedBody457_177

def optimizedBody457_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_160 optimizedBody457_178

def optimizedBody457_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_159 optimizedBody457_179

def optimizedBody457_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_158 optimizedBody457_180

def optimizedBody457_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_181

def optimizedBody457_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_157 optimizedBody457_182

def optimizedBody457_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_183

def optimizedBody457_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_156 optimizedBody457_184

def optimizedBody457_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_185

def optimizedBody457_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(62, 2), (64, 10)]

def optimizedBody457_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_187 optimizedBody457_139

def optimizedBody457_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_188

def optimizedBody457_190 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 10) optimizedBody457_186 optimizedBody457_189

def optimizedBody457_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (46, 4), (14, 14), (48, 6), (50, 10), (52, 16), (62, 18), (54, 20), (56, 22), (58, 24), (12, 12), (60, 26),
    (8, 8), (64, 28), (66, 30), (0, 0), (68, 32)]

def optimizedBody457_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_191

def optimizedBody457_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_190 optimizedBody457_192

def optimizedBody457_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_155 optimizedBody457_193

def optimizedBody457_195 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody457_194 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody457_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 14), (10, 48), (48, 50), (50, 52), (62, 62), (52, 54), (54, 56), (56, 58), (12, 12),
    (58, 60), (8, 8), (60, 64), (64, 66), (0, 0), (2, 68)]

def optimizedBody457_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 8), (8, 8), (76, 2), (2, 0)]

def optimizedBody457_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 8), (44, 44), (46, 46), (48, 14), (50, 10), (52, 48), (54, 50), (62, 62), (56, 52), (58, 54),
    (60, 56), (64, 12), (66, 58), (68, 8), (70, 60), (72, 64), (74, 74), (76, 76)]

def optimizedBody457_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 44), (46, 46), (14, 48), (10, 50), (6, 52), (16, 54), (18, 62), (20, 56), (22, 58), (24, 60), (12, 64),
    (26, 66), (8, 68), (28, 70), (30, 72), (0, 74), (4, 76)]

def optimizedBody457_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (14, 48), (10, 50), (6, 52), (16, 54), (18, 62), (20, 56), (22, 58), (24, 60), (12, 64),
    (26, 66), (8, 68), (28, 70), (30, 72), (0, 74), (4, 76)]

def optimizedBody457_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_200 optimizedBody457_14

def optimizedBody457_202 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody457_199, 457, 14)) (some 77) ([2, 4, 6]) (some (2, optimizedBody457_201, 457, 15))

def optimizedBody457_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (10, 10), (48, 6), (50, 16), (62, 18), (52, 20), (54, 22), (56, 24), (12, 12),
    (58, 26), (8, 8), (60, 28), (64, 30), (0, 0), (2, 2)]

def optimizedBody457_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_203 optimizedBody457_119

def optimizedBody457_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_86 optimizedBody457_204

def optimizedBody457_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_27 optimizedBody457_205

def optimizedBody457_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_167 optimizedBody457_206

def optimizedBody457_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_166 optimizedBody457_207

def optimizedBody457_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_208

def optimizedBody457_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_202 optimizedBody457_209

def optimizedBody457_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_198 optimizedBody457_210

def optimizedBody457_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_70 optimizedBody457_211

def optimizedBody457_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_160 optimizedBody457_212

def optimizedBody457_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_159 optimizedBody457_213

def optimizedBody457_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_158 optimizedBody457_214

def optimizedBody457_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_215

def optimizedBody457_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_197 optimizedBody457_216

def optimizedBody457_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_217

def optimizedBody457_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_156 optimizedBody457_218

def optimizedBody457_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_219

def optimizedBody457_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody457_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_221 optimizedBody457_139

def optimizedBody457_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_222

def optimizedBody457_224 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 10) optimizedBody457_220 optimizedBody457_223

def optimizedBody457_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 4), (46, 6), (14, 14), (10, 10), (48, 16), (50, 18), (62, 20), (52, 22), (54, 24), (56, 26), (12, 12), (58, 28),
    (8, 8), (60, 30), (64, 32), (0, 0), (2, 2)]

def optimizedBody457_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_225

def optimizedBody457_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_224 optimizedBody457_226

def optimizedBody457_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_31 optimizedBody457_227

def optimizedBody457_229 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody457_228 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody457_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (14, 14), (4, 48), (0, 50), (2, 52), (48, 54), (50, 56), (54, 12), (52, 58), (8, 8), (10, 10)]

def optimizedBody457_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_230 optimizedBody457_119

def optimizedBody457_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_231

def optimizedBody457_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_229 optimizedBody457_232

def optimizedBody457_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_196 optimizedBody457_233

def optimizedBody457_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_234

def optimizedBody457_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_235

def optimizedBody457_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_195 optimizedBody457_236

def optimizedBody457_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_154 optimizedBody457_237

def optimizedBody457_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_238

def optimizedBody457_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_239

def optimizedBody457_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_153 optimizedBody457_240

def optimizedBody457_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_48 optimizedBody457_241

def optimizedBody457_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_242

def optimizedBody457_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_47 optimizedBody457_243

def optimizedBody457_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_244

def optimizedBody457_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_46 optimizedBody457_245

def optimizedBody457_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_41 optimizedBody457_246

def optimizedBody457_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_40 optimizedBody457_247

def optimizedBody457_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_39 optimizedBody457_248

def optimizedBody457_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_249

def optimizedBody457_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_38 optimizedBody457_250

def optimizedBody457_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_33 optimizedBody457_251

def optimizedBody457_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_32 optimizedBody457_252

def optimizedBody457_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_31 optimizedBody457_253

def optimizedBody457_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_254

def optimizedBody457_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody457_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_256 optimizedBody457_139

def optimizedBody457_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_257

def optimizedBody457_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.WordRegImm.reg 0) optimizedBody457_255 optimizedBody457_258

def optimizedBody457_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (46, 12), (14, 14), (4, 4), (0, 0), (2, 2), (48, 16), (50, 18), (54, 20), (52, 22), (8, 8), (10, 10)]

def optimizedBody457_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_260

def optimizedBody457_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_259 optimizedBody457_261

def optimizedBody457_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_30 optimizedBody457_262

def optimizedBody457_264 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody457_263 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody457_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14), (12, 54)]

def optimizedBody457_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody457_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (12, 12), (4, 4), (0, 0), (2, 2), (48, 48), (50, 50), (54, 14), (52, 52), (8, 8)]

def optimizedBody457_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_267 optimizedBody457_119

def optimizedBody457_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_266 optimizedBody457_268

def optimizedBody457_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_265 optimizedBody457_269

def optimizedBody457_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_270

def optimizedBody457_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_264 optimizedBody457_271

def optimizedBody457_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_29 optimizedBody457_272

def optimizedBody457_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_273

def optimizedBody457_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_28 optimizedBody457_274

def optimizedBody457_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_275

def optimizedBody457_277 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 0) optimizedBody457_276 optimizedBody457_258

def optimizedBody457_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (46, 10), (12, 12), (4, 4), (0, 0), (2, 2), (48, 14), (50, 16), (54, 18), (52, 20), (8, 8)]

def optimizedBody457_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_278

def optimizedBody457_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_277 optimizedBody457_279

def optimizedBody457_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_27 optimizedBody457_280

def optimizedBody457_282 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody457_281 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody457_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 48), (12, 12)]

def optimizedBody457_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 8)]

def optimizedBody457_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 12), (6, 0), (44, 44), (46, 46)]

def optimizedBody457_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody457_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody457_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_287 optimizedBody457_14

def optimizedBody457_289 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody457_286, 457, 16)) (some 77) ([2, 4, 6]) (some (2, optimizedBody457_288, 457, 17))

def optimizedBody457_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0)]

def optimizedBody457_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_290

def optimizedBody457_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_289 optimizedBody457_291

def optimizedBody457_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_285 optimizedBody457_292

def optimizedBody457_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_293

def optimizedBody457_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_284 optimizedBody457_294

def optimizedBody457_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_295

def optimizedBody457_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46)]

def optimizedBody457_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_297

def optimizedBody457_299 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody457_296 optimizedBody457_298

def optimizedBody457_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody457_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody457_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody457_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_302 optimizedBody457_14

def optimizedBody457_304 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody457_301, 457, 18)) (some 70) ([2]) (some (2, optimizedBody457_303, 457, 19))

def optimizedBody457_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_304 optimizedBody457_8

def optimizedBody457_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_300 optimizedBody457_305

def optimizedBody457_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_306

def optimizedBody457_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_299 optimizedBody457_307

def optimizedBody457_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_283 optimizedBody457_308

def optimizedBody457_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_309

def optimizedBody457_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_282 optimizedBody457_310

def optimizedBody457_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_26 optimizedBody457_311

def optimizedBody457_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_312

def optimizedBody457_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_25 optimizedBody457_313

def optimizedBody457_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_24 optimizedBody457_314

def optimizedBody457_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_315

def optimizedBody457_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_23 optimizedBody457_316

def optimizedBody457_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_19 optimizedBody457_317

def optimizedBody457_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_18 optimizedBody457_318

def optimizedBody457_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_17 optimizedBody457_319

def optimizedBody457_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_320

def optimizedBody457_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_16 optimizedBody457_321

def optimizedBody457_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_11 optimizedBody457_322

def optimizedBody457_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_323

def optimizedBody457_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_2 optimizedBody457_324

def optimizedBody457_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_10 optimizedBody457_325

def optimizedBody457_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_1 optimizedBody457_326

def optimizedBody457_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody457_0 optimizedBody457_327

def optimized457 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(457, 6, optimizedBody457_328)
end InitECandidate.Proofs.StackAnalysis
