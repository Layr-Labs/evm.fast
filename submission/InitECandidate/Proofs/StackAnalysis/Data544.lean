import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody544_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody544_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody544_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody544_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody544_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody544_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody544_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_4 optimizedBody544_5

def optimizedBody544_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_3, 544, 2)) (some 470) ([2]) (some (2, optimizedBody544_6, 544, 3))

def optimizedBody544_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody544_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody544_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_9, 544, 4)) (some 540) ([]) (some (2, optimizedBody544_6, 544, 5))

def optimizedBody544_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 81#64)

def optimizedBody544_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody544_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody544_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody544_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_13 optimizedBody544_14

def optimizedBody544_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_15

def optimizedBody544_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody544_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_17 optimizedBody544_14

def optimizedBody544_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_18

def optimizedBody544_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody544_16 optimizedBody544_19

def optimizedBody544_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody544_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody544_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody544_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_22 optimizedBody544_23

def optimizedBody544_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_24

def optimizedBody544_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody544_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_26 optimizedBody544_23

def optimizedBody544_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_27

def optimizedBody544_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody544_25 optimizedBody544_28

def optimizedBody544_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody544_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody544_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody544_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody544_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody544_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody544_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_23 optimizedBody544_5

def optimizedBody544_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_35 optimizedBody544_36

def optimizedBody544_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_34 optimizedBody544_37

def optimizedBody544_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_33 optimizedBody544_38

def optimizedBody544_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_32 optimizedBody544_39

def optimizedBody544_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody544_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody544_40 optimizedBody544_41

def optimizedBody544_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.imm 143#64)))

def optimizedBody544_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody544_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody544_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody544_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody544_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody544_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_49 optimizedBody544_50

def optimizedBody544_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_51

def optimizedBody544_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_48 optimizedBody544_52

def optimizedBody544_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_47 optimizedBody544_53

def optimizedBody544_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_54

def optimizedBody544_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 29#64)

def optimizedBody544_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody544_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_58 optimizedBody544_50

def optimizedBody544_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_47 optimizedBody544_59

def optimizedBody544_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_57 optimizedBody544_60

def optimizedBody544_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_56 optimizedBody544_61

def optimizedBody544_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_62

def optimizedBody544_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_63

def optimizedBody544_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody544_55 optimizedBody544_64

def optimizedBody544_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 4)]

def optimizedBody544_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody544_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody544_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_68 optimizedBody544_5

def optimizedBody544_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_67, 544, 6)) (some 93) ([2, 4]) (some (2, optimizedBody544_69, 544, 7))

def optimizedBody544_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody544_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody544_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody544_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody544_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody544_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody544_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody544_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_78 optimizedBody544_37

def optimizedBody544_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_79

def optimizedBody544_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_77 optimizedBody544_80

def optimizedBody544_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_81

def optimizedBody544_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody544_82 optimizedBody544_41

def optimizedBody544_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody544_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_3, 544, 8)) (some 538) ([2, 4]) (some (2, optimizedBody544_6, 544, 9))

def optimizedBody544_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody544_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody544_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody544_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_88 optimizedBody544_5

def optimizedBody544_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody544_87, 544, 10)) (some 490) ([2]) (some (2, optimizedBody544_89, 544, 11))

def optimizedBody544_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody544_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_33 optimizedBody544_91

def optimizedBody544_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_26 optimizedBody544_92

def optimizedBody544_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_93

def optimizedBody544_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_90 optimizedBody544_94

def optimizedBody544_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_4 optimizedBody544_95

def optimizedBody544_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_86 optimizedBody544_96

def optimizedBody544_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_97

def optimizedBody544_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_85 optimizedBody544_98

def optimizedBody544_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_84 optimizedBody544_99

def optimizedBody544_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_100

def optimizedBody544_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_101

def optimizedBody544_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_83 optimizedBody544_102

def optimizedBody544_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_76 optimizedBody544_103

def optimizedBody544_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_104

def optimizedBody544_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_75 optimizedBody544_105

def optimizedBody544_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_74 optimizedBody544_106

def optimizedBody544_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_73 optimizedBody544_107

def optimizedBody544_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_72 optimizedBody544_108

def optimizedBody544_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_71 optimizedBody544_109

def optimizedBody544_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_110

def optimizedBody544_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_70 optimizedBody544_111

def optimizedBody544_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_66 optimizedBody544_112

def optimizedBody544_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_113

def optimizedBody544_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_65 optimizedBody544_114

def optimizedBody544_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_46 optimizedBody544_115

def optimizedBody544_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_45 optimizedBody544_116

def optimizedBody544_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_117

def optimizedBody544_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_44 optimizedBody544_118

def optimizedBody544_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_119

def optimizedBody544_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_43 optimizedBody544_120

def optimizedBody544_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_121

def optimizedBody544_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_122

def optimizedBody544_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_42 optimizedBody544_123

def optimizedBody544_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_31 optimizedBody544_124

def optimizedBody544_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_30 optimizedBody544_125

def optimizedBody544_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_126

def optimizedBody544_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_29 optimizedBody544_127

def optimizedBody544_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_21 optimizedBody544_128

def optimizedBody544_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_129

def optimizedBody544_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_130

def optimizedBody544_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_20 optimizedBody544_131

def optimizedBody544_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_12 optimizedBody544_132

def optimizedBody544_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_11 optimizedBody544_133

def optimizedBody544_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_134

def optimizedBody544_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_10 optimizedBody544_135

def optimizedBody544_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_3 optimizedBody544_136

def optimizedBody544_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_8 optimizedBody544_137

def optimizedBody544_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_7 optimizedBody544_138

def optimizedBody544_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_2 optimizedBody544_139

def optimizedBody544_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_1 optimizedBody544_140

def optimizedBody544_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody544_0 optimizedBody544_141

def optimized544 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(544, 1, optimizedBody544_142)
end InitECandidate.Proofs.StackAnalysis
