import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody669_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2)]

def optimizedBody669_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody669_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody669_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody669_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_2 optimizedBody669_3

def optimizedBody669_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_1, 669, 2)) (some 69) ([]) (some (2, optimizedBody669_4, 669, 3))

def optimizedBody669_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody669_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 736#64)

def optimizedBody669_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody669_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (14, 48), (50, 50)]

def optimizedBody669_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (14, 48), (50, 50)]

def optimizedBody669_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_10 optimizedBody669_3

def optimizedBody669_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_9, 669, 4)) (some 68) ([2]) (some (2, optimizedBody669_11, 669, 5))

def optimizedBody669_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody669_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (2, 2), (14, 14), (48, 0), (50, 50)]

def optimizedBody669_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody669_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 23#64)

def optimizedBody669_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody669_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody669_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody669_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody669_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody669_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 11#64)

def optimizedBody669_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.imm 18446744073709551605#64)))

def optimizedBody669_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody669_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_23 optimizedBody669_24

def optimizedBody669_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_15 optimizedBody669_25

def optimizedBody669_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_26

def optimizedBody669_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_24

def optimizedBody669_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 2) optimizedBody669_27 optimizedBody669_28

def optimizedBody669_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(52, 44), (54, 46), (48, 4), (56, 2), (46, 6), (58, 14), (50, 8), (60, 48), (62, 50), (44, 10), (0, 0)]

def optimizedBody669_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 56)]

def optimizedBody669_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 10 12 (Flapjack.WordRegImm.reg 0)))

def optimizedBody669_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody669_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody669_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 58)]

def optimizedBody669_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody669_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody669_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (64, 0), (14, 14)]

def optimizedBody669_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody669_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody669_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (14, 14)]

def optimizedBody669_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody669_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody669_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (64, 64), (56, 12)]

def optimizedBody669_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 10 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody669_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody669_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 0 (Flapjack.WordRegImm.reg 14)))

def optimizedBody669_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody669_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (14, 14)]

def optimizedBody669_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 14 (Flapjack.WordRegImm.reg 0)))

def optimizedBody669_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody669_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (58, 14)]

def optimizedBody669_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody669_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (64, 64), (56, 56), (58, 58)]

def optimizedBody669_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody669_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (54, 54), (48, 48), (56, 56),
    (46, 46), (58, 58), (50, 50), (60, 60), (62, 62), (44, 44), (64, 64)]

def optimizedBody669_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (10, 2), (14, 6), (12, 4), (52, 52), (54, 54), (6, 48), (56, 56), (4, 46), (58, 58), (8, 50), (60, 60),
    (62, 62), (0, 44), (44, 64)]

def optimizedBody669_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (52, 52), (54, 54), (6, 48), (56, 56), (4, 46), (58, 58), (8, 50), (60, 60), (62, 62), (0, 44), (44, 64)]

def optimizedBody669_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_58 optimizedBody669_3

def optimizedBody669_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody669_57, 669, 6)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody669_59, 669, 7))

def optimizedBody669_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (52, 52), (54, 54), (56, 56), (58, 58),
    (60, 60), (62, 62), (44, 44)]

def optimizedBody669_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (10, 2), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 44)]

def optimizedBody669_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62), (0, 44)]

def optimizedBody669_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_63 optimizedBody669_3

def optimizedBody669_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_62, 669, 8)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody669_64, 669, 9))

def optimizedBody669_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody669_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 52), (54, 54), (48, 6), (56, 56), (46, 4), (58, 58), (50, 8), (60, 60), (62, 62), (44, 10), (0, 0)]

def optimizedBody669_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody669_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_67 optimizedBody669_68

def optimizedBody669_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_66 optimizedBody669_69

def optimizedBody669_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_33 optimizedBody669_70

def optimizedBody669_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_71

def optimizedBody669_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_65 optimizedBody669_72

def optimizedBody669_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_61 optimizedBody669_73

def optimizedBody669_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_74

def optimizedBody669_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_60 optimizedBody669_75

def optimizedBody669_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_56 optimizedBody669_76

def optimizedBody669_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_55 optimizedBody669_77

def optimizedBody669_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_54 optimizedBody669_78

def optimizedBody669_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_53 optimizedBody669_79

def optimizedBody669_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_52 optimizedBody669_80

def optimizedBody669_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_51 optimizedBody669_81

def optimizedBody669_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_50 optimizedBody669_82

def optimizedBody669_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_49 optimizedBody669_83

def optimizedBody669_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_48 optimizedBody669_84

def optimizedBody669_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_47 optimizedBody669_85

def optimizedBody669_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_46 optimizedBody669_86

def optimizedBody669_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_45 optimizedBody669_87

def optimizedBody669_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_44 optimizedBody669_88

def optimizedBody669_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_43 optimizedBody669_89

def optimizedBody669_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_41 optimizedBody669_90

