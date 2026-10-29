import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody161_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 4), (0, 0), (4, 2)]

def optimizedBody161_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody161_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody161_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody161_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0), (48, 16), (54, 4)]

def optimizedBody161_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (16, 48), (4, 54)]

def optimizedBody161_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46), (16, 48), (4, 54)]

def optimizedBody161_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody161_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_6 optimizedBody161_7

def optimizedBody161_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_5, 161, 2)) (some 159) ([2]) (some (2, optimizedBody161_8, 161, 3))

def optimizedBody161_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (16, 16), (4, 4)]

def optimizedBody161_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_10

def optimizedBody161_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_9 optimizedBody161_11

def optimizedBody161_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_4 optimizedBody161_12

def optimizedBody161_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_3 optimizedBody161_13

def optimizedBody161_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_14

def optimizedBody161_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 2) optimizedBody161_15 optimizedBody161_11

def optimizedBody161_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody161_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody161_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody161_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody161_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody161_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody161_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody161_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody161_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_23 optimizedBody161_24

def optimizedBody161_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_22 optimizedBody161_25

def optimizedBody161_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_21 optimizedBody161_26

def optimizedBody161_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_27

def optimizedBody161_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_1 optimizedBody161_28

def optimizedBody161_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_29

def optimizedBody161_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(52, 4)]

def optimizedBody161_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 2) optimizedBody161_30 optimizedBody161_31

def optimizedBody161_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 183#64)

def optimizedBody161_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 14 (Flapjack.WordRegImm.imm 18446744073709551488#64)))

def optimizedBody161_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody161_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody161_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody161_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody161_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 0), (48, 6), (52, 52)]

def optimizedBody161_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (6, 48), (4, 52)]

def optimizedBody161_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (6, 48), (4, 52)]

def optimizedBody161_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_41 optimizedBody161_7

def optimizedBody161_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_40, 161, 4)) (some 159) ([2]) (some (2, optimizedBody161_42, 161, 5))

def optimizedBody161_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (6, 6), (4, 4)]

def optimizedBody161_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_44

def optimizedBody161_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_43 optimizedBody161_45

def optimizedBody161_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_39 optimizedBody161_46

def optimizedBody161_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_47

def optimizedBody161_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_48

def optimizedBody161_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 0), (6, 6), (4, 52)]

def optimizedBody161_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_50

def optimizedBody161_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 6) optimizedBody161_49 optimizedBody161_51

def optimizedBody161_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody161_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody161_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody161_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody161_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 6), (52, 4)]

def optimizedBody161_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (6, 48), (4, 52)]

def optimizedBody161_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46), (6, 48), (4, 52)]

def optimizedBody161_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_60 optimizedBody161_7

def optimizedBody161_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_59, 161, 6)) (some 159) ([2]) (some (2, optimizedBody161_61, 161, 7))

def optimizedBody161_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody161_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_63

def optimizedBody161_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_62 optimizedBody161_64

def optimizedBody161_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_58 optimizedBody161_65

def optimizedBody161_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_57 optimizedBody161_66

def optimizedBody161_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_67

def optimizedBody161_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 46), (6, 6), (4, 4)]

def optimizedBody161_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_69

def optimizedBody161_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody161_68 optimizedBody161_70

def optimizedBody161_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_71 optimizedBody161_64

def optimizedBody161_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_20 optimizedBody161_72

def optimizedBody161_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_73

def optimizedBody161_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_55 optimizedBody161_74

def optimizedBody161_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_54 optimizedBody161_75

def optimizedBody161_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_76

def optimizedBody161_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_77

def optimizedBody161_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 0) optimizedBody161_78 optimizedBody161_70

def optimizedBody161_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_81 optimizedBody161_25

def optimizedBody161_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_82

def optimizedBody161_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_80 optimizedBody161_83

def optimizedBody161_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_84

def optimizedBody161_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_1 optimizedBody161_85

def optimizedBody161_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_86

def optimizedBody161_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_79 optimizedBody161_87

def optimizedBody161_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_53 optimizedBody161_88

def optimizedBody161_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_89

def optimizedBody161_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_90

def optimizedBody161_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_52 optimizedBody161_91

def optimizedBody161_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_92

def optimizedBody161_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_36 optimizedBody161_93

def optimizedBody161_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_35 optimizedBody161_94

def optimizedBody161_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_34 optimizedBody161_95

def optimizedBody161_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_19 optimizedBody161_96

def optimizedBody161_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_97

def optimizedBody161_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(44, 0), (12, 14), (10, 16), (50, 52)]

def optimizedBody161_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.WordRegImm.reg 14) optimizedBody161_98 optimizedBody161_99

def optimizedBody161_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 191#64)

def optimizedBody161_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody161_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551433#64)))

