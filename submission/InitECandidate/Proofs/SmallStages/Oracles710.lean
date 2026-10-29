import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles710
def optimizedBody710_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody710_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody710_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody710_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody710_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody710_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody710_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 150#64)

def optimizedBody710_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (50, 4)]

def optimizedBody710_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (50, 50)]

def optimizedBody710_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50)]

def optimizedBody710_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody710_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_9 optimizedBody710_10

def optimizedBody710_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_8, 710, 2)) (some 472) ([2]) (some (2, optimizedBody710_11, 710, 3))

def optimizedBody710_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody710_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody710_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (50, 50)]

def optimizedBody710_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_15, 710, 4)) (some 68) ([2]) (some (2, optimizedBody710_11, 710, 5))

def optimizedBody710_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 0), (50, 50)]

def optimizedBody710_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody710_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody710_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_19 optimizedBody710_10

def optimizedBody710_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_18, 710, 6)) (some 69) ([]) (some (2, optimizedBody710_20, 710, 7))

def optimizedBody710_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody710_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody710_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody710_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50)]

def optimizedBody710_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_25 optimizedBody710_10

def optimizedBody710_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_24, 710, 8)) (some 68) ([2]) (some (2, optimizedBody710_26, 710, 9))

def optimizedBody710_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody710_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody710_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 96#64))

def optimizedBody710_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody710_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 128#64)

def optimizedBody710_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody710_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (44, 44), (46, 46), (48, 48), (50, 10)]

def optimizedBody710_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody710_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody710_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_36 optimizedBody710_10

def optimizedBody710_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_35, 710, 10)) (some 486) ([2, 4, 6, 8, 10]) (some (2, optimizedBody710_37, 710, 11))

def optimizedBody710_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48)]

def optimizedBody710_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody710_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody710_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_41 optimizedBody710_10

def optimizedBody710_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_40, 710, 12)) (some 707) ([2, 4]) (some (2, optimizedBody710_42, 710, 13))

def optimizedBody710_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 4)]

def optimizedBody710_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (4, 46), (0, 48)]

def optimizedBody710_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46), (0, 48)]

def optimizedBody710_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_46 optimizedBody710_10

def optimizedBody710_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody710_45, 710, 14)) (some 70) ([2]) (some (2, optimizedBody710_47, 710, 15))

def optimizedBody710_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody710_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody710_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody710_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody710_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody710_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_53 optimizedBody710_10

def optimizedBody710_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_52 optimizedBody710_54

def optimizedBody710_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_51 optimizedBody710_55

def optimizedBody710_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_28 optimizedBody710_56

def optimizedBody710_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_50 optimizedBody710_57

def optimizedBody710_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_58

def optimizedBody710_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody710_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody710_59 optimizedBody710_60

def optimizedBody710_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody710_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody710_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody710_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody710_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody710_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody710_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody710_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody710_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody710_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody710_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody710_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody710_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_72 optimizedBody710_73

def optimizedBody710_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_49 optimizedBody710_74

def optimizedBody710_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_71 optimizedBody710_75

def optimizedBody710_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_28 optimizedBody710_76

def optimizedBody710_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_14 optimizedBody710_77

def optimizedBody710_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_70 optimizedBody710_78

def optimizedBody710_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_69 optimizedBody710_79

def optimizedBody710_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_0 optimizedBody710_80

def optimizedBody710_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_68 optimizedBody710_81

def optimizedBody710_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_67 optimizedBody710_82

def optimizedBody710_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_66 optimizedBody710_83

def optimizedBody710_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_65 optimizedBody710_84

def optimizedBody710_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_64 optimizedBody710_85

def optimizedBody710_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_63 optimizedBody710_86

def optimizedBody710_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_62 optimizedBody710_87

def optimizedBody710_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_88

def optimizedBody710_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_89

def optimizedBody710_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_61 optimizedBody710_90

def optimizedBody710_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_49 optimizedBody710_91

def optimizedBody710_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_28 optimizedBody710_92

def optimizedBody710_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_93

def optimizedBody710_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_48 optimizedBody710_94

def optimizedBody710_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_44 optimizedBody710_95

def optimizedBody710_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_96

def optimizedBody710_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_43 optimizedBody710_97

def optimizedBody710_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_39 optimizedBody710_98

def optimizedBody710_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_99

def optimizedBody710_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_38 optimizedBody710_100

def optimizedBody710_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_34 optimizedBody710_101

def optimizedBody710_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_33 optimizedBody710_102

def optimizedBody710_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_32 optimizedBody710_103

def optimizedBody710_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_31 optimizedBody710_104

def optimizedBody710_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_30 optimizedBody710_105

def optimizedBody710_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_28 optimizedBody710_106

def optimizedBody710_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_29 optimizedBody710_107

def optimizedBody710_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_28 optimizedBody710_108

def optimizedBody710_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_109

def optimizedBody710_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_27 optimizedBody710_110

def optimizedBody710_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_23 optimizedBody710_111

def optimizedBody710_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_22 optimizedBody710_112

def optimizedBody710_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_113

def optimizedBody710_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_21 optimizedBody710_114

def optimizedBody710_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_17 optimizedBody710_115

def optimizedBody710_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_116

def optimizedBody710_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_16 optimizedBody710_117

def optimizedBody710_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_9 optimizedBody710_118

def optimizedBody710_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_14 optimizedBody710_119

def optimizedBody710_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_13 optimizedBody710_120

def optimizedBody710_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_12 optimizedBody710_121

def optimizedBody710_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_7 optimizedBody710_122

def optimizedBody710_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_6 optimizedBody710_123

def optimizedBody710_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_5 optimizedBody710_124

def optimizedBody710_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_4 optimizedBody710_125

def optimizedBody710_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_3 optimizedBody710_126

def optimizedBody710_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_2 optimizedBody710_127

def optimizedBody710_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_1 optimizedBody710_128

def optimizedBody710_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody710_0 optimizedBody710_129

def oracle710 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              2
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 25
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              1 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 22 (Flapjack.Spt.ls 0)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln) (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 5 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              1
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln) 22
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 22
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 25)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 25 Flapjack.Spt.ln)))))))
def optimized710 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(710, 1, optimizedBody710_130)
end InitECandidate.Proofs.SmallStages.Oracles710
