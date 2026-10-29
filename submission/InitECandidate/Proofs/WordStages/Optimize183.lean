import InitECandidate.Proofs.WordStages.Optimize167
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source183
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody183_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 2), (4, 4)]

def optimizedBody183_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 88#64)

def optimizedBody183_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6)]

def optimizedBody183_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody183_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (6, 48)]

def optimizedBody183_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody183_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_4 optimizedBody183_5

def optimizedBody183_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody183_3, 183, 2)) (some 74) ([2]) (some (2, optimizedBody183_6, 183, 3))

def optimizedBody183_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody183_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody183_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 6 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody183_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 0 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def optimizedBody183_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 8)]

def optimizedBody183_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody183_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 2#64)

def optimizedBody183_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody183_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_14 optimizedBody183_15

def optimizedBody183_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_16

def optimizedBody183_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_15

def optimizedBody183_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody183_17 optimizedBody183_18

def optimizedBody183_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody183_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 10 0#64))

def optimizedBody183_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody183_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody183_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody183_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody183_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody183_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody183_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody183_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 10 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody183_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody183_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody183_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody183_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody183_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody183_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody183_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody183_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 8), (48, 10)]

def optimizedBody183_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody183_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody183_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_39 optimizedBody183_5

def optimizedBody183_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody183_38, 183, 4)) (some 74) ([2]) (some (2, optimizedBody183_40, 183, 5))

def optimizedBody183_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody183_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody183_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody183_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody183_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody183_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody183_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4)]

def optimizedBody183_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody183_38, 183, 6)) (some 74) ([2]) (some (2, optimizedBody183_40, 183, 7))

def optimizedBody183_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody183_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody183_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody183_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody183_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_53 optimizedBody183_5

def optimizedBody183_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody183_52, 183, 8)) (some 74) ([2]) (some (2, optimizedBody183_54, 183, 9))

def optimizedBody183_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody183_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 56#64)))

def optimizedBody183_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody183_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody183_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody183_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody183_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody183_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 80#64)))

def optimizedBody183_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody183_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody183_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_64 optimizedBody183_65

def optimizedBody183_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_28 optimizedBody183_66

def optimizedBody183_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_27 optimizedBody183_67

def optimizedBody183_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_63 optimizedBody183_68

def optimizedBody183_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_69

def optimizedBody183_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_70

def optimizedBody183_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_59 optimizedBody183_71

def optimizedBody183_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_58 optimizedBody183_72

def optimizedBody183_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_62 optimizedBody183_73

def optimizedBody183_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_74

def optimizedBody183_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_75

def optimizedBody183_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_59 optimizedBody183_76

def optimizedBody183_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_61 optimizedBody183_77

def optimizedBody183_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_60 optimizedBody183_78

def optimizedBody183_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_79

def optimizedBody183_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_80

def optimizedBody183_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_59 optimizedBody183_81

def optimizedBody183_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_58 optimizedBody183_82

def optimizedBody183_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_57 optimizedBody183_83

def optimizedBody183_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_84

def optimizedBody183_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_85

def optimizedBody183_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_44 optimizedBody183_86

def optimizedBody183_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_56 optimizedBody183_87

def optimizedBody183_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_88

def optimizedBody183_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_89

def optimizedBody183_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_55 optimizedBody183_90

def optimizedBody183_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_48 optimizedBody183_91

def optimizedBody183_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_51 optimizedBody183_92

def optimizedBody183_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_46 optimizedBody183_93

def optimizedBody183_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_31 optimizedBody183_94

def optimizedBody183_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_95

def optimizedBody183_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_44 optimizedBody183_96

def optimizedBody183_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_50 optimizedBody183_97

def optimizedBody183_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_98

def optimizedBody183_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_99

def optimizedBody183_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_49 optimizedBody183_100

def optimizedBody183_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_48 optimizedBody183_101

def optimizedBody183_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_47 optimizedBody183_102

def optimizedBody183_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_46 optimizedBody183_103

def optimizedBody183_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_31 optimizedBody183_104

def optimizedBody183_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_45 optimizedBody183_105

def optimizedBody183_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_44 optimizedBody183_106

def optimizedBody183_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_43 optimizedBody183_107

def optimizedBody183_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_42 optimizedBody183_108

def optimizedBody183_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_109

def optimizedBody183_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_41 optimizedBody183_110

def optimizedBody183_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_37 optimizedBody183_111

def optimizedBody183_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_36 optimizedBody183_112

def optimizedBody183_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_35 optimizedBody183_113

def optimizedBody183_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_34 optimizedBody183_114

def optimizedBody183_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_33 optimizedBody183_115

def optimizedBody183_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_32 optimizedBody183_116

def optimizedBody183_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_31 optimizedBody183_117

def optimizedBody183_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_30 optimizedBody183_118

def optimizedBody183_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_29 optimizedBody183_119

def optimizedBody183_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_22 optimizedBody183_120

def optimizedBody183_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_28 optimizedBody183_121

def optimizedBody183_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_27 optimizedBody183_122

def optimizedBody183_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_26 optimizedBody183_123

def optimizedBody183_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_22 optimizedBody183_124

def optimizedBody183_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_25 optimizedBody183_125

def optimizedBody183_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_24 optimizedBody183_126

def optimizedBody183_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_23 optimizedBody183_127

def optimizedBody183_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_22 optimizedBody183_128

def optimizedBody183_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_21 optimizedBody183_129

def optimizedBody183_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_20 optimizedBody183_130

def optimizedBody183_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_131

def optimizedBody183_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_19 optimizedBody183_132

def optimizedBody183_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_13 optimizedBody183_133

def optimizedBody183_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_12 optimizedBody183_134

def optimizedBody183_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_11 optimizedBody183_135

def optimizedBody183_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_10 optimizedBody183_136

def optimizedBody183_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_9 optimizedBody183_137

def optimizedBody183_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_8 optimizedBody183_138

def optimizedBody183_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_7 optimizedBody183_139

def optimizedBody183_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_2 optimizedBody183_140

def optimizedBody183_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_1 optimizedBody183_141

def optimizedBody183_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody183_0 optimizedBody183_142

def oracle183 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
              22
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 3))))
            3
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 Flapjack.Spt.ln) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 0 (Flapjack.Spt.ls 2)) 3
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 22)) 5 Flapjack.Spt.ln))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 2)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 24
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))))))
def optimized183 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(183, 3, optimizedBody183_143)
theorem optimize183_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source183, oracle183) = optimized183 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize183_eq
end InitECandidate.Proofs.WordStages
