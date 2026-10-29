import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody576_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody576_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody576_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody576_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody576_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_2 optimizedBody576_3

def optimizedBody576_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_1, 576, 2)) (some 475) ([]) (some (2, optimizedBody576_4, 576, 3))

def optimizedBody576_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody576_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody576_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 0), (50, 8), (52, 6)]

def optimizedBody576_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody576_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody576_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_10 optimizedBody576_3

def optimizedBody576_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_9, 576, 4)) (some 470) ([2]) (some (2, optimizedBody576_11, 576, 5))

def optimizedBody576_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (10, 48), (8, 50), (6, 52)]

def optimizedBody576_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (10, 48), (8, 50), (6, 52)]

def optimizedBody576_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_14 optimizedBody576_3

def optimizedBody576_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_13, 576, 6)) (some 572) ([]) (some (2, optimizedBody576_15, 576, 7))

def optimizedBody576_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody576_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody576_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 2)]

def optimizedBody576_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody576_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody576_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_21 optimizedBody576_3

def optimizedBody576_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_20, 576, 8)) (some 462) ([2, 4, 6, 8]) (some (2, optimizedBody576_22, 576, 9))

def optimizedBody576_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody576_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody576_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody576_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_25 optimizedBody576_26

def optimizedBody576_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody576_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_28 optimizedBody576_26

def optimizedBody576_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 4) optimizedBody576_27 optimizedBody576_29

def optimizedBody576_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody576_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody576_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody576_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody576_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody576_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_34 optimizedBody576_35

def optimizedBody576_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody576_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_37 optimizedBody576_35

def optimizedBody576_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody576_36 optimizedBody576_38

def optimizedBody576_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody576_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody576_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody576_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_41 optimizedBody576_42

def optimizedBody576_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody576_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_44 optimizedBody576_42

def optimizedBody576_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 6) optimizedBody576_43 optimizedBody576_45

def optimizedBody576_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody576_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody576_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody576_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody576_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody576_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody576_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (46, 44)]

def optimizedBody576_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46)]

def optimizedBody576_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46)]

def optimizedBody576_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_55 optimizedBody576_3

def optimizedBody576_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_54, 576, 10)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody576_56, 576, 11))

def optimizedBody576_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody576_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody576_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_59 optimizedBody576_3

def optimizedBody576_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_58, 576, 12)) (some 490) ([2]) (some (2, optimizedBody576_60, 576, 13))

def optimizedBody576_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody576_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_50 optimizedBody576_62

def optimizedBody576_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_28 optimizedBody576_63

def optimizedBody576_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_64

def optimizedBody576_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_61 optimizedBody576_65

def optimizedBody576_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_55 optimizedBody576_66

def optimizedBody576_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_25 optimizedBody576_67

def optimizedBody576_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_68

def optimizedBody576_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_57 optimizedBody576_69

def optimizedBody576_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_53 optimizedBody576_70

def optimizedBody576_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_28 optimizedBody576_71

def optimizedBody576_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_52 optimizedBody576_72

def optimizedBody576_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_44 optimizedBody576_73

def optimizedBody576_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_37 optimizedBody576_74

def optimizedBody576_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_75

def optimizedBody576_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (0, 0), (4, 4), (44, 44)]

def optimizedBody576_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody576_76 optimizedBody576_77

def optimizedBody576_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody576_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody576_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody576_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody576_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50#64)

def optimizedBody576_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody576_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody576_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_26 optimizedBody576_3

def optimizedBody576_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_85 optimizedBody576_86

def optimizedBody576_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_84 optimizedBody576_87

def optimizedBody576_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_50 optimizedBody576_88

def optimizedBody576_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_83 optimizedBody576_89

def optimizedBody576_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_90

def optimizedBody576_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody576_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody576_91 optimizedBody576_92

def optimizedBody576_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody576_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody576_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody576_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody576_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody576_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6)]

def optimizedBody576_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (4, 4), (6, 6), (44, 44), (0, 46)]

def optimizedBody576_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody576_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_101 optimizedBody576_3

def optimizedBody576_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_100, 576, 14)) (some 146) ([2, 4]) (some (2, optimizedBody576_102, 576, 15))

