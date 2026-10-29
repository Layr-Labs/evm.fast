import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles837
def optimizedBody837_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody837_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody837_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody837_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody837_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody837_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody837_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody837_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody837_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody837_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody837_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody837_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody837_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody837_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody837_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody837_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody837_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody837_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_15 optimizedBody837_16

def optimizedBody837_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_14 optimizedBody837_17

def optimizedBody837_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_13 optimizedBody837_18

def optimizedBody837_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_12 optimizedBody837_19

def optimizedBody837_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_11 optimizedBody837_20

def optimizedBody837_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_21

def optimizedBody837_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody837_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody837_22 optimizedBody837_23

def optimizedBody837_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody837_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody837_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody837_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (44, 44), (46, 46)]

def optimizedBody837_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody837_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_29 optimizedBody837_16

def optimizedBody837_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_28, 837, 2)) (some 94) ([2, 4]) (some (2, optimizedBody837_30, 837, 3))

def optimizedBody837_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody837_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody837_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody837_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody837_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_35 optimizedBody837_18

def optimizedBody837_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_34 optimizedBody837_36

def optimizedBody837_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_33 optimizedBody837_37

def optimizedBody837_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_38

def optimizedBody837_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_39 optimizedBody837_23

def optimizedBody837_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody837_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32600#64)

def optimizedBody837_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody837_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody837_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 37700#64)

def optimizedBody837_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody837_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 8)]

def optimizedBody837_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody837_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody837_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_49 optimizedBody837_16

def optimizedBody837_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_48, 837, 4)) (some 472) ([2]) (some (2, optimizedBody837_50, 837, 5))

def optimizedBody837_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody837_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody837_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody837_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_54 optimizedBody837_16

def optimizedBody837_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_53, 837, 6)) (some 68) ([2]) (some (2, optimizedBody837_55, 837, 7))

def optimizedBody837_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody837_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody837_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody837_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody837_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_60 optimizedBody837_16

def optimizedBody837_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_59, 837, 8)) (some 826) ([2, 4, 6]) (some (2, optimizedBody837_61, 837, 9))

def optimizedBody837_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody837_39 optimizedBody837_23

def optimizedBody837_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody837_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody837_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody837_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody837_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody837_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody837_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody837_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody837_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody837_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody837_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody837_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_12 optimizedBody837_74

def optimizedBody837_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_9 optimizedBody837_75

def optimizedBody837_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_73 optimizedBody837_76

def optimizedBody837_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_34 optimizedBody837_77

def optimizedBody837_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_52 optimizedBody837_78

def optimizedBody837_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_72 optimizedBody837_79

def optimizedBody837_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_71 optimizedBody837_80

def optimizedBody837_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_0 optimizedBody837_81

def optimizedBody837_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_70 optimizedBody837_82

def optimizedBody837_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_69 optimizedBody837_83

def optimizedBody837_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_68 optimizedBody837_84

def optimizedBody837_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_67 optimizedBody837_85

def optimizedBody837_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_66 optimizedBody837_86

def optimizedBody837_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_65 optimizedBody837_87

def optimizedBody837_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_64 optimizedBody837_88

def optimizedBody837_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_89

def optimizedBody837_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_90

def optimizedBody837_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_63 optimizedBody837_91

def optimizedBody837_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_9 optimizedBody837_92

def optimizedBody837_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_34 optimizedBody837_93

def optimizedBody837_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_94

def optimizedBody837_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_62 optimizedBody837_95

def optimizedBody837_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_58 optimizedBody837_96

def optimizedBody837_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_57 optimizedBody837_97

def optimizedBody837_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_34 optimizedBody837_98

def optimizedBody837_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_99

def optimizedBody837_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_56 optimizedBody837_100

def optimizedBody837_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_49 optimizedBody837_101

def optimizedBody837_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_52 optimizedBody837_102

def optimizedBody837_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_103

def optimizedBody837_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_51 optimizedBody837_104

def optimizedBody837_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_47 optimizedBody837_105

def optimizedBody837_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_46 optimizedBody837_106

def optimizedBody837_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_45 optimizedBody837_107

def optimizedBody837_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_0 optimizedBody837_108

def optimizedBody837_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_44 optimizedBody837_109

def optimizedBody837_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_43 optimizedBody837_110

def optimizedBody837_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_42 optimizedBody837_111

def optimizedBody837_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_41 optimizedBody837_112

def optimizedBody837_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_113

def optimizedBody837_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_114

def optimizedBody837_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_40 optimizedBody837_115

def optimizedBody837_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_32 optimizedBody837_116

def optimizedBody837_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_8 optimizedBody837_117

def optimizedBody837_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_118

def optimizedBody837_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_31 optimizedBody837_119

def optimizedBody837_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_27 optimizedBody837_120

def optimizedBody837_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_26 optimizedBody837_121

def optimizedBody837_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_25 optimizedBody837_122

def optimizedBody837_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_123

def optimizedBody837_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_124

def optimizedBody837_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_24 optimizedBody837_125

def optimizedBody837_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_9 optimizedBody837_126

def optimizedBody837_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_8 optimizedBody837_127

def optimizedBody837_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_7 optimizedBody837_128

def optimizedBody837_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_6 optimizedBody837_129

def optimizedBody837_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_5 optimizedBody837_130

def optimizedBody837_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_4 optimizedBody837_131

def optimizedBody837_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_3 optimizedBody837_132

def optimizedBody837_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_133

def optimizedBody837_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_1 optimizedBody837_134

def optimizedBody837_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_0 optimizedBody837_135

def oracle837 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 0)) 2
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln) Flapjack.Spt.ln) 3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)) 2 (Flapjack.Spt.ls 0)) 2
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 22))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln) 1 Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 22)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 23))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 22)))))))))
def optimized837 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(837, 1, optimizedBody837_136)
end InitECandidate.Proofs.SmallStages.Oracles837