def optimizedBody161_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody161_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody161_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44), (44, 4), (52, 10), (48, 50)]

def optimizedBody161_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (52, 52), (0, 48)]

def optimizedBody161_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (52, 52), (0, 48)]

def optimizedBody161_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_108 optimizedBody161_7

def optimizedBody161_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_107, 161, 8)) (some 159) ([2]) (some (2, optimizedBody161_109, 161, 9))

def optimizedBody161_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (52, 52), (0, 0)]

def optimizedBody161_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_111

def optimizedBody161_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_110 optimizedBody161_112

def optimizedBody161_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_106 optimizedBody161_113

def optimizedBody161_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_114

def optimizedBody161_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_115

def optimizedBody161_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 44), (4, 4), (52, 10), (0, 50)]

def optimizedBody161_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_117

def optimizedBody161_119 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody161_116 optimizedBody161_118

def optimizedBody161_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (48, 4), (52, 52), (54, 0)]

def optimizedBody161_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (46, 46), (48, 48), (52, 52), (54, 54)]

def optimizedBody161_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52), (54, 54)]

def optimizedBody161_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_123 optimizedBody161_7

def optimizedBody161_125 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_122, 161, 10)) (some 160) ([2, 4]) (some (2, optimizedBody161_124, 161, 11))

def optimizedBody161_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 55#64)

def optimizedBody161_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody161_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 48), (52, 52), (54, 6), (56, 54)]

def optimizedBody161_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (8, 48), (0, 52), (6, 54), (54, 56)]

def optimizedBody161_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (8, 48), (0, 52), (6, 54), (54, 56)]

def optimizedBody161_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_130 optimizedBody161_7

def optimizedBody161_132 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_129, 161, 12)) (some 159) ([2]) (some (2, optimizedBody161_131, 161, 13))

def optimizedBody161_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (8, 8), (0, 0), (6, 6), (54, 54)]

def optimizedBody161_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_133

def optimizedBody161_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_132 optimizedBody161_134

def optimizedBody161_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_128 optimizedBody161_135

def optimizedBody161_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_127 optimizedBody161_136

def optimizedBody161_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_137

def optimizedBody161_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (8, 48), (0, 52), (6, 6), (54, 54)]

def optimizedBody161_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_139

def optimizedBody161_141 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody161_138 optimizedBody161_140

def optimizedBody161_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody161_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody161_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody161_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (48, 8), (52, 6), (54, 54)]

def optimizedBody161_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46), (8, 48), (6, 52), (4, 54)]

def optimizedBody161_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46), (8, 48), (6, 52), (4, 54)]

def optimizedBody161_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_147 optimizedBody161_7

def optimizedBody161_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_146, 161, 14)) (some 159) ([2]) (some (2, optimizedBody161_148, 161, 15))

def optimizedBody161_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 8), (6, 6), (4, 4)]

def optimizedBody161_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_150

def optimizedBody161_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_149 optimizedBody161_151

def optimizedBody161_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_145 optimizedBody161_152

def optimizedBody161_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_153

def optimizedBody161_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_154

def optimizedBody161_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 46), (8, 8), (6, 6), (4, 54)]

def optimizedBody161_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_156

def optimizedBody161_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 6) optimizedBody161_155 optimizedBody161_157

def optimizedBody161_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (8, 8)]

def optimizedBody161_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody161_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody161_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody161_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_163 optimizedBody161_25

def optimizedBody161_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_162 optimizedBody161_164

def optimizedBody161_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_161 optimizedBody161_165

def optimizedBody161_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_80 optimizedBody161_166

def optimizedBody161_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_160 optimizedBody161_167

def optimizedBody161_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_159 optimizedBody161_168

def optimizedBody161_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_1 optimizedBody161_169

def optimizedBody161_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_170

def optimizedBody161_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_158 optimizedBody161_171

def optimizedBody161_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_172

def optimizedBody161_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_144 optimizedBody161_173

def optimizedBody161_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_143 optimizedBody161_174

def optimizedBody161_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_142 optimizedBody161_175

def optimizedBody161_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_176

def optimizedBody161_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_177

def optimizedBody161_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_141 optimizedBody161_178

def optimizedBody161_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_179

def optimizedBody161_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_126 optimizedBody161_180

def optimizedBody161_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_181

def optimizedBody161_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_125 optimizedBody161_182

def optimizedBody161_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_121 optimizedBody161_183

def optimizedBody161_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_120 optimizedBody161_184

def optimizedBody161_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_185

def optimizedBody161_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_186

def optimizedBody161_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_119 optimizedBody161_187

def optimizedBody161_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_188

def optimizedBody161_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_105 optimizedBody161_189

def optimizedBody161_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_104 optimizedBody161_190

def optimizedBody161_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_103 optimizedBody161_191

