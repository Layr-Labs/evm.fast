import InitECandidate.Proofs.WordStages.Optimize830
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source846
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody846_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody846_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody846_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody846_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (10, 46)]

def optimizedBody846_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46)]

def optimizedBody846_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody846_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_4 optimizedBody846_5

def optimizedBody846_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody846_3, 846, 2)) (some 68) ([2]) (some (2, optimizedBody846_6, 846, 3))

def optimizedBody846_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody846_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody846_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody846_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (10, 10), (46, 4), (8, 8)]

def optimizedBody846_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody846_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody846_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody846_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody846_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody846_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody846_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 10), (8, 8)]

def optimizedBody846_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody846_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody846_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody846_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 76#64)

def optimizedBody846_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody846_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_22 optimizedBody846_23

def optimizedBody846_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_24

def optimizedBody846_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_23

def optimizedBody846_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody846_25 optimizedBody846_26

def optimizedBody846_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody846_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 116#64)

def optimizedBody846_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_29 optimizedBody846_23

def optimizedBody846_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_30

def optimizedBody846_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody846_31 optimizedBody846_26

def optimizedBody846_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody846_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 184#64)

def optimizedBody846_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_34 optimizedBody846_23

def optimizedBody846_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_35

def optimizedBody846_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody846_36 optimizedBody846_26

def optimizedBody846_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody846_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 68#64)

def optimizedBody846_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_39 optimizedBody846_23

def optimizedBody846_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_40

def optimizedBody846_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody846_41 optimizedBody846_26

def optimizedBody846_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody846_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody846_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (50, 4), (58, 0)]

def optimizedBody846_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody846_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody846_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 48), (48, 12), (50, 50), (52, 52), (54, 46), (56, 8), (58, 58)]

def optimizedBody846_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (46, 46), (12, 48), (4, 50), (52, 52), (54, 54), (10, 56), (0, 58)]

def optimizedBody846_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (4, 50), (52, 52), (54, 54), (10, 56), (0, 58)]

def optimizedBody846_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_51 optimizedBody846_5

def optimizedBody846_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody846_50, 846, 4)) (some 68) ([2]) (some (2, optimizedBody846_52, 846, 5))

def optimizedBody846_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody846_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody846_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 0)]

def optimizedBody846_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (6, 6), (44, 44), (46, 46), (48, 8), (50, 50), (52, 52), (54, 54), (56, 10), (58, 58)]

def optimizedBody846_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (16, 46), (6, 48), (4, 50), (10, 52), (12, 54), (8, 56), (0, 58)]

def optimizedBody846_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (16, 46), (6, 48), (4, 50), (10, 52), (12, 54), (8, 56), (0, 58)]

def optimizedBody846_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_60 optimizedBody846_5

def optimizedBody846_62 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody846_59, 846, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody846_61, 846, 7))

def optimizedBody846_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody846_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody846_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody846_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody846_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody846_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (16, 16)]

def optimizedBody846_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody846_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody846_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody846_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody846_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0), (10, 10), (12, 12), (8, 8)]

def optimizedBody846_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_75 optimizedBody846_76

def optimizedBody846_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_63 optimizedBody846_77

def optimizedBody846_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_74 optimizedBody846_78

def optimizedBody846_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_73 optimizedBody846_79

def optimizedBody846_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_72 optimizedBody846_80

def optimizedBody846_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_47 optimizedBody846_81

def optimizedBody846_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_46 optimizedBody846_82

def optimizedBody846_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_71 optimizedBody846_83

def optimizedBody846_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_70 optimizedBody846_84

def optimizedBody846_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_69 optimizedBody846_85

def optimizedBody846_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_68 optimizedBody846_86

def optimizedBody846_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_67 optimizedBody846_87

def optimizedBody846_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_66 optimizedBody846_88

def optimizedBody846_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_65 optimizedBody846_89

def optimizedBody846_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_64 optimizedBody846_90

def optimizedBody846_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_63 optimizedBody846_91

def optimizedBody846_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_92

def optimizedBody846_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_62 optimizedBody846_93

def optimizedBody846_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_58 optimizedBody846_94