def optimizedBody576_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 10), (48, 8), (50, 4), (52, 6)]

def optimizedBody576_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (4, 50), (6, 52)]

def optimizedBody576_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (4, 50), (6, 52)]

def optimizedBody576_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_106 optimizedBody576_3

def optimizedBody576_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_105, 576, 16)) (some 434) ([2]) (some (2, optimizedBody576_107, 576, 17))

def optimizedBody576_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody576_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody576_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_110, 576, 18)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody576_4, 576, 19))

def optimizedBody576_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody576_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody576_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_113 optimizedBody576_3

def optimizedBody576_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody576_112, 576, 20)) (some 490) ([2]) (some (2, optimizedBody576_114, 576, 21))

def optimizedBody576_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody576_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_50 optimizedBody576_116

def optimizedBody576_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_28 optimizedBody576_117

def optimizedBody576_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_118

def optimizedBody576_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_115 optimizedBody576_119

def optimizedBody576_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_2 optimizedBody576_120

def optimizedBody576_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_25 optimizedBody576_121

def optimizedBody576_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_122

def optimizedBody576_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_111 optimizedBody576_123

def optimizedBody576_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_109 optimizedBody576_124

def optimizedBody576_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_125

def optimizedBody576_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_108 optimizedBody576_126

def optimizedBody576_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_104 optimizedBody576_127

def optimizedBody576_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_128

def optimizedBody576_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_103 optimizedBody576_129

def optimizedBody576_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_99 optimizedBody576_130

def optimizedBody576_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_98 optimizedBody576_131

def optimizedBody576_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_97 optimizedBody576_132

def optimizedBody576_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_96 optimizedBody576_133

def optimizedBody576_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_17 optimizedBody576_134

def optimizedBody576_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_95 optimizedBody576_135

def optimizedBody576_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_94 optimizedBody576_136

def optimizedBody576_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_82 optimizedBody576_137

def optimizedBody576_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_138

def optimizedBody576_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_139

def optimizedBody576_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_93 optimizedBody576_140

def optimizedBody576_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_82 optimizedBody576_141

def optimizedBody576_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_81 optimizedBody576_142

def optimizedBody576_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_17 optimizedBody576_143

def optimizedBody576_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_80 optimizedBody576_144

def optimizedBody576_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_79 optimizedBody576_145

def optimizedBody576_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_146

def optimizedBody576_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_147

def optimizedBody576_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_78 optimizedBody576_148

def optimizedBody576_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_51 optimizedBody576_149

def optimizedBody576_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_50 optimizedBody576_150

def optimizedBody576_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_49 optimizedBody576_151

def optimizedBody576_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_48 optimizedBody576_152

def optimizedBody576_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_47 optimizedBody576_153

def optimizedBody576_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_154

def optimizedBody576_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_46 optimizedBody576_155

def optimizedBody576_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_40 optimizedBody576_156

def optimizedBody576_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_31 optimizedBody576_157

def optimizedBody576_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_158

def optimizedBody576_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_39 optimizedBody576_159

def optimizedBody576_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_33 optimizedBody576_160

def optimizedBody576_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_32 optimizedBody576_161

def optimizedBody576_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_31 optimizedBody576_162

def optimizedBody576_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_163

def optimizedBody576_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_30 optimizedBody576_164

def optimizedBody576_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_24 optimizedBody576_165

def optimizedBody576_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_166

def optimizedBody576_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_23 optimizedBody576_167

def optimizedBody576_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_19 optimizedBody576_168

def optimizedBody576_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_18 optimizedBody576_169

def optimizedBody576_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_17 optimizedBody576_170

def optimizedBody576_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_171

def optimizedBody576_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_16 optimizedBody576_172

def optimizedBody576_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_9 optimizedBody576_173

def optimizedBody576_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_174

def optimizedBody576_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_12 optimizedBody576_175

def optimizedBody576_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_8 optimizedBody576_176

def optimizedBody576_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_7 optimizedBody576_177

def optimizedBody576_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_6 optimizedBody576_178

def optimizedBody576_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_5 optimizedBody576_179

def optimizedBody576_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody576_0 optimizedBody576_180

def optimized576 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(576, 1, optimizedBody576_181)
end InitECandidate.Proofs.StackAnalysis
