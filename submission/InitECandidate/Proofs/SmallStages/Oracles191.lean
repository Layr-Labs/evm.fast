import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles191
def optimizedBody191_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (58, 4), (46, 2)]

def optimizedBody191_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (6, 44), (58, 58), (0, 46)]

def optimizedBody191_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (58, 58), (0, 46)]

def optimizedBody191_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody191_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_2 optimizedBody191_3

def optimizedBody191_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody191_1, 191, 2)) (some 185) ([2, 4]) (some (2, optimizedBody191_4, 191, 3))

def optimizedBody191_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody191_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody191_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody191_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22), (12, 12)]

def optimizedBody191_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody191_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody191_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody191_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_12

def optimizedBody191_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_10 optimizedBody191_13

def optimizedBody191_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_14

def optimizedBody191_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody191_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 22) optimizedBody191_15 optimizedBody191_16

def optimizedBody191_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody191_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody191_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody191_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody191_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody191_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody191_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody191_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody191_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 2)))

def optimizedBody191_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody191_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(44, 6), (50, 14), (56, 16), (58, 58), (22, 22), (52, 0), (28, 28), (46, 2), (12, 12), (4, 4), (8, 8), (48, 18),
    (10, 10), (54, 12)]

def optimizedBody191_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 22)]

def optimizedBody191_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 22 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody191_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody191_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody191_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (0, 0)]

def optimizedBody191_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 28)))

def optimizedBody191_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody191_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody191_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(28, 28)]

def optimizedBody191_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody191_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_38 optimizedBody191_39

def optimizedBody191_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_40

def optimizedBody191_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody191_41 optimizedBody191_6

def optimizedBody191_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (62, 4), (60, 0)]

def optimizedBody191_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody191_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0)]

def optimizedBody191_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody191_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 8), (44, 44), (46, 50), (48, 56), (50, 58), (52, 22), (54, 52), (56, 28), (58, 46), (60, 60), (62, 62),
    (64, 8), (66, 48), (68, 10), (70, 54)]

def optimizedBody191_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (44, 44), (46, 46), (48, 48), (50, 50), (22, 52), (54, 54), (56, 56), (58, 58), (12, 60), (14, 62), (8, 64),
    (66, 66), (10, 68), (0, 70)]

def optimizedBody191_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (22, 52), (54, 54), (56, 56), (58, 58), (12, 60), (14, 62), (8, 64),
    (66, 66), (10, 68), (0, 70)]

def optimizedBody191_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_49 optimizedBody191_3

def optimizedBody191_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody191_48, 191, 4)) (some 184) ([2, 4]) (some (2, optimizedBody191_50, 191, 5))

def optimizedBody191_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 22 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody191_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody191_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody191_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (12, 12)]

def optimizedBody191_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody191_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody191_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody191_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_57 optimizedBody191_58

def optimizedBody191_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_37 optimizedBody191_58

def optimizedBody191_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody191_59 optimizedBody191_60

def optimizedBody191_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody191_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody191_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody191_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_63 optimizedBody191_64

def optimizedBody191_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody191_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_66 optimizedBody191_64

def optimizedBody191_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody191_65 optimizedBody191_67

def optimizedBody191_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody191_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody191_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody191_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody191_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody191_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_72 optimizedBody191_73

def optimizedBody191_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_74

def optimizedBody191_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_73

def optimizedBody191_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 4) optimizedBody191_75 optimizedBody191_76

def optimizedBody191_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (2, 2), (0, 0)]

def optimizedBody191_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_78

def optimizedBody191_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_77 optimizedBody191_79

def optimizedBody191_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_71 optimizedBody191_80

def optimizedBody191_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_70 optimizedBody191_81

def optimizedBody191_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_69 optimizedBody191_82

def optimizedBody191_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_83

def optimizedBody191_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_68 optimizedBody191_84

def optimizedBody191_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_62 optimizedBody191_85

def optimizedBody191_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_86

def optimizedBody191_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_61 optimizedBody191_87

def optimizedBody191_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_56 optimizedBody191_88

def optimizedBody191_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_89

def optimizedBody191_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_59

def optimizedBody191_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_60

def optimizedBody191_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.WordRegImm.reg 4) optimizedBody191_91 optimizedBody191_92

def optimizedBody191_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_65

def optimizedBody191_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_67

def optimizedBody191_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody191_94 optimizedBody191_95