def optimizedBody846_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_57 optimizedBody846_95

def optimizedBody846_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_56 optimizedBody846_96

def optimizedBody846_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_46 optimizedBody846_97

def optimizedBody846_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_45 optimizedBody846_98

def optimizedBody846_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_55 optimizedBody846_99

def optimizedBody846_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_54 optimizedBody846_100

def optimizedBody846_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_101

def optimizedBody846_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_53 optimizedBody846_102

def optimizedBody846_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_49 optimizedBody846_103

def optimizedBody846_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_48 optimizedBody846_104

def optimizedBody846_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_47 optimizedBody846_105

def optimizedBody846_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_46 optimizedBody846_106

def optimizedBody846_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_45 optimizedBody846_107

def optimizedBody846_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_108

def optimizedBody846_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 44), (0, 48), (10, 52), (12, 46), (8, 8)]

def optimizedBody846_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_110

def optimizedBody846_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody846_109 optimizedBody846_111

def optimizedBody846_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody846_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (48, 0), (10, 10), (46, 12), (8, 8)]

def optimizedBody846_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody846_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_114 optimizedBody846_115

def optimizedBody846_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_113 optimizedBody846_116

def optimizedBody846_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_117

def optimizedBody846_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_118

def optimizedBody846_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_112 optimizedBody846_119

def optimizedBody846_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_44 optimizedBody846_120

def optimizedBody846_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_43 optimizedBody846_121

def optimizedBody846_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_122

def optimizedBody846_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_42 optimizedBody846_123

def optimizedBody846_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_38 optimizedBody846_124

def optimizedBody846_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_125

def optimizedBody846_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_126

def optimizedBody846_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_37 optimizedBody846_127

def optimizedBody846_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_33 optimizedBody846_128

def optimizedBody846_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_129

def optimizedBody846_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_130

def optimizedBody846_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_32 optimizedBody846_131

def optimizedBody846_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_28 optimizedBody846_132

def optimizedBody846_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_133

def optimizedBody846_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_134

def optimizedBody846_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_27 optimizedBody846_135

def optimizedBody846_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_21 optimizedBody846_136

def optimizedBody846_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_137

def optimizedBody846_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_20 optimizedBody846_138

def optimizedBody846_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_19 optimizedBody846_139

def optimizedBody846_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_18 optimizedBody846_140

def optimizedBody846_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_17 optimizedBody846_141

def optimizedBody846_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_16 optimizedBody846_142

def optimizedBody846_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_15 optimizedBody846_143

def optimizedBody846_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_14 optimizedBody846_144

def optimizedBody846_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_145

def optimizedBody846_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_146

def optimizedBody846_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody846_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_148

def optimizedBody846_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody846_147 optimizedBody846_149

def optimizedBody846_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (10, 10), (46, 4), (8, 8)]

def optimizedBody846_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_151

def optimizedBody846_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_150 optimizedBody846_152

def optimizedBody846_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_13 optimizedBody846_153

def optimizedBody846_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_12 optimizedBody846_154

def optimizedBody846_156 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody846_155 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody846_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 48)]

def optimizedBody846_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody846_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_157 optimizedBody846_158

def optimizedBody846_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_159

def optimizedBody846_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_156 optimizedBody846_160

def optimizedBody846_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_11 optimizedBody846_161

def optimizedBody846_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_162

def optimizedBody846_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_10 optimizedBody846_163

def optimizedBody846_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_9 optimizedBody846_164

def optimizedBody846_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_8 optimizedBody846_165

def optimizedBody846_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_7 optimizedBody846_166

def optimizedBody846_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_2 optimizedBody846_167

def optimizedBody846_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_1 optimizedBody846_168

def optimizedBody846_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody846_0 optimizedBody846_169

def oracle846 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                4
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 8)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                23 (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 5
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                4 (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6 Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 8))) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))
              0 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 7)) 4 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 5
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 4)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 2 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.ls 1))) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 2 Flapjack.Spt.ln)
                22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) Flapjack.Spt.ln) 23
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 26) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln) 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))))))
def optimized846 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(846, 2, optimizedBody846_170)
theorem optimize846_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source846, oracle846) = optimized846 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize846_eq
end InitECandidate.Proofs.WordStages
