import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source858
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles858
def optimizedBody858_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody858_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 80#64)

def optimizedBody858_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody858_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (10, 46)]

def optimizedBody858_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46)]

def optimizedBody858_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody858_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_4 optimizedBody858_5

def optimizedBody858_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody858_3, 858, 2)) (some 68) ([2]) (some (2, optimizedBody858_6, 858, 3))

def optimizedBody858_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody858_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody858_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody858_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (10, 10), (46, 4), (8, 8)]

def optimizedBody858_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody858_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody858_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 8 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody858_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody858_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody858_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody858_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (52, 10), (8, 8)]

def optimizedBody858_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody858_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 192#64)

def optimizedBody858_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody858_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 76#64)

def optimizedBody858_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody858_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_22 optimizedBody858_23

def optimizedBody858_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_24

def optimizedBody858_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_23

def optimizedBody858_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody858_25 optimizedBody858_26

def optimizedBody858_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody858_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 116#64)

def optimizedBody858_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_29 optimizedBody858_23

def optimizedBody858_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_30

def optimizedBody858_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody858_31 optimizedBody858_26

def optimizedBody858_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody858_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 184#64)

def optimizedBody858_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_34 optimizedBody858_23

def optimizedBody858_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_35

def optimizedBody858_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody858_36 optimizedBody858_26

def optimizedBody858_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody858_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 68#64)

def optimizedBody858_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_39 optimizedBody858_23

def optimizedBody858_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_40

def optimizedBody858_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody858_41 optimizedBody858_26

def optimizedBody858_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody858_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody858_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (50, 4), (58, 0)]

def optimizedBody858_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody858_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody858_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody858_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 48), (48, 12), (50, 50), (52, 52), (54, 46), (56, 8), (58, 58)]

def optimizedBody858_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (46, 46), (12, 48), (4, 50), (52, 52), (54, 54), (10, 56), (0, 58)]

def optimizedBody858_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (12, 48), (4, 50), (52, 52), (54, 54), (10, 56), (0, 58)]

def optimizedBody858_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_51 optimizedBody858_5

def optimizedBody858_53 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody858_50, 858, 4)) (some 68) ([2]) (some (2, optimizedBody858_52, 858, 5))

def optimizedBody858_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody858_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 10 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody858_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 0)]

def optimizedBody858_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 12), (6, 6), (44, 44), (46, 46), (48, 8), (50, 50), (52, 52), (54, 54), (56, 10), (58, 58)]

def optimizedBody858_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 44), (16, 46), (6, 48), (4, 50), (10, 52), (12, 54), (8, 56), (0, 58)]

def optimizedBody858_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (16, 46), (6, 48), (4, 50), (10, 52), (12, 54), (8, 56), (0, 58)]

def optimizedBody858_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_60 optimizedBody858_5

def optimizedBody858_62 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody858_59, 858, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody858_61, 858, 7))

def optimizedBody858_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody858_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody858_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody858_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody858_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody858_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody858_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (16, 16)]

def optimizedBody858_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody858_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody858_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody858_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody858_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (0, 0), (10, 10), (12, 12), (8, 8)]

def optimizedBody858_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_75 optimizedBody858_76

def optimizedBody858_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_63 optimizedBody858_77

def optimizedBody858_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_74 optimizedBody858_78

def optimizedBody858_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_73 optimizedBody858_79

def optimizedBody858_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_72 optimizedBody858_80

def optimizedBody858_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_47 optimizedBody858_81

def optimizedBody858_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_46 optimizedBody858_82

def optimizedBody858_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_71 optimizedBody858_83

def optimizedBody858_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_70 optimizedBody858_84

def optimizedBody858_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_69 optimizedBody858_85

def optimizedBody858_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_68 optimizedBody858_86

def optimizedBody858_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_67 optimizedBody858_87

def optimizedBody858_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_66 optimizedBody858_88

def optimizedBody858_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_65 optimizedBody858_89

def optimizedBody858_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_64 optimizedBody858_90

