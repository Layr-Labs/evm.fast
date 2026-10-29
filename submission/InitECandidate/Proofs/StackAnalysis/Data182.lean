import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody182_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody182_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 88#64)

def optimizedBody182_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody182_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody182_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody182_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody182_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_4 optimizedBody182_5

def optimizedBody182_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody182_3, 182, 2)) (some 68) ([2]) (some (2, optimizedBody182_6, 182, 3))

def optimizedBody182_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody182_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody182_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody182_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 0 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody182_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 8)]

def optimizedBody182_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody182_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody182_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody182_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_14 optimizedBody182_15

def optimizedBody182_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_16

def optimizedBody182_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_15

def optimizedBody182_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody182_17 optimizedBody182_18

def optimizedBody182_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody182_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody182_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody182_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody182_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody182_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody182_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody182_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody182_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody182_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody182_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody182_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody182_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody182_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody182_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody182_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody182_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody182_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 10)]

def optimizedBody182_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody182_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody182_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_39 optimizedBody182_5

def optimizedBody182_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody182_38, 182, 4)) (some 68) ([2]) (some (2, optimizedBody182_40, 182, 5))

def optimizedBody182_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody182_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody182_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody182_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody182_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody182_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody182_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4)]

def optimizedBody182_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody182_38, 182, 6)) (some 68) ([2]) (some (2, optimizedBody182_40, 182, 7))

def optimizedBody182_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody182_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody182_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody182_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody182_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_53 optimizedBody182_5

def optimizedBody182_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody182_52, 182, 8)) (some 68) ([2]) (some (2, optimizedBody182_54, 182, 9))

def optimizedBody182_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody182_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody182_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody182_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody182_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody182_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody182_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody182_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody182_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody182_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody182_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_64 optimizedBody182_65

def optimizedBody182_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_28 optimizedBody182_66

def optimizedBody182_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_27 optimizedBody182_67

def optimizedBody182_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_63 optimizedBody182_68

def optimizedBody182_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_69

def optimizedBody182_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_70

def optimizedBody182_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_59 optimizedBody182_71

def optimizedBody182_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_58 optimizedBody182_72

def optimizedBody182_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_62 optimizedBody182_73

def optimizedBody182_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_74

def optimizedBody182_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_75

def optimizedBody182_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_59 optimizedBody182_76

def optimizedBody182_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_61 optimizedBody182_77

def optimizedBody182_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_60 optimizedBody182_78

def optimizedBody182_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_79

def optimizedBody182_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_80

def optimizedBody182_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_59 optimizedBody182_81

def optimizedBody182_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_58 optimizedBody182_82

def optimizedBody182_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_57 optimizedBody182_83

def optimizedBody182_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_84

def optimizedBody182_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_85

def optimizedBody182_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_44 optimizedBody182_86

def optimizedBody182_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_56 optimizedBody182_87

def optimizedBody182_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_88

def optimizedBody182_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_89

def optimizedBody182_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_55 optimizedBody182_90

def optimizedBody182_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_48 optimizedBody182_91

def optimizedBody182_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_51 optimizedBody182_92

def optimizedBody182_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_46 optimizedBody182_93

def optimizedBody182_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_31 optimizedBody182_94

def optimizedBody182_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_95

def optimizedBody182_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_44 optimizedBody182_96

def optimizedBody182_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_50 optimizedBody182_97

def optimizedBody182_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_98

def optimizedBody182_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_99

def optimizedBody182_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_49 optimizedBody182_100

def optimizedBody182_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_48 optimizedBody182_101

def optimizedBody182_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_47 optimizedBody182_102

def optimizedBody182_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_46 optimizedBody182_103

def optimizedBody182_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_31 optimizedBody182_104

def optimizedBody182_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_45 optimizedBody182_105

def optimizedBody182_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_44 optimizedBody182_106

def optimizedBody182_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_43 optimizedBody182_107

def optimizedBody182_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_42 optimizedBody182_108

def optimizedBody182_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_109

def optimizedBody182_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_41 optimizedBody182_110

def optimizedBody182_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_37 optimizedBody182_111

def optimizedBody182_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_36 optimizedBody182_112

def optimizedBody182_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_35 optimizedBody182_113

def optimizedBody182_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_34 optimizedBody182_114

def optimizedBody182_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_33 optimizedBody182_115

def optimizedBody182_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_32 optimizedBody182_116

def optimizedBody182_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_31 optimizedBody182_117

def optimizedBody182_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_30 optimizedBody182_118

def optimizedBody182_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_29 optimizedBody182_119

def optimizedBody182_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_22 optimizedBody182_120

def optimizedBody182_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_28 optimizedBody182_121

def optimizedBody182_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_27 optimizedBody182_122

def optimizedBody182_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_26 optimizedBody182_123

def optimizedBody182_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_22 optimizedBody182_124

def optimizedBody182_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_25 optimizedBody182_125

def optimizedBody182_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_24 optimizedBody182_126

def optimizedBody182_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_23 optimizedBody182_127

def optimizedBody182_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_22 optimizedBody182_128

def optimizedBody182_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_21 optimizedBody182_129

def optimizedBody182_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_20 optimizedBody182_130

def optimizedBody182_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_131

def optimizedBody182_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_19 optimizedBody182_132

def optimizedBody182_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_13 optimizedBody182_133

def optimizedBody182_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_12 optimizedBody182_134

def optimizedBody182_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_11 optimizedBody182_135

def optimizedBody182_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_10 optimizedBody182_136

def optimizedBody182_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_9 optimizedBody182_137

def optimizedBody182_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_8 optimizedBody182_138

def optimizedBody182_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_7 optimizedBody182_139

def optimizedBody182_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_2 optimizedBody182_140

def optimizedBody182_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_1 optimizedBody182_141

def optimizedBody182_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody182_0 optimizedBody182_142

def optimized182 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(182, 3, optimizedBody182_143)
end InitECandidate.Proofs.StackAnalysis
