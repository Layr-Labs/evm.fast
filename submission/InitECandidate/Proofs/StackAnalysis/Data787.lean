import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody787_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody787_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody787_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody787_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody787_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_2 optimizedBody787_3

def optimizedBody787_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_1, 787, 2)) (some 727) ([2, 4]) (some (2, optimizedBody787_4, 787, 3))

def optimizedBody787_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody787_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody787_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody787_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody787_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody787_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_10

def optimizedBody787_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_11

def optimizedBody787_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_12

def optimizedBody787_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody787_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody787_13 optimizedBody787_14

def optimizedBody787_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody787_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody787_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody787_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody787_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0), (48, 6)]

def optimizedBody787_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_1, 787, 4)) (some 727) ([2, 4]) (some (2, optimizedBody787_4, 787, 5))

def optimizedBody787_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody787_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody787_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody787_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (4, 48)]

def optimizedBody787_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_25 optimizedBody787_3

def optimizedBody787_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_24, 787, 6)) (some 727) ([2, 4]) (some (2, optimizedBody787_26, 787, 7))

def optimizedBody787_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody787_13 optimizedBody787_14

def optimizedBody787_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody787_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 144#64)))

def optimizedBody787_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 8), (46, 0)]

def optimizedBody787_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody787_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody787_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_33 optimizedBody787_3

def optimizedBody787_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_32, 787, 8)) (some 727) ([2, 4]) (some (2, optimizedBody787_34, 787, 9))

def optimizedBody787_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody787_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_36

def optimizedBody787_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_37

def optimizedBody787_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_38

def optimizedBody787_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody787_39 optimizedBody787_14

def optimizedBody787_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 6), (46, 4)]

def optimizedBody787_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody787_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody787_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_43 optimizedBody787_3

def optimizedBody787_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_42, 787, 10)) (some 732) ([2]) (some (2, optimizedBody787_44, 787, 11))

def optimizedBody787_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody787_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 4)]

def optimizedBody787_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody787_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody787_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_49 optimizedBody787_3

def optimizedBody787_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_48, 787, 12)) (some 732) ([2]) (some (2, optimizedBody787_50, 787, 13))

def optimizedBody787_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody787_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody787_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody787_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_53 optimizedBody787_54

def optimizedBody787_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_55

def optimizedBody787_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody787_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_57 optimizedBody787_54

def optimizedBody787_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_58

def optimizedBody787_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody787_56 optimizedBody787_59

def optimizedBody787_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody787_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_52 optimizedBody787_61

def optimizedBody787_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_62

def optimizedBody787_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_61

def optimizedBody787_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_64

def optimizedBody787_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody787_63 optimizedBody787_65

def optimizedBody787_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody787_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody787_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody787_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody787_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 46)]

def optimizedBody787_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 46)]

def optimizedBody787_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_72 optimizedBody787_3

def optimizedBody787_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_71, 787, 14)) (some 730) ([2]) (some (2, optimizedBody787_73, 787, 15))

def optimizedBody787_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody787_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_9 optimizedBody787_75

def optimizedBody787_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_52 optimizedBody787_76

def optimizedBody787_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_77

def optimizedBody787_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_74 optimizedBody787_78

def optimizedBody787_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_70 optimizedBody787_79

def optimizedBody787_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_69 optimizedBody787_80

def optimizedBody787_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_81

def optimizedBody787_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 0), (44, 44)]

def optimizedBody787_84 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody787_82 optimizedBody787_83

def optimizedBody787_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0)]

def optimizedBody787_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody787_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody787_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_87 optimizedBody787_3

def optimizedBody787_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody787_86, 787, 16)) (some 731) ([2]) (some (2, optimizedBody787_88, 787, 17))

def optimizedBody787_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody787_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody787_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody787_93 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 786) ([0, 2, 4]) (none)

def optimizedBody787_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_92 optimizedBody787_93

def optimizedBody787_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_91 optimizedBody787_94

def optimizedBody787_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_90 optimizedBody787_95

def optimizedBody787_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_96

def optimizedBody787_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_89 optimizedBody787_97

def optimizedBody787_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_85 optimizedBody787_98

def optimizedBody787_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_69 optimizedBody787_99

def optimizedBody787_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_100

def optimizedBody787_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_101

def optimizedBody787_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_84 optimizedBody787_102

def optimizedBody787_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_68 optimizedBody787_103

def optimizedBody787_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_67 optimizedBody787_104

def optimizedBody787_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_105

def optimizedBody787_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_66 optimizedBody787_106

def optimizedBody787_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_52 optimizedBody787_107

def optimizedBody787_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_108

def optimizedBody787_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_109

def optimizedBody787_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_60 optimizedBody787_110

def optimizedBody787_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_52 optimizedBody787_111

def optimizedBody787_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_7 optimizedBody787_112

def optimizedBody787_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_113

def optimizedBody787_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_51 optimizedBody787_114

def optimizedBody787_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_47 optimizedBody787_115

def optimizedBody787_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_46 optimizedBody787_116

def optimizedBody787_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_117

def optimizedBody787_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_118

def optimizedBody787_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_45 optimizedBody787_119

def optimizedBody787_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_41 optimizedBody787_120

def optimizedBody787_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_121

def optimizedBody787_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_122

def optimizedBody787_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_40 optimizedBody787_123

def optimizedBody787_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_124

def optimizedBody787_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_125

def optimizedBody787_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_126

def optimizedBody787_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_35 optimizedBody787_127

def optimizedBody787_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_31 optimizedBody787_128

def optimizedBody787_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_30 optimizedBody787_129

def optimizedBody787_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_130

def optimizedBody787_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_29 optimizedBody787_131

def optimizedBody787_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_7 optimizedBody787_132

def optimizedBody787_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_133

def optimizedBody787_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_134

def optimizedBody787_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_28 optimizedBody787_135

def optimizedBody787_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_136

def optimizedBody787_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_137

def optimizedBody787_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_138

def optimizedBody787_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_27 optimizedBody787_139

def optimizedBody787_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_20 optimizedBody787_140

def optimizedBody787_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_23 optimizedBody787_141

def optimizedBody787_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_142

def optimizedBody787_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_22 optimizedBody787_143

def optimizedBody787_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_144

def optimizedBody787_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_145

def optimizedBody787_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_146

def optimizedBody787_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_15 optimizedBody787_147

def optimizedBody787_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_148

def optimizedBody787_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_7 optimizedBody787_149

def optimizedBody787_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_150

def optimizedBody787_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_21 optimizedBody787_151

def optimizedBody787_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_20 optimizedBody787_152

def optimizedBody787_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_19 optimizedBody787_153

def optimizedBody787_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_18 optimizedBody787_154

def optimizedBody787_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_17 optimizedBody787_155

def optimizedBody787_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_16 optimizedBody787_156

def optimizedBody787_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_157

def optimizedBody787_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_158

def optimizedBody787_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_15 optimizedBody787_159

def optimizedBody787_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_8 optimizedBody787_160

def optimizedBody787_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_7 optimizedBody787_161

def optimizedBody787_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_6 optimizedBody787_162

def optimizedBody787_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_5 optimizedBody787_163

def optimizedBody787_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody787_0 optimizedBody787_164

def optimized787 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(787, 3, optimizedBody787_165)
end InitECandidate.Proofs.StackAnalysis
