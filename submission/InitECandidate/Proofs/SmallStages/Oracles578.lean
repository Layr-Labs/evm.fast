import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles578
def optimizedBody578_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody578_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 8), (6, 6), (44, 44)]

def optimizedBody578_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody578_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody578_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_2 optimizedBody578_3

def optimizedBody578_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_1, 578, 2)) (some 477) ([]) (some (2, optimizedBody578_4, 578, 3))

def optimizedBody578_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody578_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 20#64)

def optimizedBody578_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 0), (50, 8), (52, 6)]

def optimizedBody578_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody578_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody578_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_10 optimizedBody578_3

def optimizedBody578_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_9, 578, 4)) (some 472) ([2]) (some (2, optimizedBody578_11, 578, 5))

def optimizedBody578_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (10, 48), (8, 50), (6, 52)]

def optimizedBody578_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (10, 48), (8, 50), (6, 52)]

def optimizedBody578_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_14 optimizedBody578_3

def optimizedBody578_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_13, 578, 6)) (some 574) ([]) (some (2, optimizedBody578_15, 578, 7))

def optimizedBody578_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody578_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 40#64))

def optimizedBody578_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (6, 6), (8, 8), (44, 44), (46, 0), (48, 2)]

def optimizedBody578_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody578_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody578_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_21 optimizedBody578_3

def optimizedBody578_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_20, 578, 8)) (some 464) ([2, 4, 6, 8]) (some (2, optimizedBody578_22, 578, 9))

def optimizedBody578_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (10, 10)]

def optimizedBody578_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody578_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody578_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_25 optimizedBody578_26

def optimizedBody578_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody578_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_28 optimizedBody578_26

def optimizedBody578_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.WordRegImm.reg 4) optimizedBody578_27 optimizedBody578_29

def optimizedBody578_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody578_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 10 (Flapjack.WordRegImm.imm 256#64)))

def optimizedBody578_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody578_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody578_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody578_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_34 optimizedBody578_35

def optimizedBody578_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody578_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_37 optimizedBody578_35

def optimizedBody578_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 4) optimizedBody578_36 optimizedBody578_38

def optimizedBody578_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 18446744073709551615#64)

def optimizedBody578_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody578_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody578_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_41 optimizedBody578_42

def optimizedBody578_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody578_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_44 optimizedBody578_42

def optimizedBody578_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 6) optimizedBody578_43 optimizedBody578_45

def optimizedBody578_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody578_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody578_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody578_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody578_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 6 (Flapjack.WordRegImm.reg 2)))

def optimizedBody578_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody578_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (46, 44)]

def optimizedBody578_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46)]

def optimizedBody578_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46)]

def optimizedBody578_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_55 optimizedBody578_3

def optimizedBody578_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_54, 578, 10)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody578_56, 578, 11))

def optimizedBody578_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def optimizedBody578_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody578_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_59 optimizedBody578_3

def optimizedBody578_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_58, 578, 12)) (some 492) ([2]) (some (2, optimizedBody578_60, 578, 13))

def optimizedBody578_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody578_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_50 optimizedBody578_62

def optimizedBody578_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_28 optimizedBody578_63

def optimizedBody578_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_64

def optimizedBody578_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_61 optimizedBody578_65

def optimizedBody578_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_55 optimizedBody578_66

def optimizedBody578_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_25 optimizedBody578_67

def optimizedBody578_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_68

def optimizedBody578_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_57 optimizedBody578_69

def optimizedBody578_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_53 optimizedBody578_70

def optimizedBody578_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_28 optimizedBody578_71

def optimizedBody578_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_52 optimizedBody578_72

def optimizedBody578_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_44 optimizedBody578_73

def optimizedBody578_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_37 optimizedBody578_74

def optimizedBody578_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_75

def optimizedBody578_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (0, 0), (4, 4), (44, 44)]

def optimizedBody578_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 2) optimizedBody578_76 optimizedBody578_77

def optimizedBody578_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (4, 4)]

def optimizedBody578_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 4 (Flapjack.WordRegImm.reg 10)))

def optimizedBody578_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody578_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody578_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 50#64)

def optimizedBody578_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody578_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody578_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_26 optimizedBody578_3

def optimizedBody578_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_85 optimizedBody578_86

def optimizedBody578_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_84 optimizedBody578_87

def optimizedBody578_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_50 optimizedBody578_88

def optimizedBody578_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_83 optimizedBody578_89

def optimizedBody578_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_90

def optimizedBody578_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody578_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 6) optimizedBody578_91 optimizedBody578_92

def optimizedBody578_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 4 (Flapjack.WordRegImm.reg 6)))

def optimizedBody578_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody578_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody578_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody578_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody578_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6)]

def optimizedBody578_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (8, 8), (4, 4), (6, 6), (44, 44), (0, 46)]

def optimizedBody578_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody578_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_101 optimizedBody578_3

