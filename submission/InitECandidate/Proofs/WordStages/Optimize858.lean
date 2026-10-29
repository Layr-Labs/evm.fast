import InitECandidate.Proofs.WordStages.Optimize842
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source858
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody858_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody858_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody858_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody858_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 10 32#64))

def optimizedBody858_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 10 40#64))

def optimizedBody858_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody858_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody858_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody858_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody858_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody858_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody858_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (48, 12), (46, 14), (6, 6), (50, 16), (52, 10), (8, 8), (54, 2), (4, 4)]

def optimizedBody858_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody858_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody858_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 4 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody858_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody858_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody858_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody858_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (56, 8), (60, 4)]

def optimizedBody858_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody858_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 44), (46, 48), (48, 46), (50, 6), (52, 50), (54, 52), (56, 56), (58, 54), (60, 60)]

def optimizedBody858_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody858_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60)]

def optimizedBody858_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody858_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_22 optimizedBody858_23

def optimizedBody858_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody858_21, 858, 2)) (some 346) ([2, 4]) (some (2, optimizedBody858_24, 858, 3))

def optimizedBody858_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54), (56, 56), (58, 58), (60, 60), (62, 0)]

def optimizedBody858_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 2), (16, 44), (12, 46), (18, 48), (44, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (10, 62)]

def optimizedBody858_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (12, 46), (18, 48), (44, 50), (14, 52), (46, 54), (48, 56), (50, 58), (52, 60), (10, 62)]

def optimizedBody858_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_28 optimizedBody858_23

def optimizedBody858_30 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody858_27, 858, 4)) (some 855) ([2]) (some (2, optimizedBody858_29, 858, 5))

def optimizedBody858_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody858_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 10 264#64))

def optimizedBody858_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody858_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(16, 16), (12, 12), (18, 18), (44, 44), (14, 14), (46, 46), (48, 48), (50, 50), (8, 8), (52, 52), (10, 10), (54, 4),
    (0, 0)]

def optimizedBody858_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody858_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (12, 12)]

def optimizedBody858_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody858_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2]

def optimizedBody858_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_5 optimizedBody858_38

def optimizedBody858_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_37 optimizedBody858_39

def optimizedBody858_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_40

def optimizedBody858_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody858_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 18) optimizedBody858_41 optimizedBody858_42

def optimizedBody858_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody858_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 10 256#64))

def optimizedBody858_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody858_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody858_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 12 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody858_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody858_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody858_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody858_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 16), (46, 12), (48, 18), (50, 44), (52, 14), (54, 46), (56, 48), (58, 50), (60, 8),
    (62, 52), (64, 10), (66, 54), (68, 0)]

def optimizedBody858_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(8, 2), (16, 44), (6, 46), (18, 48), (30, 50), (14, 52), (28, 54), (26, 56), (24, 58), (4, 60), (22, 62), (10, 64),
    (20, 66), (0, 68)]

def optimizedBody858_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (16, 44), (6, 46), (18, 48), (30, 50), (14, 52), (28, 54), (26, 56), (24, 58), (4, 60), (22, 62), (10, 64),
    (20, 66), (0, 68)]

def optimizedBody858_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_54 optimizedBody858_23

def optimizedBody858_56 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody858_53, 858, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody858_55, 858, 7))

def optimizedBody858_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody858_41 optimizedBody858_42

def optimizedBody858_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody858_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody858_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 16), (12, 12), (18, 18), (44, 30), (14, 14), (46, 28), (48, 26), (50, 24), (8, 8), (52, 22), (10, 10), (54, 20),
    (0, 0)]

def optimizedBody858_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody858_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_62 optimizedBody858_63

def optimizedBody858_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_61 optimizedBody858_64

def optimizedBody858_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_60 optimizedBody858_65

def optimizedBody858_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_59 optimizedBody858_66

def optimizedBody858_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_58 optimizedBody858_67

def optimizedBody858_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_68

def optimizedBody858_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_69

def optimizedBody858_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_57 optimizedBody858_70

def optimizedBody858_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_37 optimizedBody858_71

def optimizedBody858_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_15 optimizedBody858_72

def optimizedBody858_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_73

def optimizedBody858_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_56 optimizedBody858_74

def optimizedBody858_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_52 optimizedBody858_75

def optimizedBody858_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_51 optimizedBody858_76

def optimizedBody858_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_50 optimizedBody858_77

def optimizedBody858_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_49 optimizedBody858_78

def optimizedBody858_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_48 optimizedBody858_79

def optimizedBody858_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_47 optimizedBody858_80

def optimizedBody858_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_46 optimizedBody858_81

def optimizedBody858_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_45 optimizedBody858_82

def optimizedBody858_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_2 optimizedBody858_83

def optimizedBody858_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_44 optimizedBody858_84