def optimizedBody191_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody191_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(2, 2)]

def optimizedBody191_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) optimizedBody191_74 optimizedBody191_98

def optimizedBody191_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_99 optimizedBody191_79

def optimizedBody191_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_97 optimizedBody191_100

def optimizedBody191_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_70 optimizedBody191_101

def optimizedBody191_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_102

def optimizedBody191_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_96 optimizedBody191_103

def optimizedBody191_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_62 optimizedBody191_104

def optimizedBody191_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_105

def optimizedBody191_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_93 optimizedBody191_106

def optimizedBody191_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_56 optimizedBody191_107

def optimizedBody191_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_108

def optimizedBody191_110 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 0) optimizedBody191_90 optimizedBody191_109

def optimizedBody191_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 14), (14, 14), (70, 0)]

def optimizedBody191_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 12), (4, 14), (62, 14), (60, 12), (2, 0)]

def optimizedBody191_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (2, 2), (0, 0)]

def optimizedBody191_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody191_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (0, 0)]

def optimizedBody191_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody191_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 8), (44, 44), (46, 46), (48, 48), (50, 50), (52, 22), (54, 54), (56, 56), (58, 58), (60, 60),
    (62, 62), (64, 8), (66, 66), (68, 10), (70, 70)]

def optimizedBody191_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(6, 44), (14, 46), (26, 48), (16, 50), (22, 52), (18, 54), (28, 56), (24, 58), (12, 60), (4, 62), (8, 64), (20, 66),
    (10, 68), (0, 70)]

def optimizedBody191_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (6, 44), (14, 46), (26, 48), (16, 50), (22, 52), (18, 54), (28, 56), (24, 58), (12, 60), (4, 62), (8, 64),
    (20, 66), (10, 68), (0, 70)]

def optimizedBody191_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_119 optimizedBody191_3

def optimizedBody191_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody191_118, 191, 6)) (some 77) ([2, 4, 6]) (some (2, optimizedBody191_120, 191, 7))

def optimizedBody191_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody191_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 2 (Flapjack.WordRegImm.reg 26)))

def optimizedBody191_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 34 12 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 34 (Flapjack.WordRegImm.reg 26)))

def optimizedBody191_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 30 0#64))

def optimizedBody191_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32), (30, 30)]

def optimizedBody191_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 30 (Flapjack.WordLangAddr.addr 32 0#64))

def optimizedBody191_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (34, 34), (12, 12)]

def optimizedBody191_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 34 (Flapjack.WordRegImm.reg 24)))

def optimizedBody191_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 30 0#64))

def optimizedBody191_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 32)]

def optimizedBody191_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 30 32 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 20)]

def optimizedBody191_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 30 (Flapjack.WordRegImm.reg 20)))

def optimizedBody191_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 30), (0, 0)]

def optimizedBody191_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 30 0#64))

def optimizedBody191_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (2, 2)]

def optimizedBody191_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 2 (Flapjack.WordRegImm.reg 24)))

def optimizedBody191_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (32, 32)]

def optimizedBody191_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 32 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody191_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 6), (14, 14), (26, 26), (16, 16), (22, 22), (18, 18), (28, 28), (24, 24), (12, 12), (4, 4), (8, 8), (20, 20),
    (10, 10), (0, 12)]

def optimizedBody191_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_142 optimizedBody191_143

def optimizedBody191_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_141 optimizedBody191_144

def optimizedBody191_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_140 optimizedBody191_145

def optimizedBody191_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_139 optimizedBody191_146

def optimizedBody191_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_138 optimizedBody191_147

def optimizedBody191_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_137 optimizedBody191_148

def optimizedBody191_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_136 optimizedBody191_149

def optimizedBody191_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_135 optimizedBody191_150

def optimizedBody191_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_134 optimizedBody191_151

def optimizedBody191_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_133 optimizedBody191_152

def optimizedBody191_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_132 optimizedBody191_153

def optimizedBody191_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_131 optimizedBody191_154

def optimizedBody191_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_130 optimizedBody191_155

def optimizedBody191_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_129 optimizedBody191_156

def optimizedBody191_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_128 optimizedBody191_157

def optimizedBody191_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_127 optimizedBody191_158

def optimizedBody191_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_126 optimizedBody191_159

def optimizedBody191_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_123 optimizedBody191_160

def optimizedBody191_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_125 optimizedBody191_161

def optimizedBody191_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_25 optimizedBody191_162

def optimizedBody191_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_124 optimizedBody191_163

def optimizedBody191_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_123 optimizedBody191_164

