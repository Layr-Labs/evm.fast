import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles834
def optimizedBody834_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody834_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody834_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody834_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody834_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody834_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody834_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody834_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody834_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody834_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody834_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody834_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody834_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody834_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody834_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody834_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody834_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_15 optimizedBody834_16

def optimizedBody834_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_14 optimizedBody834_17

def optimizedBody834_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_13 optimizedBody834_18

def optimizedBody834_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_19

def optimizedBody834_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_11 optimizedBody834_20

def optimizedBody834_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_21

def optimizedBody834_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody834_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody834_22 optimizedBody834_23

def optimizedBody834_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody834_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 160#64)

def optimizedBody834_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody834_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody834_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody834_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_29 optimizedBody834_16

def optimizedBody834_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_28, 834, 2)) (some 94) ([2, 4]) (some (2, optimizedBody834_30, 834, 3))

def optimizedBody834_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody834_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody834_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody834_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody834_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_35 optimizedBody834_18

def optimizedBody834_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_34 optimizedBody834_36

def optimizedBody834_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_33 optimizedBody834_37

def optimizedBody834_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_38

def optimizedBody834_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody834_39 optimizedBody834_23

def optimizedBody834_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (44, 44), (46, 46), (48, 6)]

def optimizedBody834_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody834_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (8, 48)]

def optimizedBody834_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_43 optimizedBody834_16

def optimizedBody834_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_42, 834, 4)) (some 831) ([2]) (some (2, optimizedBody834_44, 834, 5))

def optimizedBody834_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody834_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 12000#64)

def optimizedBody834_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody834_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody834_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 10)]

def optimizedBody834_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0)]

def optimizedBody834_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1000#64)

def optimizedBody834_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 8)]

def optimizedBody834_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody834_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody834_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_55 optimizedBody834_16

def optimizedBody834_57 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_54, 834, 6)) (some 94) ([2, 4]) (some (2, optimizedBody834_56, 834, 7))

def optimizedBody834_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody834_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody834_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_59, 834, 8)) (some 472) ([2]) (some (2, optimizedBody834_56, 834, 9))

def optimizedBody834_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody834_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody834_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody834_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_63 optimizedBody834_16

def optimizedBody834_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_62, 834, 10)) (some 68) ([2]) (some (2, optimizedBody834_64, 834, 11))

def optimizedBody834_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody834_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody834_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody834_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody834_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_69 optimizedBody834_16

def optimizedBody834_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody834_68, 834, 12)) (some 823) ([2, 4, 6]) (some (2, optimizedBody834_70, 834, 13))

def optimizedBody834_72 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody834_39 optimizedBody834_23

def optimizedBody834_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody834_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody834_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody834_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody834_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody834_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody834_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody834_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody834_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody834_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody834_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody834_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_12 optimizedBody834_83

def optimizedBody834_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_9 optimizedBody834_84

def optimizedBody834_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_82 optimizedBody834_85

def optimizedBody834_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_34 optimizedBody834_86

def optimizedBody834_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_61 optimizedBody834_87

def optimizedBody834_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_81 optimizedBody834_88

def optimizedBody834_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_80 optimizedBody834_89

def optimizedBody834_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_0 optimizedBody834_90

def optimizedBody834_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_79 optimizedBody834_91

def optimizedBody834_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_78 optimizedBody834_92

def optimizedBody834_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_77 optimizedBody834_93

def optimizedBody834_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_76 optimizedBody834_94

def optimizedBody834_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_75 optimizedBody834_95

def optimizedBody834_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_74 optimizedBody834_96

def optimizedBody834_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_73 optimizedBody834_97

def optimizedBody834_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_98

def optimizedBody834_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_99

def optimizedBody834_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_72 optimizedBody834_100

def optimizedBody834_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_9 optimizedBody834_101

def optimizedBody834_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_34 optimizedBody834_102

def optimizedBody834_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_103

def optimizedBody834_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_71 optimizedBody834_104

def optimizedBody834_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_67 optimizedBody834_105

def optimizedBody834_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_66 optimizedBody834_106

def optimizedBody834_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_34 optimizedBody834_107

def optimizedBody834_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_108

def optimizedBody834_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_65 optimizedBody834_109

def optimizedBody834_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_55 optimizedBody834_110

def optimizedBody834_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_61 optimizedBody834_111

def optimizedBody834_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_112

def optimizedBody834_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_60 optimizedBody834_113

def optimizedBody834_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_58 optimizedBody834_114

def optimizedBody834_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_115

def optimizedBody834_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_57 optimizedBody834_116

def optimizedBody834_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_53 optimizedBody834_117

def optimizedBody834_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_52 optimizedBody834_118

def optimizedBody834_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_51 optimizedBody834_119

def optimizedBody834_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_120

def optimizedBody834_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_50 optimizedBody834_121

def optimizedBody834_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_49 optimizedBody834_122

def optimizedBody834_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_48 optimizedBody834_123

def optimizedBody834_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_47 optimizedBody834_124

def optimizedBody834_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_46 optimizedBody834_125

def optimizedBody834_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_126

def optimizedBody834_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_45 optimizedBody834_127

def optimizedBody834_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_41 optimizedBody834_128

def optimizedBody834_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_129

def optimizedBody834_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_130

def optimizedBody834_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_40 optimizedBody834_131

def optimizedBody834_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_32 optimizedBody834_132

def optimizedBody834_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_133

def optimizedBody834_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_134

def optimizedBody834_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_31 optimizedBody834_135

def optimizedBody834_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_27 optimizedBody834_136

def optimizedBody834_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_26 optimizedBody834_137

def optimizedBody834_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_25 optimizedBody834_138

def optimizedBody834_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_139

def optimizedBody834_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_10 optimizedBody834_140

def optimizedBody834_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_24 optimizedBody834_141

def optimizedBody834_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_9 optimizedBody834_142

def optimizedBody834_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_8 optimizedBody834_143

def optimizedBody834_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_7 optimizedBody834_144

def optimizedBody834_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_6 optimizedBody834_145

def optimizedBody834_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_5 optimizedBody834_146

def optimizedBody834_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_4 optimizedBody834_147

def optimizedBody834_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_3 optimizedBody834_148

def optimizedBody834_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_2 optimizedBody834_149

def optimizedBody834_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_1 optimizedBody834_150

def optimizedBody834_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody834_0 optimizedBody834_151

def oracle834 : Option (Spt Nat) :=
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
def optimized834 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(834, 1, optimizedBody834_152)
end InitECandidate.Proofs.SmallStages.Oracles834