def optimizedBody578_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_100, 578, 14)) (some 146) ([2, 4]) (some (2, optimizedBody578_102, 578, 15))

def optimizedBody578_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 10), (48, 8), (50, 4), (52, 6)]

def optimizedBody578_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (8, 48), (4, 50), (6, 52)]

def optimizedBody578_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (8, 48), (4, 50), (6, 52)]

def optimizedBody578_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_106 optimizedBody578_3

def optimizedBody578_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_105, 578, 16)) (some 436) ([2]) (some (2, optimizedBody578_107, 578, 17))

def optimizedBody578_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody578_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody578_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_110, 578, 18)) (some 478) ([2, 4, 6, 8]) (some (2, optimizedBody578_4, 578, 19))

def optimizedBody578_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody578_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody578_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_113 optimizedBody578_3

def optimizedBody578_115 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody578_112, 578, 20)) (some 492) ([2]) (some (2, optimizedBody578_114, 578, 21))

def optimizedBody578_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody578_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_50 optimizedBody578_116

def optimizedBody578_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_28 optimizedBody578_117

def optimizedBody578_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_118

def optimizedBody578_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_115 optimizedBody578_119

def optimizedBody578_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_2 optimizedBody578_120

def optimizedBody578_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_25 optimizedBody578_121

def optimizedBody578_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_122

def optimizedBody578_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_111 optimizedBody578_123

def optimizedBody578_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_109 optimizedBody578_124

def optimizedBody578_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_125

def optimizedBody578_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_108 optimizedBody578_126

def optimizedBody578_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_104 optimizedBody578_127

def optimizedBody578_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_128

def optimizedBody578_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_103 optimizedBody578_129

def optimizedBody578_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_99 optimizedBody578_130

def optimizedBody578_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_98 optimizedBody578_131

def optimizedBody578_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_97 optimizedBody578_132

def optimizedBody578_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_96 optimizedBody578_133

def optimizedBody578_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_17 optimizedBody578_134

def optimizedBody578_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_95 optimizedBody578_135

def optimizedBody578_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_94 optimizedBody578_136

def optimizedBody578_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_82 optimizedBody578_137

def optimizedBody578_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_138

def optimizedBody578_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_139

def optimizedBody578_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_93 optimizedBody578_140

def optimizedBody578_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_82 optimizedBody578_141

def optimizedBody578_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_81 optimizedBody578_142

def optimizedBody578_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_17 optimizedBody578_143

def optimizedBody578_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_80 optimizedBody578_144

def optimizedBody578_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_79 optimizedBody578_145

def optimizedBody578_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_146

def optimizedBody578_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_147

def optimizedBody578_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_78 optimizedBody578_148

def optimizedBody578_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_51 optimizedBody578_149

def optimizedBody578_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_50 optimizedBody578_150

def optimizedBody578_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_49 optimizedBody578_151

def optimizedBody578_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_48 optimizedBody578_152

def optimizedBody578_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_47 optimizedBody578_153

def optimizedBody578_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_154

def optimizedBody578_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_46 optimizedBody578_155

def optimizedBody578_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_40 optimizedBody578_156

def optimizedBody578_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_31 optimizedBody578_157

def optimizedBody578_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_158

def optimizedBody578_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_39 optimizedBody578_159

def optimizedBody578_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_33 optimizedBody578_160

def optimizedBody578_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_32 optimizedBody578_161

def optimizedBody578_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_31 optimizedBody578_162

def optimizedBody578_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_163

def optimizedBody578_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_30 optimizedBody578_164

def optimizedBody578_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_24 optimizedBody578_165

def optimizedBody578_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_166

def optimizedBody578_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_23 optimizedBody578_167

def optimizedBody578_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_19 optimizedBody578_168

def optimizedBody578_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_18 optimizedBody578_169

def optimizedBody578_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_17 optimizedBody578_170

def optimizedBody578_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_171

def optimizedBody578_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_16 optimizedBody578_172

def optimizedBody578_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_9 optimizedBody578_173

def optimizedBody578_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_174

def optimizedBody578_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_12 optimizedBody578_175

def optimizedBody578_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_8 optimizedBody578_176

def optimizedBody578_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_7 optimizedBody578_177

def optimizedBody578_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_6 optimizedBody578_178

def optimizedBody578_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_5 optimizedBody578_179

def optimizedBody578_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody578_0 optimizedBody578_180

def oracle578 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 3)))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 24
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2)))
                4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 26
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 2 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.ls 22)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              22
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 6 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 5))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 25
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 0 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 0 (Flapjack.Spt.ls 3)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0)) 22 (Flapjack.Spt.ls 3))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
                25 (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
                23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 24 Flapjack.Spt.ln))
              22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 26) 23 Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
                24 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 25 Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 Flapjack.Spt.ln)))))))))
def optimized578 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(578, 1, optimizedBody578_181)
end InitECandidate.Proofs.SmallStages.Oracles578
