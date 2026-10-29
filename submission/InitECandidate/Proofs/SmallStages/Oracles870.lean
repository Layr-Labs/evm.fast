import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles870
def optimizedBody870_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody870_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody870_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody870_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody870_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody870_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody870_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody870_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody870_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody870_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody870_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody870_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 12), (46, 14), (6, 6), (50, 16), (52, 10), (8, 8), (54, 2), (4, 4)]

def optimizedBody870_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody870_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody870_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody870_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody870_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody870_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody870_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (56, 8), (60, 4)]

def optimizedBody870_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody870_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 48), (48, 46), (50, 6), (52, 50), (54, 52), (56, 56), (58, 54), (60, 60)]

def optimizedBody870_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody870_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody870_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody870_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_22 optimizedBody870_23

def optimizedBody870_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody870_21, 870, 2)) (some 348) ([2, 4]) (some (2, optimizedBody870_24, 870, 3))

def optimizedBody870_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 0)]

def optimizedBody870_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (16, 44), (12, 46), (18, 48), (44, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (10, 62)]

def optimizedBody870_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (12, 46), (18, 48), (44, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (10, 62)]

def optimizedBody870_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_28 optimizedBody870_23

def optimizedBody870_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody870_27, 870, 4)) (some 867) ([2]) (some (2, optimizedBody870_29, 870, 5))

def optimizedBody870_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody870_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 264#64))

def optimizedBody870_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody870_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(16, 16), (12, 12), (18, 18), (44, 44), (14, 14), (46, 46), (48, 48), (50, 50), (8, 8), (52, 52), (10, 10), (54, 4),
    (0, 0)]

def optimizedBody870_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody870_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (12, 12)]

def optimizedBody870_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody870_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody870_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_5 optimizedBody870_38

def optimizedBody870_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_37 optimizedBody870_39

def optimizedBody870_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_40

def optimizedBody870_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody870_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 18) optimizedBody870_41 optimizedBody870_42

def optimizedBody870_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody870_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 256#64))

def optimizedBody870_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody870_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody870_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody870_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody870_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody870_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody870_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 16), (46, 12), (48, 18), (50, 44), (52, 14), (54, 46), (56, 48), (58, 50), (60, 8),
    (62, 52), (64, 10), (66, 54), (68, 0)]

def optimizedBody870_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (16, 44), (6, 46), (18, 48), (30, 50), (14, 52), (28, 54), (26, 56), (24, 58), (4, 60), (22, 62), (10, 64),
    (20, 66), (0, 68)]

def optimizedBody870_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (6, 46), (18, 48), (30, 50), (14, 52), (28, 54), (26, 56), (24, 58), (4, 60), (22, 62), (10, 64),
    (20, 66), (0, 68)]

def optimizedBody870_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_54 optimizedBody870_23

def optimizedBody870_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
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
  Flapjack.Spt.ln)), optimizedBody870_53, 870, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody870_55, 870, 7))

def optimizedBody870_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody870_41 optimizedBody870_42

def optimizedBody870_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody870_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody870_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody870_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody870_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 16), (12, 12), (18, 18), (44, 30), (14, 14), (46, 28), (48, 26), (50, 24), (8, 8), (52, 22), (10, 10), (54, 20),
    (0, 0)]

def optimizedBody870_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody870_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_62 optimizedBody870_63

def optimizedBody870_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_61 optimizedBody870_64

def optimizedBody870_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_60 optimizedBody870_65

def optimizedBody870_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_59 optimizedBody870_66

def optimizedBody870_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_58 optimizedBody870_67

def optimizedBody870_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_68

def optimizedBody870_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_69

def optimizedBody870_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_57 optimizedBody870_70

def optimizedBody870_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_37 optimizedBody870_71

def optimizedBody870_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_15 optimizedBody870_72

def optimizedBody870_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_73

def optimizedBody870_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_56 optimizedBody870_74

def optimizedBody870_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_52 optimizedBody870_75

def optimizedBody870_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_51 optimizedBody870_76

def optimizedBody870_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_50 optimizedBody870_77

def optimizedBody870_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_49 optimizedBody870_78

def optimizedBody870_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_48 optimizedBody870_79

def optimizedBody870_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_47 optimizedBody870_80

def optimizedBody870_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_46 optimizedBody870_81

def optimizedBody870_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_45 optimizedBody870_82

def optimizedBody870_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_2 optimizedBody870_83

def optimizedBody870_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_44 optimizedBody870_84

def optimizedBody870_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_15 optimizedBody870_85

def optimizedBody870_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_86

def optimizedBody870_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_87

def optimizedBody870_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_43 optimizedBody870_88

def optimizedBody870_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_36 optimizedBody870_89

def optimizedBody870_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_90

def optimizedBody870_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody870_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_92

def optimizedBody870_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody870_91 optimizedBody870_93

def optimizedBody870_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 16), (12, 12), (18, 18), (44, 2), (14, 14), (46, 4), (48, 6), (50, 20), (8, 8), (52, 22), (10, 10), (54, 24),
    (0, 0)]

def optimizedBody870_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_95

def optimizedBody870_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_94 optimizedBody870_96