def optimizedBody858_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_15 optimizedBody858_85

def optimizedBody858_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_86

def optimizedBody858_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_87

def optimizedBody858_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_43 optimizedBody858_88

def optimizedBody858_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_36 optimizedBody858_89

def optimizedBody858_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_90

def optimizedBody858_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody858_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_92

def optimizedBody858_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 0) optimizedBody858_91 optimizedBody858_93

def optimizedBody858_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 16), (12, 12), (18, 18), (44, 2), (14, 14), (46, 4), (48, 6), (50, 20), (8, 8), (52, 22), (10, 10), (54, 24),
    (0, 0)]

def optimizedBody858_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_95

def optimizedBody858_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_94 optimizedBody858_96

def optimizedBody858_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_35 optimizedBody858_97

def optimizedBody858_99 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) optimizedBody858_98 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody858_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16), (12, 12), (18, 18), (6, 44), (14, 14), (2, 46), (8, 48), (10, 50), (0, 52)]

def optimizedBody858_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_100

def optimizedBody858_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_99 optimizedBody858_101

def optimizedBody858_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_34 optimizedBody858_102

def optimizedBody858_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_103

def optimizedBody858_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_33 optimizedBody858_104

def optimizedBody858_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_32 optimizedBody858_105

def optimizedBody858_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_2 optimizedBody858_106

def optimizedBody858_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_107

def optimizedBody858_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody858_108 optimizedBody858_101

def optimizedBody858_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody858_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody858_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 16), (48, 12), (46, 18), (6, 6), (50, 14), (52, 2), (8, 8), (54, 10), (4, 4)]

def optimizedBody858_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_112 optimizedBody858_63

def optimizedBody858_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_111 optimizedBody858_113

def optimizedBody858_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_110 optimizedBody858_114

def optimizedBody858_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_115

def optimizedBody858_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_109 optimizedBody858_116

def optimizedBody858_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_31 optimizedBody858_117

def optimizedBody858_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_13 optimizedBody858_118

def optimizedBody858_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_119

def optimizedBody858_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_30 optimizedBody858_120

def optimizedBody858_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_26 optimizedBody858_121

def optimizedBody858_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_122

def optimizedBody858_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_25 optimizedBody858_123

def optimizedBody858_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_20 optimizedBody858_124

def optimizedBody858_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_19 optimizedBody858_125

def optimizedBody858_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_18 optimizedBody858_126

def optimizedBody858_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_17 optimizedBody858_127

def optimizedBody858_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_16 optimizedBody858_128

def optimizedBody858_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_15 optimizedBody858_129

def optimizedBody858_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_14 optimizedBody858_130

def optimizedBody858_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_13 optimizedBody858_131

def optimizedBody858_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_132

def optimizedBody858_134 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.WordRegImm.reg 6) optimizedBody858_133 optimizedBody858_93

def optimizedBody858_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2), (46, 10), (6, 6), (50, 12), (52, 14), (8, 8), (54, 16), (4, 4)]

def optimizedBody858_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_135

def optimizedBody858_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_134 optimizedBody858_136

def optimizedBody858_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_12 optimizedBody858_137

def optimizedBody858_139 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln) optimizedBody858_138 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  Flapjack.Spt.ln)

def optimizedBody858_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (0, 48)]

def optimizedBody858_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody858_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_5 optimizedBody858_141

def optimizedBody858_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_37 optimizedBody858_142

def optimizedBody858_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_143

def optimizedBody858_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody858_144 optimizedBody858_42

def optimizedBody858_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody858_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_146 optimizedBody858_142

def optimizedBody858_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_147

def optimizedBody858_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_148

def optimizedBody858_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_145 optimizedBody858_149

def optimizedBody858_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_140 optimizedBody858_150

def optimizedBody858_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_151

def optimizedBody858_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_139 optimizedBody858_152

def optimizedBody858_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_11 optimizedBody858_153

def optimizedBody858_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_10 optimizedBody858_154

def optimizedBody858_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_9 optimizedBody858_155

def optimizedBody858_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_8 optimizedBody858_156

def optimizedBody858_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_7 optimizedBody858_157

def optimizedBody858_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_5 optimizedBody858_158

def optimizedBody858_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_6 optimizedBody858_159

def optimizedBody858_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_5 optimizedBody858_160

def optimizedBody858_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_4 optimizedBody858_161

def optimizedBody858_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_2 optimizedBody858_162

def optimizedBody858_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_3 optimizedBody858_163

def optimizedBody858_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_2 optimizedBody858_164

def optimizedBody858_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_1 optimizedBody858_165

def optimizedBody858_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody858_0 optimizedBody858_166

def oracle858 : Option (Spt Nat) :=
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
def optimized858 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(858, 2, optimizedBody858_167)
theorem optimize858_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source858, oracle858) = optimized858 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize858_eq
end InitECandidate.Proofs.WordStages