def optimizedBody161_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_102 optimizedBody161_192

def optimizedBody161_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_193

def optimizedBody161_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (44, 44), (10, 10), (50, 50)]

def optimizedBody161_196 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody161_194 optimizedBody161_195

def optimizedBody161_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 247#64)

def optimizedBody161_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551424#64)))

def optimizedBody161_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44), (44, 4), (48, 50)]

def optimizedBody161_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (4, 44), (0, 48)]

def optimizedBody161_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (4, 44), (0, 48)]

def optimizedBody161_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_201 optimizedBody161_7

def optimizedBody161_203 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_200, 161, 16)) (some 159) ([2]) (some (2, optimizedBody161_202, 161, 17))

def optimizedBody161_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 46), (4, 4), (0, 0)]

def optimizedBody161_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_204

def optimizedBody161_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_203 optimizedBody161_205

def optimizedBody161_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_199 optimizedBody161_206

def optimizedBody161_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_207

def optimizedBody161_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_208

def optimizedBody161_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(46, 44), (4, 4), (0, 50)]

def optimizedBody161_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_210

def optimizedBody161_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody161_209 optimizedBody161_211

def optimizedBody161_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46), (48, 4), (52, 0)]

def optimizedBody161_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 46), (6, 48), (0, 52)]

def optimizedBody161_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 46), (6, 48), (0, 52)]

def optimizedBody161_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_215 optimizedBody161_7

def optimizedBody161_217 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_214, 161, 18)) (some 167) ([2, 4]) (some (2, optimizedBody161_216, 161, 19))

def optimizedBody161_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2, 4, 6, 8]

def optimizedBody161_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_23 optimizedBody161_219

def optimizedBody161_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_81 optimizedBody161_220

def optimizedBody161_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_221

def optimizedBody161_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_218 optimizedBody161_222

def optimizedBody161_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_223

def optimizedBody161_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_3 optimizedBody161_224

def optimizedBody161_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_225

def optimizedBody161_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_217 optimizedBody161_226

def optimizedBody161_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_213 optimizedBody161_227

def optimizedBody161_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_120 optimizedBody161_228

def optimizedBody161_230 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_229

def optimizedBody161_231 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_230

def optimizedBody161_232 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_212 optimizedBody161_231

def optimizedBody161_233 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_232

def optimizedBody161_234 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_105 optimizedBody161_233

def optimizedBody161_235 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_104 optimizedBody161_234

def optimizedBody161_236 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_198 optimizedBody161_235

def optimizedBody161_237 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_102 optimizedBody161_236

def optimizedBody161_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_237

def optimizedBody161_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(12, 12), (10, 10), (44, 44), (50, 50)]

def optimizedBody161_240 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 12) optimizedBody161_238 optimizedBody161_239

def optimizedBody161_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 12 (Flapjack.WordRegImm.imm 18446744073709551369#64)))

def optimizedBody161_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 10), (50, 50)]

def optimizedBody161_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody161_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody161_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_244 optimizedBody161_7

def optimizedBody161_246 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_243, 161, 20)) (some 159) ([2]) (some (2, optimizedBody161_245, 161, 21))

def optimizedBody161_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 48), (0, 0)]

def optimizedBody161_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_247

def optimizedBody161_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_246 optimizedBody161_248

def optimizedBody161_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_242 optimizedBody161_249

def optimizedBody161_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_250

def optimizedBody161_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_251

def optimizedBody161_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (4, 4), (48, 10), (0, 50)]

def optimizedBody161_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_253

def optimizedBody161_255 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody161_252 optimizedBody161_254

def optimizedBody161_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody161_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody161_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody161_259 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_258 optimizedBody161_7

def optimizedBody161_260 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_257, 161, 22)) (some 160) ([2, 4]) (some (2, optimizedBody161_259, 161, 23))

def optimizedBody161_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 4), (52, 50)]

def optimizedBody161_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48), (4, 50), (50, 52)]

def optimizedBody161_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48), (4, 50), (50, 52)]

def optimizedBody161_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_263 optimizedBody161_7

def optimizedBody161_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_262, 161, 24)) (some 159) ([2]) (some (2, optimizedBody161_264, 161, 25))

def optimizedBody161_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (6, 6), (4, 4), (50, 50)]

def optimizedBody161_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_266

def optimizedBody161_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_265 optimizedBody161_267

def optimizedBody161_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_261 optimizedBody161_268

def optimizedBody161_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_127 optimizedBody161_269

def optimizedBody161_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_270

def optimizedBody161_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 46), (6, 48), (4, 4), (50, 50)]

def optimizedBody161_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_272

def optimizedBody161_274 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody161_271 optimizedBody161_273

def optimizedBody161_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody161_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody161_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4), (50, 50)]