def optimizedBody669_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_42 optimizedBody669_91

def optimizedBody669_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_41 optimizedBody669_92

def optimizedBody669_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_40 optimizedBody669_93

def optimizedBody669_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_39 optimizedBody669_94

def optimizedBody669_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_38 optimizedBody669_95

def optimizedBody669_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_37 optimizedBody669_96

def optimizedBody669_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_36 optimizedBody669_97

def optimizedBody669_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_35 optimizedBody669_98

def optimizedBody669_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_34 optimizedBody669_99

def optimizedBody669_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_33 optimizedBody669_100

def optimizedBody669_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_101

def optimizedBody669_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(56, 12)]

def optimizedBody669_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody669_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_103 optimizedBody669_104

def optimizedBody669_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_105

def optimizedBody669_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 10) optimizedBody669_102 optimizedBody669_106

def optimizedBody669_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(52, 2), (54, 4), (48, 6), (56, 8), (46, 10), (58, 12), (50, 14), (60, 16), (62, 18), (44, 20), (0, 0)]

def optimizedBody669_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_108

def optimizedBody669_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_107 optimizedBody669_109

def optimizedBody669_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_32 optimizedBody669_110

def optimizedBody669_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_31 optimizedBody669_111

def optimizedBody669_113 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody669_112 (Flapjack.Spt.bn
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
  Flapjack.Spt.ln)

def optimizedBody669_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (4, 46), (6, 48), (8, 50), (10, 44), (12, 46), (14, 48), (16, 50), (44, 52), (46, 54), (48, 56), (50, 58),
    (58, 60), (60, 62)]

def optimizedBody669_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (46, 46), (12, 48), (14, 50), (58, 58), (60, 60)]

def optimizedBody669_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (14, 50), (58, 58), (60, 60)]

def optimizedBody669_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_116 optimizedBody669_3

def optimizedBody669_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_115, 669, 10)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody669_117, 669, 11))

def optimizedBody669_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody669_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody669_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody669_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody669_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 2 (Flapjack.WordRegImm.reg 14)))

def optimizedBody669_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 12), (14, 14)]

def optimizedBody669_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody669_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody669_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (54, 14)]

def optimizedBody669_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody669_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (54, 54)]

def optimizedBody669_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody669_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 10), (4, 12), (6, 14), (8, 16), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 6), (50, 50),
    (52, 4), (54, 54), (56, 8), (58, 58), (60, 60), (62, 0)]

def optimizedBody669_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 8), (10, 2), (14, 6), (12, 4), (44, 44), (46, 46), (6, 48), (48, 50), (4, 52), (50, 54), (8, 56), (52, 58),
    (54, 60), (0, 62)]

def optimizedBody669_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (6, 48), (48, 50), (4, 52), (50, 54), (8, 56), (52, 58), (54, 60), (0, 62)]

def optimizedBody669_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_133 optimizedBody669_3

def optimizedBody669_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody669_132, 669, 12)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody669_134, 669, 13))

def optimizedBody669_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54)]

def optimizedBody669_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (4, 4), (8, 8), (0, 2), (44, 44), (46, 46), (12, 48), (14, 50), (10, 52), (50, 54)]

def optimizedBody669_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (14, 50), (10, 52), (50, 54)]

def optimizedBody669_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_138 optimizedBody669_3

def optimizedBody669_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody669_137, 669, 14)) (some 658) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody669_139, 669, 15))

def optimizedBody669_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (6, 6), (12, 12), (4, 4), (14, 14), (8, 8), (10, 10), (50, 50), (0, 0)]

def optimizedBody669_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_141

def optimizedBody669_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_140 optimizedBody669_142

def optimizedBody669_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_136 optimizedBody669_143

def optimizedBody669_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_144

def optimizedBody669_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_135 optimizedBody669_145

def optimizedBody669_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_131 optimizedBody669_146

def optimizedBody669_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_130 optimizedBody669_147

def optimizedBody669_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_129 optimizedBody669_148

def optimizedBody669_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_128 optimizedBody669_149

def optimizedBody669_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_127 optimizedBody669_150

def optimizedBody669_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_126 optimizedBody669_151

def optimizedBody669_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_125 optimizedBody669_152

def optimizedBody669_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_124 optimizedBody669_153

def optimizedBody669_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_48 optimizedBody669_154

def optimizedBody669_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_123 optimizedBody669_155

def optimizedBody669_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_46 optimizedBody669_156

def optimizedBody669_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_122 optimizedBody669_157

def optimizedBody669_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_121 optimizedBody669_158

def optimizedBody669_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_119 optimizedBody669_159

def optimizedBody669_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_160

def optimizedBody669_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 44), (46, 46), (6, 6), (12, 12), (4, 4), (14, 14), (8, 8), (10, 58), (50, 60), (0, 0)]

def optimizedBody669_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_162

def optimizedBody669_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 10) optimizedBody669_161 optimizedBody669_163