def optimizedBody858_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_63 optimizedBody858_91

def optimizedBody858_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_92

def optimizedBody858_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_62 optimizedBody858_93

def optimizedBody858_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_58 optimizedBody858_94

def optimizedBody858_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_57 optimizedBody858_95

def optimizedBody858_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_56 optimizedBody858_96

def optimizedBody858_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_46 optimizedBody858_97

def optimizedBody858_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_45 optimizedBody858_98

def optimizedBody858_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_55 optimizedBody858_99

def optimizedBody858_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_54 optimizedBody858_100

def optimizedBody858_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_101

def optimizedBody858_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_53 optimizedBody858_102

def optimizedBody858_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_49 optimizedBody858_103

def optimizedBody858_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_48 optimizedBody858_104

def optimizedBody858_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_47 optimizedBody858_105

def optimizedBody858_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_46 optimizedBody858_106

def optimizedBody858_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_45 optimizedBody858_107

def optimizedBody858_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_108

def optimizedBody858_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 44), (0, 48), (10, 52), (12, 46), (8, 8)]

def optimizedBody858_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_110

def optimizedBody858_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody858_109 optimizedBody858_111

def optimizedBody858_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 14), (48, 0), (10, 10), (46, 12), (8, 8)]

def optimizedBody858_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody858_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_114 optimizedBody858_115

def optimizedBody858_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_113 optimizedBody858_116

def optimizedBody858_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_117

def optimizedBody858_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_118

def optimizedBody858_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_112 optimizedBody858_119

def optimizedBody858_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_44 optimizedBody858_120

def optimizedBody858_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_43 optimizedBody858_121

def optimizedBody858_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_122

def optimizedBody858_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_42 optimizedBody858_123

def optimizedBody858_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_38 optimizedBody858_124

def optimizedBody858_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_125

def optimizedBody858_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_126

def optimizedBody858_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_37 optimizedBody858_127

def optimizedBody858_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_33 optimizedBody858_128

def optimizedBody858_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_129

def optimizedBody858_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_130

def optimizedBody858_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_32 optimizedBody858_131

def optimizedBody858_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_28 optimizedBody858_132

def optimizedBody858_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_133

def optimizedBody858_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_134

def optimizedBody858_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_27 optimizedBody858_135

def optimizedBody858_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_21 optimizedBody858_136

def optimizedBody858_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_137

def optimizedBody858_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_20 optimizedBody858_138

def optimizedBody858_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_19 optimizedBody858_139

def optimizedBody858_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_18 optimizedBody858_140

def optimizedBody858_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_17 optimizedBody858_141

def optimizedBody858_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_16 optimizedBody858_142

def optimizedBody858_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_15 optimizedBody858_143

def optimizedBody858_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_14 optimizedBody858_144

def optimizedBody858_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_145

def optimizedBody858_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_146

def optimizedBody858_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody858_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_148

def optimizedBody858_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody858_147 optimizedBody858_149

def optimizedBody858_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (10, 10), (46, 4), (8, 8)]

def optimizedBody858_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_151

def optimizedBody858_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_150 optimizedBody858_152

def optimizedBody858_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_13 optimizedBody858_153

def optimizedBody858_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_154

def optimizedBody858_156 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody858_155 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody858_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 48)]

def optimizedBody858_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody858_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_157 optimizedBody858_158

def optimizedBody858_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_159

def optimizedBody858_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_156 optimizedBody858_160

def optimizedBody858_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_11 optimizedBody858_161

def optimizedBody858_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_162

def optimizedBody858_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_163

def optimizedBody858_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_9 optimizedBody858_164

def optimizedBody858_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_165

def optimizedBody858_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_7 optimizedBody858_166

def optimizedBody858_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_2 optimizedBody858_167

def optimizedBody858_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_1 optimizedBody858_168

def optimizedBody858_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_0 optimizedBody858_169

def oracle858 : Option (Spt Nat) :=
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
def optimized858 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(858, 2, optimizedBody858_170)
end InitECandidate.Proofs.SmallStages.Oracles858