def optimizedBody191_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_122 optimizedBody191_165

def optimizedBody191_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_166

def optimizedBody191_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_167

def optimizedBody191_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_121 optimizedBody191_168

def optimizedBody191_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_117 optimizedBody191_169

def optimizedBody191_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_116 optimizedBody191_170

def optimizedBody191_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_115 optimizedBody191_171

def optimizedBody191_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_114 optimizedBody191_172

def optimizedBody191_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_113 optimizedBody191_173

def optimizedBody191_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_44 optimizedBody191_174

def optimizedBody191_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_112 optimizedBody191_175

def optimizedBody191_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_44 optimizedBody191_176

def optimizedBody191_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_111 optimizedBody191_177

def optimizedBody191_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_178

def optimizedBody191_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(6, 44), (14, 46), (26, 48), (16, 50), (22, 22), (18, 54), (28, 56), (24, 58), (12, 12), (4, 14), (8, 8), (20, 66),
    (10, 10), (0, 0)]

def optimizedBody191_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_180

def optimizedBody191_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody191_179 optimizedBody191_181

def optimizedBody191_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(44, 6), (50, 14), (56, 26), (58, 16), (22, 22), (52, 18), (28, 28), (46, 24), (12, 12), (4, 4), (8, 8), (48, 20),
    (10, 10), (54, 0)]

def optimizedBody191_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody191_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_183 optimizedBody191_184

def optimizedBody191_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_185

def optimizedBody191_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_182 optimizedBody191_186

def optimizedBody191_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_66 optimizedBody191_187

def optimizedBody191_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_188

def optimizedBody191_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_189

def optimizedBody191_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_110 optimizedBody191_190

def optimizedBody191_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_55 optimizedBody191_191

def optimizedBody191_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_10 optimizedBody191_192

def optimizedBody191_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_54 optimizedBody191_193

def optimizedBody191_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_53 optimizedBody191_194

def optimizedBody191_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_52 optimizedBody191_195

def optimizedBody191_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_30 optimizedBody191_196

def optimizedBody191_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_197

def optimizedBody191_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_51 optimizedBody191_198

def optimizedBody191_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_47 optimizedBody191_199

def optimizedBody191_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_46 optimizedBody191_200

def optimizedBody191_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_45 optimizedBody191_201

def optimizedBody191_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_44 optimizedBody191_202

def optimizedBody191_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_43 optimizedBody191_203

def optimizedBody191_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_204

def optimizedBody191_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_42 optimizedBody191_205

def optimizedBody191_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_37 optimizedBody191_206

def optimizedBody191_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_207

def optimizedBody191_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_36 optimizedBody191_208

def optimizedBody191_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_35 optimizedBody191_209

def optimizedBody191_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_34 optimizedBody191_210

def optimizedBody191_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_33 optimizedBody191_211

def optimizedBody191_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_32 optimizedBody191_212

def optimizedBody191_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_25 optimizedBody191_213

def optimizedBody191_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_31 optimizedBody191_214

def optimizedBody191_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_30 optimizedBody191_215

def optimizedBody191_217 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody191_216 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody191_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 28), (0, 54)]

def optimizedBody191_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody191_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody191_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 52)]

def optimizedBody191_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody191_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody191_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 50)]

def optimizedBody191_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 2 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48)]

def optimizedBody191_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody191_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody191_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody191_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 10 (Flapjack.WordRegImm.reg 8)))

def optimizedBody191_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody191_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody191_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody191_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody191_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 46)]

def optimizedBody191_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody191_238 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_237 optimizedBody191_73

def optimizedBody191_239 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_70 optimizedBody191_238

def optimizedBody191_240 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_227 optimizedBody191_239

def optimizedBody191_241 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_236 optimizedBody191_240

def optimizedBody191_242 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_235 optimizedBody191_241

def optimizedBody191_243 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_234 optimizedBody191_242

def optimizedBody191_244 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_233 optimizedBody191_243

def optimizedBody191_245 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_232 optimizedBody191_244

def optimizedBody191_246 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_231 optimizedBody191_245

def optimizedBody191_247 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_230 optimizedBody191_246

def optimizedBody191_248 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_229 optimizedBody191_247

def optimizedBody191_249 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_53 optimizedBody191_248

def optimizedBody191_250 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_228 optimizedBody191_249

def optimizedBody191_251 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_227 optimizedBody191_250

def optimizedBody191_252 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_226 optimizedBody191_251

