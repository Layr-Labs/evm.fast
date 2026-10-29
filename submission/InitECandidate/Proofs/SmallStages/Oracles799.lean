import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source799
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles799
def optimizedBody799_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody799_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody799_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody799_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody799_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_2 optimizedBody799_3

def optimizedBody799_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_1, 799, 2)) (some 737) ([2, 4]) (some (2, optimizedBody799_4, 799, 3))

def optimizedBody799_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody799_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody799_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody799_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody799_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody799_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_9 optimizedBody799_10

def optimizedBody799_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_11

def optimizedBody799_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_12

def optimizedBody799_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody799_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody799_13 optimizedBody799_14

def optimizedBody799_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody799_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody799_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody799_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody799_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0), (48, 6)]

def optimizedBody799_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_1, 799, 4)) (some 737) ([2, 4]) (some (2, optimizedBody799_4, 799, 5))

def optimizedBody799_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody799_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody799_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody799_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody799_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_25 optimizedBody799_3

def optimizedBody799_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_24, 799, 6)) (some 737) ([2, 4]) (some (2, optimizedBody799_26, 799, 7))

def optimizedBody799_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody799_13 optimizedBody799_14

def optimizedBody799_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody799_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody799_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody799_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody799_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody799_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_33 optimizedBody799_3

def optimizedBody799_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_32, 799, 8)) (some 737) ([2, 4]) (some (2, optimizedBody799_34, 799, 9))

def optimizedBody799_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody799_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_9 optimizedBody799_36

def optimizedBody799_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_37

def optimizedBody799_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_38

def optimizedBody799_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody799_39 optimizedBody799_14

def optimizedBody799_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 4)]

def optimizedBody799_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody799_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody799_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_43 optimizedBody799_3

def optimizedBody799_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_42, 799, 10)) (some 742) ([2]) (some (2, optimizedBody799_44, 799, 11))

def optimizedBody799_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody799_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4)]

def optimizedBody799_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody799_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody799_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_49 optimizedBody799_3

def optimizedBody799_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_48, 799, 12)) (some 742) ([2]) (some (2, optimizedBody799_50, 799, 13))

def optimizedBody799_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody799_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody799_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody799_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_53 optimizedBody799_54

def optimizedBody799_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_55

def optimizedBody799_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody799_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_57 optimizedBody799_54

def optimizedBody799_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_58

def optimizedBody799_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody799_56 optimizedBody799_59

def optimizedBody799_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody799_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_52 optimizedBody799_61

def optimizedBody799_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_62

def optimizedBody799_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_61

def optimizedBody799_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_64

def optimizedBody799_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody799_63 optimizedBody799_65

def optimizedBody799_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody799_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody799_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody799_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody799_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody799_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 46)]

def optimizedBody799_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_72 optimizedBody799_3

def optimizedBody799_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_71, 799, 14)) (some 740) ([2]) (some (2, optimizedBody799_73, 799, 15))

def optimizedBody799_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody799_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_9 optimizedBody799_75

def optimizedBody799_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_52 optimizedBody799_76

def optimizedBody799_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_77

def optimizedBody799_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_74 optimizedBody799_78

def optimizedBody799_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_70 optimizedBody799_79

def optimizedBody799_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_69 optimizedBody799_80

def optimizedBody799_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_81

def optimizedBody799_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (44, 44)]

def optimizedBody799_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody799_82 optimizedBody799_83

def optimizedBody799_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody799_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody799_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody799_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_87 optimizedBody799_3

def optimizedBody799_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody799_86, 799, 16)) (some 741) ([2]) (some (2, optimizedBody799_88, 799, 17))

def optimizedBody799_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody799_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody799_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody799_93 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 798) ([0, 2, 4]) (none)

def optimizedBody799_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_92 optimizedBody799_93

def optimizedBody799_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_91 optimizedBody799_94

def optimizedBody799_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_90 optimizedBody799_95

def optimizedBody799_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_96

def optimizedBody799_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_89 optimizedBody799_97

def optimizedBody799_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_85 optimizedBody799_98

def optimizedBody799_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_69 optimizedBody799_99

def optimizedBody799_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_100

def optimizedBody799_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_101

def optimizedBody799_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_84 optimizedBody799_102

def optimizedBody799_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_68 optimizedBody799_103

def optimizedBody799_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_67 optimizedBody799_104

def optimizedBody799_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_105

def optimizedBody799_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_66 optimizedBody799_106

def optimizedBody799_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_52 optimizedBody799_107

def optimizedBody799_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_16 optimizedBody799_108

def optimizedBody799_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_109

def optimizedBody799_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_60 optimizedBody799_110

def optimizedBody799_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_52 optimizedBody799_111

def optimizedBody799_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_7 optimizedBody799_112

def optimizedBody799_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_113

def optimizedBody799_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_51 optimizedBody799_114

def optimizedBody799_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_47 optimizedBody799_115

def optimizedBody799_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_46 optimizedBody799_116

def optimizedBody799_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_117

def optimizedBody799_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_118

def optimizedBody799_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_45 optimizedBody799_119

def optimizedBody799_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_41 optimizedBody799_120

def optimizedBody799_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_121

def optimizedBody799_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_122

def optimizedBody799_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_40 optimizedBody799_123

def optimizedBody799_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_124

def optimizedBody799_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_125

def optimizedBody799_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_126

def optimizedBody799_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_35 optimizedBody799_127

def optimizedBody799_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_31 optimizedBody799_128

def optimizedBody799_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_30 optimizedBody799_129

def optimizedBody799_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_130

def optimizedBody799_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_29 optimizedBody799_131

def optimizedBody799_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_7 optimizedBody799_132

def optimizedBody799_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_133

def optimizedBody799_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_134

def optimizedBody799_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_28 optimizedBody799_135

def optimizedBody799_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_136

def optimizedBody799_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_16 optimizedBody799_137

def optimizedBody799_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_138

def optimizedBody799_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_27 optimizedBody799_139

def optimizedBody799_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_20 optimizedBody799_140

def optimizedBody799_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_23 optimizedBody799_141

def optimizedBody799_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_142

def optimizedBody799_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_22 optimizedBody799_143

def optimizedBody799_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_16 optimizedBody799_144

def optimizedBody799_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_145

def optimizedBody799_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_146

def optimizedBody799_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_15 optimizedBody799_147

def optimizedBody799_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_148

def optimizedBody799_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_7 optimizedBody799_149

def optimizedBody799_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_150

def optimizedBody799_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_21 optimizedBody799_151

def optimizedBody799_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_20 optimizedBody799_152

def optimizedBody799_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_19 optimizedBody799_153

def optimizedBody799_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_18 optimizedBody799_154

def optimizedBody799_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_17 optimizedBody799_155

def optimizedBody799_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_16 optimizedBody799_156

def optimizedBody799_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_157

def optimizedBody799_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_158

def optimizedBody799_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_15 optimizedBody799_159

def optimizedBody799_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_8 optimizedBody799_160

def optimizedBody799_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_7 optimizedBody799_161

def optimizedBody799_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_6 optimizedBody799_162

def optimizedBody799_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_5 optimizedBody799_163

def optimizedBody799_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody799_0 optimizedBody799_164

def oracle799 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                1 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 22
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
              (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23)))))))
def optimized799 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(799, 3, optimizedBody799_165)
end InitECandidate.Proofs.SmallStages.Oracles799