def optimizedBody161_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (6, 50)]

def optimizedBody161_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (6, 50)]

def optimizedBody161_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_279 optimizedBody161_7

def optimizedBody161_281 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_278, 161, 26)) (some 159) ([2]) (some (2, optimizedBody161_280, 161, 27))

def optimizedBody161_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4), (6, 6)]

def optimizedBody161_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_282

def optimizedBody161_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_281 optimizedBody161_283

def optimizedBody161_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_277 optimizedBody161_284

def optimizedBody161_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_38 optimizedBody161_285

def optimizedBody161_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_286

def optimizedBody161_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (4, 4), (6, 50)]

def optimizedBody161_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_288

def optimizedBody161_290 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody161_287 optimizedBody161_289

def optimizedBody161_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody161_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody161_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 4), (50, 6)]

def optimizedBody161_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody161_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody161_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_296 optimizedBody161_7

def optimizedBody161_298 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody161_295, 161, 28)) (some 167) ([2, 4]) (some (2, optimizedBody161_297, 161, 29))

def optimizedBody161_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody161_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody161_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (6, 6)]

def optimizedBody161_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.reg 0)))

def optimizedBody161_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody161_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody161_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_23 optimizedBody161_304

def optimizedBody161_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_303 optimizedBody161_305

def optimizedBody161_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_302 optimizedBody161_306

def optimizedBody161_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_301 optimizedBody161_307

def optimizedBody161_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_80 optimizedBody161_308

def optimizedBody161_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_300 optimizedBody161_309

def optimizedBody161_311 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_299 optimizedBody161_310

def optimizedBody161_312 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_3 optimizedBody161_311

def optimizedBody161_313 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_312

def optimizedBody161_314 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_298 optimizedBody161_313

def optimizedBody161_315 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_294 optimizedBody161_314

def optimizedBody161_316 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_293 optimizedBody161_315

def optimizedBody161_317 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_292 optimizedBody161_316

def optimizedBody161_318 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_291 optimizedBody161_317

def optimizedBody161_319 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_318

def optimizedBody161_320 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_290 optimizedBody161_319

def optimizedBody161_321 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_320

def optimizedBody161_322 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_276 optimizedBody161_321

def optimizedBody161_323 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_322

def optimizedBody161_324 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_275 optimizedBody161_323

def optimizedBody161_325 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_37 optimizedBody161_324

def optimizedBody161_326 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_325

def optimizedBody161_327 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_274 optimizedBody161_326

def optimizedBody161_328 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_327

def optimizedBody161_329 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_126 optimizedBody161_328

def optimizedBody161_330 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_329

def optimizedBody161_331 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_260 optimizedBody161_330

def optimizedBody161_332 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_256 optimizedBody161_331

def optimizedBody161_333 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_120 optimizedBody161_332

def optimizedBody161_334 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_56 optimizedBody161_333

def optimizedBody161_335 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_334

def optimizedBody161_336 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_255 optimizedBody161_335

def optimizedBody161_337 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_336

def optimizedBody161_338 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_105 optimizedBody161_337

def optimizedBody161_339 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_104 optimizedBody161_338

def optimizedBody161_340 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_241 optimizedBody161_339

def optimizedBody161_341 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_102 optimizedBody161_340

def optimizedBody161_342 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_341

def optimizedBody161_343 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_342

def optimizedBody161_344 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_240 optimizedBody161_343

def optimizedBody161_345 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_102 optimizedBody161_344

def optimizedBody161_346 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_197 optimizedBody161_345

def optimizedBody161_347 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_346

def optimizedBody161_348 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_347

def optimizedBody161_349 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_196 optimizedBody161_348

def optimizedBody161_350 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_102 optimizedBody161_349

def optimizedBody161_351 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_101 optimizedBody161_350

def optimizedBody161_352 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_351

def optimizedBody161_353 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_352

def optimizedBody161_354 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_100 optimizedBody161_353

def optimizedBody161_355 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_19 optimizedBody161_354

def optimizedBody161_356 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_33 optimizedBody161_355

def optimizedBody161_357 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_356

def optimizedBody161_358 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_357

def optimizedBody161_359 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_32 optimizedBody161_358

def optimizedBody161_360 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_20 optimizedBody161_359

def optimizedBody161_361 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_19 optimizedBody161_360

def optimizedBody161_362 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_18 optimizedBody161_361

def optimizedBody161_363 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_17 optimizedBody161_362

def optimizedBody161_364 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_2 optimizedBody161_363

def optimizedBody161_365 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_16 optimizedBody161_364

def optimizedBody161_366 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_1 optimizedBody161_365

def optimizedBody161_367 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody161_0 optimizedBody161_366

def optimized161 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(161, 3, optimizedBody161_367)
end InitECandidate.Proofs.StackAnalysis
