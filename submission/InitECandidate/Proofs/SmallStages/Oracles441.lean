import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles441
def optimizedBody441_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 2)]

def optimizedBody441_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody441_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody441_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody441_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody441_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4)]

def optimizedBody441_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (6, 44), (46, 46)]

def optimizedBody441_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (46, 46)]

def optimizedBody441_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody441_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_7 optimizedBody441_8

def optimizedBody441_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_6, 441, 2)) (some 186) ([2, 4]) (some (2, optimizedBody441_9, 441, 3))

def optimizedBody441_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody441_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody441_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody441_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody441_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody441_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_14 optimizedBody441_15

def optimizedBody441_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_16

def optimizedBody441_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody441_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody441_17 optimizedBody441_18

def optimizedBody441_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 40#64)

def optimizedBody441_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 6), (46, 46)]

def optimizedBody441_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody441_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody441_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_23 optimizedBody441_8

def optimizedBody441_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_22, 441, 4)) (some 68) ([2]) (some (2, optimizedBody441_24, 441, 5))

def optimizedBody441_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 8#64)

def optimizedBody441_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody441_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody441_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody441_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48)]

def optimizedBody441_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_30 optimizedBody441_8

def optimizedBody441_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_29, 441, 6)) (some 182) ([2, 4]) (some (2, optimizedBody441_31, 441, 7))

def optimizedBody441_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody441_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody441_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_29, 441, 8)) (some 182) ([2, 4]) (some (2, optimizedBody441_31, 441, 9))

def optimizedBody441_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody441_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody441_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody441_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody441_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_29, 441, 10)) (some 437) ([2, 4]) (some (2, optimizedBody441_31, 441, 11))

def optimizedBody441_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody441_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody441_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_29, 441, 12)) (some 437) ([2, 4]) (some (2, optimizedBody441_31, 441, 13))

def optimizedBody441_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody441_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2#64)

def optimizedBody441_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 24#64)

def optimizedBody441_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody441_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48)]

def optimizedBody441_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_48 optimizedBody441_8

def optimizedBody441_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_47, 441, 14)) (some 437) ([2, 4]) (some (2, optimizedBody441_49, 441, 15))

def optimizedBody441_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody441_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody441_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody441_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody441_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody441_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody441_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody441_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551400#64))

def optimizedBody441_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody441_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody441_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody441_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_61 optimizedBody441_8

def optimizedBody441_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody441_60, 441, 16)) (some 190) ([2, 4, 6]) (some (2, optimizedBody441_62, 441, 17))

def optimizedBody441_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody441_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_14 optimizedBody441_64

def optimizedBody441_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_65

def optimizedBody441_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_63 optimizedBody441_66

def optimizedBody441_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_59 optimizedBody441_67

def optimizedBody441_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_58 optimizedBody441_68

def optimizedBody441_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_57 optimizedBody441_69

def optimizedBody441_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_56 optimizedBody441_70

def optimizedBody441_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_55 optimizedBody441_71

def optimizedBody441_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_54 optimizedBody441_72

def optimizedBody441_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_53 optimizedBody441_73

def optimizedBody441_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_52 optimizedBody441_74

def optimizedBody441_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_51 optimizedBody441_75

def optimizedBody441_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_76

def optimizedBody441_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_50 optimizedBody441_77

def optimizedBody441_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_28 optimizedBody441_78

def optimizedBody441_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_46 optimizedBody441_79

def optimizedBody441_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_45 optimizedBody441_80

def optimizedBody441_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_38 optimizedBody441_81

def optimizedBody441_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_37 optimizedBody441_82

def optimizedBody441_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_44 optimizedBody441_83

def optimizedBody441_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_12 optimizedBody441_84

def optimizedBody441_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_85

def optimizedBody441_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_43 optimizedBody441_86

def optimizedBody441_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_28 optimizedBody441_87

def optimizedBody441_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_42 optimizedBody441_88

def optimizedBody441_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_39 optimizedBody441_89

def optimizedBody441_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_38 optimizedBody441_90

def optimizedBody441_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_37 optimizedBody441_91

def optimizedBody441_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_41 optimizedBody441_92

def optimizedBody441_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_12 optimizedBody441_93

def optimizedBody441_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_94

def optimizedBody441_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_40 optimizedBody441_95

def optimizedBody441_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_28 optimizedBody441_96

def optimizedBody441_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_20 optimizedBody441_97

def optimizedBody441_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_39 optimizedBody441_98

def optimizedBody441_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_38 optimizedBody441_99

def optimizedBody441_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_37 optimizedBody441_100

def optimizedBody441_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_36 optimizedBody441_101

def optimizedBody441_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_12 optimizedBody441_102

def optimizedBody441_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_103

def optimizedBody441_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_35 optimizedBody441_104

def optimizedBody441_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_28 optimizedBody441_105

def optimizedBody441_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_27 optimizedBody441_106

def optimizedBody441_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_26 optimizedBody441_107

def optimizedBody441_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_34 optimizedBody441_108

def optimizedBody441_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_33 optimizedBody441_109

def optimizedBody441_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_110

def optimizedBody441_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_32 optimizedBody441_111

def optimizedBody441_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_28 optimizedBody441_112

def optimizedBody441_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_27 optimizedBody441_113

def optimizedBody441_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_26 optimizedBody441_114

def optimizedBody441_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_115

def optimizedBody441_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_25 optimizedBody441_116

def optimizedBody441_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_21 optimizedBody441_117

def optimizedBody441_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_20 optimizedBody441_118

def optimizedBody441_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_119

def optimizedBody441_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_120

def optimizedBody441_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_19 optimizedBody441_121

def optimizedBody441_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_13 optimizedBody441_122

def optimizedBody441_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_12 optimizedBody441_123

def optimizedBody441_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_11 optimizedBody441_124

def optimizedBody441_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_10 optimizedBody441_125

def optimizedBody441_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_5 optimizedBody441_126

def optimizedBody441_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_4 optimizedBody441_127

def optimizedBody441_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_3 optimizedBody441_128

def optimizedBody441_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_2 optimizedBody441_129

def optimizedBody441_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_1 optimizedBody441_130

def optimizedBody441_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody441_0 optimizedBody441_131

def oracle441 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)) 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22)))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))) 23
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 Flapjack.Spt.ln) 2
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))))
              1
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 22 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)) 23
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)) 22
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)))))))
def optimized441 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(441, 2, optimizedBody441_132)
end InitECandidate.Proofs.SmallStages.Oracles441