def optimizedBody669_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody669_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody669_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody669_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (8, 8), (6, 6), (4, 4)]

def optimizedBody669_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody669_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody669_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody669_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody669_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody669_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody669_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody669_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody669_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46), (2, 2), (14, 14), (48, 10), (50, 50)]

def optimizedBody669_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_177 optimizedBody669_68

def optimizedBody669_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_176 optimizedBody669_178

def optimizedBody669_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_119 optimizedBody669_179

def optimizedBody669_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_175 optimizedBody669_180

def optimizedBody669_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_174 optimizedBody669_181

def optimizedBody669_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_173 optimizedBody669_182

def optimizedBody669_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_172 optimizedBody669_183

def optimizedBody669_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_171 optimizedBody669_184

def optimizedBody669_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_170 optimizedBody669_185

def optimizedBody669_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_169 optimizedBody669_186

def optimizedBody669_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_168 optimizedBody669_187

def optimizedBody669_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_167 optimizedBody669_188

def optimizedBody669_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_166 optimizedBody669_189

def optimizedBody669_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_165 optimizedBody669_190

def optimizedBody669_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_119 optimizedBody669_191

def optimizedBody669_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_192

def optimizedBody669_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_164 optimizedBody669_193

def optimizedBody669_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_17 optimizedBody669_194

def optimizedBody669_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_120 optimizedBody669_195

def optimizedBody669_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_119 optimizedBody669_196

def optimizedBody669_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_197

def optimizedBody669_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_118 optimizedBody669_198

def optimizedBody669_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_114 optimizedBody669_199

def optimizedBody669_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_200

def optimizedBody669_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_113 optimizedBody669_201

def optimizedBody669_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_30 optimizedBody669_202

def optimizedBody669_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_203

def optimizedBody669_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_204

def optimizedBody669_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_29 optimizedBody669_205

def optimizedBody669_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_15 optimizedBody669_206

def optimizedBody669_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_22 optimizedBody669_207

def optimizedBody669_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_21 optimizedBody669_208

def optimizedBody669_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_20 optimizedBody669_209

def optimizedBody669_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_19 optimizedBody669_210

def optimizedBody669_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_18 optimizedBody669_211

def optimizedBody669_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_17 optimizedBody669_212

def optimizedBody669_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_213

def optimizedBody669_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_104

def optimizedBody669_216 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody669_214 optimizedBody669_215

def optimizedBody669_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (2, 2), (14, 14), (48, 6), (50, 8)]

def optimizedBody669_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_217

def optimizedBody669_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_216 optimizedBody669_218

def optimizedBody669_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_16 optimizedBody669_219

def optimizedBody669_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_15 optimizedBody669_220

def optimizedBody669_222 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody669_221 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody669_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 48), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody669_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody669_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody669_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_225 optimizedBody669_3

def optimizedBody669_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_224, 669, 16)) (some 667) ([2]) (some (2, optimizedBody669_226, 669, 17))

def optimizedBody669_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody669_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 384#64)

def optimizedBody669_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody669_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody669_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody669_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_232 optimizedBody669_3

def optimizedBody669_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_231, 669, 18)) (some 77) ([2, 4, 6]) (some (2, optimizedBody669_233, 669, 19))

def optimizedBody669_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody669_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody669_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody669_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_237 optimizedBody669_3

def optimizedBody669_239 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody669_236, 669, 20)) (some 70) ([2]) (some (2, optimizedBody669_238, 669, 21))

def optimizedBody669_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody669_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_15 optimizedBody669_240

def optimizedBody669_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_13 optimizedBody669_241

def optimizedBody669_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_242

def optimizedBody669_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_239 optimizedBody669_243

def optimizedBody669_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_235 optimizedBody669_244

def optimizedBody669_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_245

def optimizedBody669_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_234 optimizedBody669_246

def optimizedBody669_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_230 optimizedBody669_247

def optimizedBody669_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_229 optimizedBody669_248

def optimizedBody669_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_228 optimizedBody669_249

def optimizedBody669_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_250

def optimizedBody669_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_227 optimizedBody669_251

def optimizedBody669_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_223 optimizedBody669_252

def optimizedBody669_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_253

def optimizedBody669_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_222 optimizedBody669_254

def optimizedBody669_256 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_14 optimizedBody669_255

def optimizedBody669_257 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_256

def optimizedBody669_258 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_13 optimizedBody669_257

def optimizedBody669_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_258

def optimizedBody669_260 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_12 optimizedBody669_259

def optimizedBody669_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_8 optimizedBody669_260

def optimizedBody669_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_7 optimizedBody669_261

def optimizedBody669_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_6 optimizedBody669_262

def optimizedBody669_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_5 optimizedBody669_263

def optimizedBody669_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody669_0 optimizedBody669_264

def optimized669 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(669, 3, optimizedBody669_265)
end InitECandidate.Proofs.StackAnalysis
