import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody690_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody690_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def optimizedBody690_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody690_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 0), (22, 16), (18, 8), (20, 20), (0, 4), (24, 12), (46, 2), (26, 10), (28, 6), (48, 14)]

def optimizedBody690_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20), (22, 22)]

def optimizedBody690_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody690_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 20 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody690_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody690_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody690_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody690_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 20), (0, 0)]

def optimizedBody690_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody690_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody690_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (52, 0)]

def optimizedBody690_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody690_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (50, 50), (52, 52)]

def optimizedBody690_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody690_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 28), (4, 18), (6, 26), (8, 24), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 22), (48, 18), (50, 50),
    (52, 52), (54, 24), (56, 46), (58, 26), (60, 28), (62, 48)]

def optimizedBody690_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 2), (14, 6), (12, 4), (16, 8), (44, 44), (46, 46), (48, 48), (8, 50), (52, 52), (54, 54), (6, 56), (58, 58),
    (60, 60), (4, 62)]

def optimizedBody690_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (8, 50), (52, 52), (54, 54), (6, 56), (58, 58), (60, 60), (4, 62)]

def optimizedBody690_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody690_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_19 optimizedBody690_20

def optimizedBody690_22 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody690_18, 690, 2)) (some 661) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody690_21, 690, 3))

def optimizedBody690_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody690_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody690_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody690_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody690_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody690_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody690_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (62, 4), (50, 8), (6, 6)]

def optimizedBody690_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody690_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody690_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (62, 62), (50, 50), (56, 6)]

def optimizedBody690_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody690_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (62, 62), (50, 50), (56, 56)]

def optimizedBody690_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody690_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48), (50, 50),
    (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 62)]

def optimizedBody690_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 8), (16, 2), (4, 4), (6, 6), (30, 44), (22, 46), (18, 48), (10, 50), (0, 52), (24, 54), (12, 56), (26, 58),
    (28, 60), (14, 62)]

def optimizedBody690_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (30, 44), (22, 46), (18, 48), (10, 50), (0, 52), (24, 54), (12, 56), (26, 58), (28, 60), (14, 62)]

def optimizedBody690_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_38 optimizedBody690_20

def optimizedBody690_40 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody690_37, 690, 4)) (some 659) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody690_39, 690, 5))

def optimizedBody690_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (10, 10)]

def optimizedBody690_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.reg 14)))

def optimizedBody690_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody690_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody690_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody690_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (8, 8), (6, 6), (4, 4)]

def optimizedBody690_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody690_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody690_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody690_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody690_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody690_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody690_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody690_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody690_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody690_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 30), (22, 22), (18, 18), (20, 20), (0, 0), (24, 24), (46, 12), (26, 26), (28, 28), (48, 14)]

def optimizedBody690_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody690_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_56 optimizedBody690_57

def optimizedBody690_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_55 optimizedBody690_58

def optimizedBody690_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_54 optimizedBody690_59

def optimizedBody690_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_53 optimizedBody690_60

def optimizedBody690_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_52 optimizedBody690_61

def optimizedBody690_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_51 optimizedBody690_62

def optimizedBody690_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_50 optimizedBody690_63

def optimizedBody690_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_49 optimizedBody690_64

def optimizedBody690_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_48 optimizedBody690_65

def optimizedBody690_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_47 optimizedBody690_66

def optimizedBody690_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_46 optimizedBody690_67

def optimizedBody690_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_45 optimizedBody690_68

def optimizedBody690_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_44 optimizedBody690_69

def optimizedBody690_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_43 optimizedBody690_70

def optimizedBody690_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_42 optimizedBody690_71

def optimizedBody690_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_41 optimizedBody690_72

def optimizedBody690_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_73

def optimizedBody690_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_40 optimizedBody690_74

def optimizedBody690_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_36 optimizedBody690_75

def optimizedBody690_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_35 optimizedBody690_76

def optimizedBody690_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_34 optimizedBody690_77

def optimizedBody690_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_33 optimizedBody690_78

def optimizedBody690_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_32 optimizedBody690_79

def optimizedBody690_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_31 optimizedBody690_80

def optimizedBody690_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_30 optimizedBody690_81

def optimizedBody690_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_29 optimizedBody690_82

def optimizedBody690_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_28 optimizedBody690_83

def optimizedBody690_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_27 optimizedBody690_84

def optimizedBody690_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_26 optimizedBody690_85

def optimizedBody690_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_25 optimizedBody690_86

def optimizedBody690_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_24 optimizedBody690_87

def optimizedBody690_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_23 optimizedBody690_88

def optimizedBody690_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_89

def optimizedBody690_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_22 optimizedBody690_90

def optimizedBody690_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_17 optimizedBody690_91

def optimizedBody690_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_16 optimizedBody690_92

def optimizedBody690_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_15 optimizedBody690_93

def optimizedBody690_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_14 optimizedBody690_94

def optimizedBody690_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_13 optimizedBody690_95

def optimizedBody690_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_12 optimizedBody690_96

def optimizedBody690_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_11 optimizedBody690_97

def optimizedBody690_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_10 optimizedBody690_98

def optimizedBody690_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_9 optimizedBody690_99

def optimizedBody690_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_8 optimizedBody690_100

def optimizedBody690_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_7 optimizedBody690_101

def optimizedBody690_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_6 optimizedBody690_102

def optimizedBody690_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_5 optimizedBody690_103

def optimizedBody690_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_104

def optimizedBody690_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody690_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_106

def optimizedBody690_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 22 (Flapjack.WordRegImm.reg 20) optimizedBody690_105 optimizedBody690_107

def optimizedBody690_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 2), (22, 22), (18, 18), (20, 20), (0, 0), (24, 24), (46, 4), (26, 26), (28, 28), (48, 6)]

def optimizedBody690_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_109

def optimizedBody690_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_108 optimizedBody690_110

def optimizedBody690_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_4 optimizedBody690_111

def optimizedBody690_113 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody690_112 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody690_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody690_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody690_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody690_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_115 optimizedBody690_116

def optimizedBody690_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_114 optimizedBody690_117

def optimizedBody690_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_118

def optimizedBody690_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_113 optimizedBody690_119

def optimizedBody690_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_3 optimizedBody690_120

def optimizedBody690_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_2 optimizedBody690_121

def optimizedBody690_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_1 optimizedBody690_122

def optimizedBody690_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody690_0 optimizedBody690_123

def optimized690 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(690, 9, optimizedBody690_124)
end InitECandidate.Proofs.StackAnalysis
