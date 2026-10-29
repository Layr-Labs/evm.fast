import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody825_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody825_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody825_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody825_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody825_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody825_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody825_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody825_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 96#64))

def optimizedBody825_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody825_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody825_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody825_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody825_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody825_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody825_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody825_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody825_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody825_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_15 optimizedBody825_16

def optimizedBody825_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_14 optimizedBody825_17

def optimizedBody825_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_13 optimizedBody825_18

def optimizedBody825_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_12 optimizedBody825_19

def optimizedBody825_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_11 optimizedBody825_20

def optimizedBody825_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_21

def optimizedBody825_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody825_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody825_22 optimizedBody825_23

def optimizedBody825_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody825_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 384#64)

def optimizedBody825_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody825_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (8, 2), (44, 44), (46, 46)]

def optimizedBody825_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody825_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_29 optimizedBody825_16

def optimizedBody825_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_28, 825, 2)) (some 94) ([2, 4]) (some (2, optimizedBody825_30, 825, 3))

def optimizedBody825_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody825_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody825_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody825_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody825_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_35 optimizedBody825_18

def optimizedBody825_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_34 optimizedBody825_36

def optimizedBody825_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_33 optimizedBody825_37

def optimizedBody825_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_38

def optimizedBody825_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 0) optimizedBody825_39 optimizedBody825_23

def optimizedBody825_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody825_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32600#64)

def optimizedBody825_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 8), (4, 4)]

def optimizedBody825_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody825_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 37700#64)

def optimizedBody825_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody825_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 8)]

def optimizedBody825_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48)]

def optimizedBody825_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody825_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_49 optimizedBody825_16

def optimizedBody825_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_48, 825, 4)) (some 470) ([2]) (some (2, optimizedBody825_50, 825, 5))

def optimizedBody825_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody825_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody825_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody825_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_54 optimizedBody825_16

def optimizedBody825_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_53, 825, 6)) (some 68) ([2]) (some (2, optimizedBody825_55, 825, 7))

def optimizedBody825_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 88#64))

def optimizedBody825_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6)]

def optimizedBody825_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody825_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody825_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_60 optimizedBody825_16

def optimizedBody825_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody825_59, 825, 8)) (some 814) ([2, 4, 6]) (some (2, optimizedBody825_61, 825, 9))

def optimizedBody825_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.WordRegImm.reg 2) optimizedBody825_39 optimizedBody825_23

def optimizedBody825_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody825_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody825_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody825_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody825_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody825_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody825_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody825_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551360#64))

def optimizedBody825_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody825_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody825_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody825_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_12 optimizedBody825_74

def optimizedBody825_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_9 optimizedBody825_75

def optimizedBody825_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_73 optimizedBody825_76

def optimizedBody825_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_34 optimizedBody825_77

def optimizedBody825_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_52 optimizedBody825_78

def optimizedBody825_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_72 optimizedBody825_79

def optimizedBody825_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_71 optimizedBody825_80

def optimizedBody825_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_0 optimizedBody825_81

def optimizedBody825_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_70 optimizedBody825_82

def optimizedBody825_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_69 optimizedBody825_83

def optimizedBody825_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_68 optimizedBody825_84

def optimizedBody825_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_67 optimizedBody825_85

def optimizedBody825_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_66 optimizedBody825_86

def optimizedBody825_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_65 optimizedBody825_87

def optimizedBody825_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_64 optimizedBody825_88

def optimizedBody825_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_89

def optimizedBody825_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_90

def optimizedBody825_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_63 optimizedBody825_91

def optimizedBody825_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_9 optimizedBody825_92

def optimizedBody825_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_34 optimizedBody825_93

def optimizedBody825_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_94

def optimizedBody825_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_62 optimizedBody825_95

def optimizedBody825_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_58 optimizedBody825_96

def optimizedBody825_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_57 optimizedBody825_97

def optimizedBody825_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_34 optimizedBody825_98

def optimizedBody825_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_99

def optimizedBody825_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_56 optimizedBody825_100

def optimizedBody825_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_49 optimizedBody825_101

def optimizedBody825_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_52 optimizedBody825_102

def optimizedBody825_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_103

def optimizedBody825_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_51 optimizedBody825_104

def optimizedBody825_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_47 optimizedBody825_105

def optimizedBody825_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_46 optimizedBody825_106

def optimizedBody825_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_45 optimizedBody825_107

def optimizedBody825_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_0 optimizedBody825_108

def optimizedBody825_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_44 optimizedBody825_109

def optimizedBody825_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_43 optimizedBody825_110

def optimizedBody825_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_42 optimizedBody825_111

def optimizedBody825_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_41 optimizedBody825_112

def optimizedBody825_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_113

def optimizedBody825_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_114

def optimizedBody825_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_40 optimizedBody825_115

def optimizedBody825_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_32 optimizedBody825_116

def optimizedBody825_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_8 optimizedBody825_117

def optimizedBody825_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_118

def optimizedBody825_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_31 optimizedBody825_119

def optimizedBody825_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_27 optimizedBody825_120

def optimizedBody825_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_26 optimizedBody825_121

def optimizedBody825_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_25 optimizedBody825_122

def optimizedBody825_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_123

def optimizedBody825_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_10 optimizedBody825_124

def optimizedBody825_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_24 optimizedBody825_125

def optimizedBody825_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_9 optimizedBody825_126

def optimizedBody825_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_8 optimizedBody825_127

def optimizedBody825_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_7 optimizedBody825_128

def optimizedBody825_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_6 optimizedBody825_129

def optimizedBody825_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_5 optimizedBody825_130

def optimizedBody825_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_4 optimizedBody825_131

def optimizedBody825_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_3 optimizedBody825_132

def optimizedBody825_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_2 optimizedBody825_133

def optimizedBody825_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_1 optimizedBody825_134

def optimizedBody825_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody825_0 optimizedBody825_135

def optimized825 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(825, 1, optimizedBody825_136)
end InitECandidate.Proofs.StackAnalysis