def optimizedBody870_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_35 optimizedBody870_97

def optimizedBody870_99 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody870_98 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody870_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (12, 12), (18, 18), (6, 44), (14, 14), (2, 46), (8, 48), (10, 50), (0, 52)]

def optimizedBody870_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_100

def optimizedBody870_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_99 optimizedBody870_101

def optimizedBody870_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_34 optimizedBody870_102

def optimizedBody870_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_103

def optimizedBody870_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_33 optimizedBody870_104

def optimizedBody870_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_32 optimizedBody870_105

def optimizedBody870_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_2 optimizedBody870_106

def optimizedBody870_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_107

def optimizedBody870_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody870_108 optimizedBody870_101

def optimizedBody870_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody870_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody870_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 16), (48, 12), (46, 18), (6, 6), (50, 14), (52, 2), (8, 8), (54, 10), (4, 4)]

def optimizedBody870_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_112 optimizedBody870_63

def optimizedBody870_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_111 optimizedBody870_113

def optimizedBody870_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_110 optimizedBody870_114

def optimizedBody870_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_115

def optimizedBody870_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_109 optimizedBody870_116

def optimizedBody870_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_31 optimizedBody870_117

def optimizedBody870_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_13 optimizedBody870_118

def optimizedBody870_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_119

def optimizedBody870_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_30 optimizedBody870_120

def optimizedBody870_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_26 optimizedBody870_121

def optimizedBody870_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_122

def optimizedBody870_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_25 optimizedBody870_123

def optimizedBody870_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_20 optimizedBody870_124

def optimizedBody870_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_19 optimizedBody870_125

def optimizedBody870_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_18 optimizedBody870_126

def optimizedBody870_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_17 optimizedBody870_127

def optimizedBody870_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_16 optimizedBody870_128

def optimizedBody870_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_15 optimizedBody870_129

def optimizedBody870_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_14 optimizedBody870_130

def optimizedBody870_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_13 optimizedBody870_131

def optimizedBody870_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_132

def optimizedBody870_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody870_133 optimizedBody870_93

def optimizedBody870_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (46, 10), (6, 6), (50, 12), (52, 14), (8, 8), (54, 16), (4, 4)]

def optimizedBody870_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_135

def optimizedBody870_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_134 optimizedBody870_136

def optimizedBody870_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_12 optimizedBody870_137

def optimizedBody870_139 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln) optimizedBody870_138 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody870_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (0, 48)]

def optimizedBody870_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody870_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_5 optimizedBody870_141

def optimizedBody870_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_37 optimizedBody870_142

def optimizedBody870_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_143

def optimizedBody870_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody870_144 optimizedBody870_42

def optimizedBody870_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody870_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_146 optimizedBody870_142

def optimizedBody870_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_147

def optimizedBody870_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_148

def optimizedBody870_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_145 optimizedBody870_149

def optimizedBody870_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_140 optimizedBody870_150

def optimizedBody870_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_151

def optimizedBody870_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_139 optimizedBody870_152

def optimizedBody870_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_11 optimizedBody870_153

def optimizedBody870_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_10 optimizedBody870_154

def optimizedBody870_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_9 optimizedBody870_155

def optimizedBody870_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_8 optimizedBody870_156

def optimizedBody870_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_7 optimizedBody870_157

def optimizedBody870_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_5 optimizedBody870_158

def optimizedBody870_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_6 optimizedBody870_159

def optimizedBody870_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_5 optimizedBody870_160

def optimizedBody870_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_4 optimizedBody870_161

def optimizedBody870_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_2 optimizedBody870_162

def optimizedBody870_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_3 optimizedBody870_163

def optimizedBody870_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_2 optimizedBody870_164

def optimizedBody870_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_1 optimizedBody870_165

def optimizedBody870_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody870_0 optimizedBody870_166

def oracle870 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))) 27
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 4 (Flapjack.Spt.ls 4))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 3))))
              4
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 23 Flapjack.Spt.ln)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 11)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 Flapjack.Spt.ln))
                3 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 6)) 8
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) (Flapjack.Spt.ls 1))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 26
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                26
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 4)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              5
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 22)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 12)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 3)) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 25 Flapjack.Spt.ln))
                24
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 10)) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 5 Flapjack.Spt.ln) Flapjack.Spt.ln)
                3
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 15)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 30 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 27
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.ls 8)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 25 Flapjack.Spt.ln) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln)))
              5
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 7 Flapjack.Spt.ln))
                6
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 2)) 0
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 26 Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 30
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 27 Flapjack.Spt.ln) (Flapjack.Spt.ls 8)) 1
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 12) (Flapjack.Spt.ls 4))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 25
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 9) Flapjack.Spt.ln))
                25
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 23 Flapjack.Spt.ln) 28
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 Flapjack.Spt.ln) (Flapjack.Spt.ls 9)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 13))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 11) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 24 Flapjack.Spt.ln)) 22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 26 (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 8) Flapjack.Spt.ln))
                5 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 9)) 2 (Flapjack.Spt.ls 29)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 29 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 31 (Flapjack.Spt.ls 22)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 28 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 30)) Flapjack.Spt.ln)))))))
def optimized870 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(870, 2, optimizedBody870_167)
end InitECandidate.Proofs.SmallStages.Oracles870
