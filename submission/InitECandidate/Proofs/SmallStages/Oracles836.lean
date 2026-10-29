import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source836
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles836
def optimizedBody836_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody836_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody836_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody836_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody836_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody836_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody836_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody836_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody836_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody836_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody836_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody836_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody836_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody836_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody836_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody836_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody836_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody836_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_15 optimizedBody836_16

def optimizedBody836_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_14 optimizedBody836_17

def optimizedBody836_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_13 optimizedBody836_18

def optimizedBody836_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_12 optimizedBody836_19

def optimizedBody836_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_11 optimizedBody836_20

def optimizedBody836_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_21

def optimizedBody836_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody836_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody836_22 optimizedBody836_23

def optimizedBody836_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody836_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody836_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody836_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody836_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody836_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_29 optimizedBody836_16

def optimizedBody836_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_28, 836, 2)) (some 94) ([2, 4]) (some (2, optimizedBody836_30, 836, 3))

def optimizedBody836_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody836_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody836_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody836_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody836_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_35 optimizedBody836_18

def optimizedBody836_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_36

def optimizedBody836_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_33 optimizedBody836_37

def optimizedBody836_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_38

def optimizedBody836_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody836_39 optimizedBody836_23

def optimizedBody836_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 6)]

def optimizedBody836_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody836_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody836_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_43 optimizedBody836_16

def optimizedBody836_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_42, 836, 4)) (some 832) ([2]) (some (2, optimizedBody836_44, 836, 5))

def optimizedBody836_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody836_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 22500#64)

def optimizedBody836_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody836_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody836_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 10)]

def optimizedBody836_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0)]

def optimizedBody836_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1000#64)

def optimizedBody836_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 8)]

def optimizedBody836_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody836_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody836_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_55 optimizedBody836_16

def optimizedBody836_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_54, 836, 6)) (some 94) ([2, 4]) (some (2, optimizedBody836_56, 836, 7))

def optimizedBody836_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody836_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody836_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_59, 836, 8)) (some 472) ([2]) (some (2, optimizedBody836_56, 836, 9))

def optimizedBody836_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 256#64)

def optimizedBody836_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody836_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody836_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_63 optimizedBody836_16

def optimizedBody836_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_62, 836, 10)) (some 68) ([2]) (some (2, optimizedBody836_64, 836, 11))

def optimizedBody836_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody836_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody836_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody836_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody836_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_69 optimizedBody836_16

def optimizedBody836_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody836_68, 836, 12)) (some 825) ([2, 4, 6]) (some (2, optimizedBody836_70, 836, 13))

def optimizedBody836_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody836_39 optimizedBody836_23

def optimizedBody836_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody836_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody836_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody836_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody836_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody836_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody836_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody836_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody836_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody836_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody836_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody836_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_12 optimizedBody836_83

def optimizedBody836_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_9 optimizedBody836_84

def optimizedBody836_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_82 optimizedBody836_85

def optimizedBody836_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_86

def optimizedBody836_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_61 optimizedBody836_87

def optimizedBody836_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_81 optimizedBody836_88

def optimizedBody836_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_80 optimizedBody836_89

def optimizedBody836_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_0 optimizedBody836_90

def optimizedBody836_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_79 optimizedBody836_91

def optimizedBody836_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_78 optimizedBody836_92

def optimizedBody836_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_77 optimizedBody836_93

def optimizedBody836_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_76 optimizedBody836_94

def optimizedBody836_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_75 optimizedBody836_95

def optimizedBody836_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_74 optimizedBody836_96

def optimizedBody836_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_73 optimizedBody836_97

def optimizedBody836_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_98

def optimizedBody836_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_99

def optimizedBody836_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_72 optimizedBody836_100

def optimizedBody836_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_9 optimizedBody836_101

def optimizedBody836_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_102

def optimizedBody836_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_103

def optimizedBody836_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_71 optimizedBody836_104

def optimizedBody836_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_67 optimizedBody836_105

def optimizedBody836_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_66 optimizedBody836_106

def optimizedBody836_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_34 optimizedBody836_107

def optimizedBody836_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_108

def optimizedBody836_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_65 optimizedBody836_109

def optimizedBody836_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_55 optimizedBody836_110

def optimizedBody836_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_61 optimizedBody836_111

def optimizedBody836_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_112

def optimizedBody836_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_60 optimizedBody836_113

def optimizedBody836_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_58 optimizedBody836_114

def optimizedBody836_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_115

def optimizedBody836_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_57 optimizedBody836_116

def optimizedBody836_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_53 optimizedBody836_117

def optimizedBody836_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_52 optimizedBody836_118

def optimizedBody836_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_51 optimizedBody836_119

def optimizedBody836_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_49 optimizedBody836_120

def optimizedBody836_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_50 optimizedBody836_121

def optimizedBody836_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_49 optimizedBody836_122

def optimizedBody836_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_48 optimizedBody836_123

def optimizedBody836_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_47 optimizedBody836_124

def optimizedBody836_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_46 optimizedBody836_125

def optimizedBody836_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_126

def optimizedBody836_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_45 optimizedBody836_127

def optimizedBody836_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_41 optimizedBody836_128

def optimizedBody836_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_129

def optimizedBody836_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_130

def optimizedBody836_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_40 optimizedBody836_131

def optimizedBody836_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_32 optimizedBody836_132

def optimizedBody836_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_8 optimizedBody836_133

def optimizedBody836_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_134

def optimizedBody836_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_31 optimizedBody836_135

def optimizedBody836_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_27 optimizedBody836_136

def optimizedBody836_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_26 optimizedBody836_137

def optimizedBody836_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_25 optimizedBody836_138

def optimizedBody836_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_139

def optimizedBody836_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_10 optimizedBody836_140

def optimizedBody836_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_24 optimizedBody836_141

def optimizedBody836_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_9 optimizedBody836_142

def optimizedBody836_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_8 optimizedBody836_143

def optimizedBody836_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_7 optimizedBody836_144

def optimizedBody836_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_6 optimizedBody836_145

def optimizedBody836_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_5 optimizedBody836_146

def optimizedBody836_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_4 optimizedBody836_147

def optimizedBody836_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_3 optimizedBody836_148

def optimizedBody836_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_2 optimizedBody836_149

def optimizedBody836_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_1 optimizedBody836_150

def optimizedBody836_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody836_0 optimizedBody836_151

def oracle836 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 0))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1))) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              0
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 23)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              1
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 2))
              1
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 2 (Flapjack.Spt.ls 23)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) (Flapjack.Spt.ls 23))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))))
def optimized836 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(836, 1, optimizedBody836_152)
end InitECandidate.Proofs.SmallStages.Oracles836