def optimizedBody191_253 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_225 optimizedBody191_252

def optimizedBody191_254 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_253

def optimizedBody191_255 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_254

def optimizedBody191_256 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody191_255 optimizedBody191_76

def optimizedBody191_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody191_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody191_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody191_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody191_261 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_260

def optimizedBody191_262 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_72 optimizedBody191_261

def optimizedBody191_263 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_259 optimizedBody191_262

def optimizedBody191_264 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_258 optimizedBody191_263

def optimizedBody191_265 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_257 optimizedBody191_264

def optimizedBody191_266 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_265

def optimizedBody191_267 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_266

def optimizedBody191_268 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_256 optimizedBody191_267

def optimizedBody191_269 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_224 optimizedBody191_268

def optimizedBody191_270 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_223 optimizedBody191_269

def optimizedBody191_271 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_270

def optimizedBody191_272 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_222 optimizedBody191_271

def optimizedBody191_273 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_221 optimizedBody191_272

def optimizedBody191_274 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_220 optimizedBody191_273

def optimizedBody191_275 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_219 optimizedBody191_274

def optimizedBody191_276 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_35 optimizedBody191_275

def optimizedBody191_277 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_218 optimizedBody191_276

def optimizedBody191_278 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_277

def optimizedBody191_279 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_217 optimizedBody191_278

def optimizedBody191_280 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_29 optimizedBody191_279

def optimizedBody191_281 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_280

def optimizedBody191_282 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_25 optimizedBody191_281

def optimizedBody191_283 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_28 optimizedBody191_282

def optimizedBody191_284 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_27 optimizedBody191_283

def optimizedBody191_285 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_11 optimizedBody191_284

def optimizedBody191_286 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_26 optimizedBody191_285

def optimizedBody191_287 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_25 optimizedBody191_286

def optimizedBody191_288 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_24 optimizedBody191_287

def optimizedBody191_289 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_288

def optimizedBody191_290 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_23 optimizedBody191_289

def optimizedBody191_291 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_290

def optimizedBody191_292 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_22 optimizedBody191_291

def optimizedBody191_293 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_292

def optimizedBody191_294 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_21 optimizedBody191_293

def optimizedBody191_295 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_294

def optimizedBody191_296 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_20 optimizedBody191_295

def optimizedBody191_297 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_296

def optimizedBody191_298 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_19 optimizedBody191_297

def optimizedBody191_299 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_298

def optimizedBody191_300 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_18 optimizedBody191_299

def optimizedBody191_301 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_300

def optimizedBody191_302 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_301

def optimizedBody191_303 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_302

def optimizedBody191_304 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_17 optimizedBody191_303

def optimizedBody191_305 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_9 optimizedBody191_304

def optimizedBody191_306 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_8 optimizedBody191_305

def optimizedBody191_307 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_7 optimizedBody191_306

def optimizedBody191_308 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_6 optimizedBody191_307

def optimizedBody191_309 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_5 optimizedBody191_308

def optimizedBody191_310 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody191_0 optimizedBody191_309

def oracle191 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 1)) 29 Flapjack.Spt.ln) 6
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 35 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 16))))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 11
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 12))) 9
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 25
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                  7
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 17))))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 16)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))) 8
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 1)) 11
                  (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bs Flapjack.Spt.ln 33 (Flapjack.Spt.ls 14)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 27
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)))
                  7
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                  4 (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  14
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 13))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 0
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9))) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 16))))
                3
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                  5
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 6
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 30
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                  11
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3)) 25
                    (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)) 28
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                  7
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 16))))
                6 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 14
                    (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 5 (Flapjack.Spt.ls 1)) 1
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 14 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24 Flapjack.Spt.ln) 6
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 6))))
                29
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) Flapjack.Spt.ln)
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 16))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 4)) 31
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 15)))
                  6 (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 9)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 11) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 12))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                  0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 17))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 31) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 11 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 12))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 14))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 1
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 15))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 10)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0))) 0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)) 0
                    (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 15)))
                  0
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 22
                    (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 8)))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 27 Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 30) 35 Flapjack.Spt.ln) Flapjack.Spt.ln) 29
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 31 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 28) 33 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 29 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 29) 34 Flapjack.Spt.ln) Flapjack.Spt.ln) 22
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 30 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 27) 32 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln) Flapjack.Spt.ln)
                23 Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 28 Flapjack.Spt.ln) Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))))
def optimized191 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(191, 3, optimizedBody191_310)
end InitECandidate.Proofs.SmallStages.Oracles191
