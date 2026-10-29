import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles546
def optimizedBody546_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody546_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody546_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody546_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody546_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody546_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody546_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_4 optimizedBody546_5

def optimizedBody546_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_3, 546, 2)) (some 472) ([2]) (some (2, optimizedBody546_6, 546, 3))

def optimizedBody546_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody546_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody546_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_9, 546, 4)) (some 542) ([]) (some (2, optimizedBody546_6, 546, 5))

def optimizedBody546_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 81#64)

def optimizedBody546_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody546_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody546_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody546_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_13 optimizedBody546_14

def optimizedBody546_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_15

def optimizedBody546_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody546_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_17 optimizedBody546_14

def optimizedBody546_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_18

def optimizedBody546_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody546_16 optimizedBody546_19

def optimizedBody546_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 128#64)

def optimizedBody546_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody546_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody546_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_22 optimizedBody546_23

def optimizedBody546_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_24

def optimizedBody546_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody546_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_26 optimizedBody546_23

def optimizedBody546_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_27

def optimizedBody546_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.WordRegImm.reg 2) optimizedBody546_25 optimizedBody546_28

def optimizedBody546_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 2)]

def optimizedBody546_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 2 (Flapjack.WordRegImm.reg 4)))

def optimizedBody546_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 10#64)

def optimizedBody546_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody546_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody546_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody546_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_23 optimizedBody546_5

def optimizedBody546_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_35 optimizedBody546_36

def optimizedBody546_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_34 optimizedBody546_37

def optimizedBody546_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_33 optimizedBody546_38

def optimizedBody546_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_32 optimizedBody546_39

def optimizedBody546_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody546_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 0#64) optimizedBody546_40 optimizedBody546_41

def optimizedBody546_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 0 0 (Flapjack.WordRegImm.imm 143#64)))

def optimizedBody546_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody546_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 0 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody546_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody546_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody546_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4)]

def optimizedBody546_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_49 optimizedBody546_50

def optimizedBody546_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_51

def optimizedBody546_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_48 optimizedBody546_52

def optimizedBody546_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_47 optimizedBody546_53

def optimizedBody546_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_54

def optimizedBody546_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 29#64)

def optimizedBody546_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody546_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_58 optimizedBody546_50

def optimizedBody546_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_47 optimizedBody546_59

def optimizedBody546_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_57 optimizedBody546_60

def optimizedBody546_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_56 optimizedBody546_61

def optimizedBody546_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_62

def optimizedBody546_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_63

def optimizedBody546_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody546_55 optimizedBody546_64

def optimizedBody546_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 2), (48, 4)]

def optimizedBody546_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody546_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody546_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_68 optimizedBody546_5

def optimizedBody546_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_67, 546, 6)) (some 93) ([2, 4]) (some (2, optimizedBody546_69, 546, 7))

def optimizedBody546_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody546_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody546_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody546_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody546_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody546_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody546_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody546_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_78 optimizedBody546_37

def optimizedBody546_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_79

def optimizedBody546_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_77 optimizedBody546_80

def optimizedBody546_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_81

def optimizedBody546_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 0) optimizedBody546_82 optimizedBody546_41

def optimizedBody546_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody546_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_3, 546, 8)) (some 540) ([2, 4]) (some (2, optimizedBody546_6, 546, 9))

def optimizedBody546_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody546_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody546_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody546_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_88 optimizedBody546_5

def optimizedBody546_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody546_87, 546, 10)) (some 492) ([2]) (some (2, optimizedBody546_89, 546, 11))

def optimizedBody546_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody546_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_33 optimizedBody546_91

def optimizedBody546_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_26 optimizedBody546_92

def optimizedBody546_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_93

def optimizedBody546_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_90 optimizedBody546_94

def optimizedBody546_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_4 optimizedBody546_95

def optimizedBody546_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_86 optimizedBody546_96

def optimizedBody546_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_97

def optimizedBody546_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_85 optimizedBody546_98

def optimizedBody546_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_84 optimizedBody546_99

def optimizedBody546_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_100

def optimizedBody546_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_101

def optimizedBody546_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_83 optimizedBody546_102

def optimizedBody546_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_76 optimizedBody546_103

def optimizedBody546_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_104

def optimizedBody546_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_75 optimizedBody546_105

def optimizedBody546_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_74 optimizedBody546_106

def optimizedBody546_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_73 optimizedBody546_107

def optimizedBody546_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_72 optimizedBody546_108

def optimizedBody546_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_71 optimizedBody546_109

def optimizedBody546_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_110

def optimizedBody546_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_70 optimizedBody546_111

def optimizedBody546_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_66 optimizedBody546_112

def optimizedBody546_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_113

def optimizedBody546_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_65 optimizedBody546_114

def optimizedBody546_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_46 optimizedBody546_115

def optimizedBody546_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_45 optimizedBody546_116

def optimizedBody546_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_117

def optimizedBody546_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_44 optimizedBody546_118

def optimizedBody546_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_119

def optimizedBody546_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_43 optimizedBody546_120

def optimizedBody546_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_121

def optimizedBody546_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_122

def optimizedBody546_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_42 optimizedBody546_123

def optimizedBody546_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_31 optimizedBody546_124

def optimizedBody546_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_30 optimizedBody546_125

def optimizedBody546_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_126

def optimizedBody546_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_29 optimizedBody546_127

def optimizedBody546_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_21 optimizedBody546_128

def optimizedBody546_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_129

def optimizedBody546_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_130

def optimizedBody546_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_20 optimizedBody546_131

def optimizedBody546_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_12 optimizedBody546_132

def optimizedBody546_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_11 optimizedBody546_133

def optimizedBody546_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_134

def optimizedBody546_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_10 optimizedBody546_135

def optimizedBody546_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_3 optimizedBody546_136

def optimizedBody546_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_8 optimizedBody546_137

def optimizedBody546_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_7 optimizedBody546_138

def optimizedBody546_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_2 optimizedBody546_139

def optimizedBody546_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_1 optimizedBody546_140

def optimizedBody546_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody546_0 optimizedBody546_141

def oracle546 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 22)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 2))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln) 22
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized546 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(546, 1, optimizedBody546_142)
end InitECandidate.Proofs.SmallStages.Oracles546
