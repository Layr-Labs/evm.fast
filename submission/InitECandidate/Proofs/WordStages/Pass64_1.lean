import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass64_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word64_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 7 Flapjack.WordStore.heapLength

def word64_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 7 7 (Flapjack.WordRegImm.imm 1#64)))

def word64_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_0 word64_1_1

def word64_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 7 7

def word64_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_2 word64_1_3

def word64_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551608#64)))

def word64_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_5

def word64_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word64_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_6 word64_1_7

def word64_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def word64_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_8 word64_1_9

def word64_1_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(7, 4)]

def word64_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 7 0#64))

def word64_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_11 word64_1_12

def word64_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_10 word64_1_13

def word64_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551600#64)))

def word64_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_15

def word64_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_14 word64_1_16

def word64_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_17 word64_1_7

def word64_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_18 word64_1_9

def word64_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_19 word64_1_13

def word64_1_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551592#64)))

def word64_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_21

def word64_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_20 word64_1_22

def word64_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_23 word64_1_7

def word64_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_24 word64_1_9

def word64_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_25 word64_1_13

def word64_1_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551584#64)))

def word64_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_27

def word64_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_26 word64_1_28

def word64_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_29 word64_1_7

def word64_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_30 word64_1_9

def word64_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_31 word64_1_13

def word64_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551576#64)))

def word64_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_33

def word64_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_32 word64_1_34

def word64_1_36 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_35 word64_1_7

def word64_1_37 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_36 word64_1_9

def word64_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_37 word64_1_13

def word64_1_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551568#64)))

def word64_1_40 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_39

def word64_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_38 word64_1_40

def word64_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_41 word64_1_7

def word64_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_42 word64_1_9

def word64_1_44 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_43 word64_1_13

def word64_1_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551560#64)))

def word64_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_45

def word64_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_44 word64_1_46

def word64_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_47 word64_1_7

def word64_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_48 word64_1_9

def word64_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_49 word64_1_13

def word64_1_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551552#64)))

def word64_1_52 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_51

def word64_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_50 word64_1_52

def word64_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_53 word64_1_7

def word64_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_54 word64_1_9

def word64_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_55 word64_1_13

def word64_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551544#64)))

def word64_1_58 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_57

def word64_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_56 word64_1_58

def word64_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_59 word64_1_7

def word64_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_60 word64_1_9

def word64_1_62 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_61 word64_1_13

def word64_1_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551536#64)))

def word64_1_64 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_63

def word64_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_62 word64_1_64

def word64_1_66 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_65 word64_1_7

def word64_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_66 word64_1_9

def word64_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_67 word64_1_13

def word64_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551528#64)))

def word64_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_69

def word64_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_68 word64_1_70

def word64_1_72 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_71 word64_1_7

def word64_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_72 word64_1_9

def word64_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_73 word64_1_13

def word64_1_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551520#64)))

def word64_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_75

def word64_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_74 word64_1_76

def word64_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_77 word64_1_7

def word64_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_78 word64_1_9

def word64_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_79 word64_1_13

def word64_1_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551512#64)))

def word64_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_81

def word64_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_80 word64_1_82

def word64_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_83 word64_1_7

def word64_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_84 word64_1_9

def word64_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_85 word64_1_13

def word64_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551504#64)))

def word64_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_87

def word64_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_86 word64_1_88

def word64_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_89 word64_1_7

def word64_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_90 word64_1_9

def word64_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_91 word64_1_13

def word64_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551496#64)))

def word64_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_93

def word64_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_92 word64_1_94

def word64_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_95 word64_1_7

def word64_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_96 word64_1_9

def word64_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_97 word64_1_13

def word64_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551488#64)))

def word64_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_99

def word64_1_101 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_98 word64_1_100

def word64_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_101 word64_1_7

def word64_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_102 word64_1_9

def word64_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_103 word64_1_13

def word64_1_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551480#64)))

def word64_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_105

def word64_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_104 word64_1_106

def word64_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_107 word64_1_7

def word64_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_108 word64_1_9

def word64_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_109 word64_1_13

def word64_1_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551472#64)))

def word64_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_111

def word64_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_110 word64_1_112

def word64_1_114 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_113 word64_1_7

def word64_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_114 word64_1_9

def word64_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_115 word64_1_13

def word64_1_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551464#64)))

def word64_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_117

def word64_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_116 word64_1_118

def word64_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_119 word64_1_7

def word64_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_120 word64_1_9

def word64_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_121 word64_1_13

def word64_1_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551456#64)))

def word64_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_123

def word64_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_122 word64_1_124

def word64_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_125 word64_1_7

def word64_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_126 word64_1_9

def word64_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_127 word64_1_13

def word64_1_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551448#64)))

def word64_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_129

def word64_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_128 word64_1_130

def word64_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_131 word64_1_7

def word64_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_132 word64_1_9

def word64_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_133 word64_1_13

def word64_1_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551440#64)))

def word64_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_135

def word64_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_134 word64_1_136

def word64_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_137 word64_1_7

def word64_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_138 word64_1_9

def word64_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_139 word64_1_13

def word64_1_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551432#64)))

def word64_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_141

def word64_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_140 word64_1_142

def word64_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_143 word64_1_7

def word64_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_144 word64_1_9

def word64_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_145 word64_1_13

def word64_1_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551424#64)))

def word64_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_147

def word64_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_146 word64_1_148

def word64_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_149 word64_1_7

def word64_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_150 word64_1_9

def word64_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_151 word64_1_13

def word64_1_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551416#64)))

def word64_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_153

def word64_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_152 word64_1_154

def word64_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_155 word64_1_7

def word64_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_156 word64_1_9

def word64_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_157 word64_1_13

def word64_1_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551408#64)))

def word64_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_159

def word64_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_158 word64_1_160

def word64_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_161 word64_1_7

def word64_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_162 word64_1_9

def word64_1_164 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_163 word64_1_13

def word64_1_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551400#64)))

def word64_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_165

def word64_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_164 word64_1_166

def word64_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_167 word64_1_7

def word64_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_168 word64_1_9

def word64_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_169 word64_1_13

def word64_1_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551392#64)))

def word64_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_171

def word64_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_170 word64_1_172

def word64_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_173 word64_1_7

def word64_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_174 word64_1_9

def word64_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_175 word64_1_13

def word64_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551384#64)))

def word64_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_177

def word64_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_176 word64_1_178

def word64_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_179 word64_1_7

def word64_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_180 word64_1_9

def word64_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_181 word64_1_13

def word64_1_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551376#64)))

def word64_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_183

def word64_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_182 word64_1_184

def word64_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_185 word64_1_7

def word64_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_186 word64_1_9

def word64_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_187 word64_1_13

def word64_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551368#64)))

def word64_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_189

def word64_1_191 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_188 word64_1_190

def word64_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_191 word64_1_7

def word64_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_192 word64_1_9

def word64_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_193 word64_1_13

def word64_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551360#64)))

def word64_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_195

def word64_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_194 word64_1_196

def word64_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_197 word64_1_7

def word64_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_198 word64_1_9

def word64_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_199 word64_1_13

def word64_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551352#64)))

def word64_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_201

def word64_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_200 word64_1_202

def word64_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_203 word64_1_7

def word64_1_205 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_204 word64_1_9

def word64_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_205 word64_1_13

def word64_1_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551344#64)))

def word64_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_207

def word64_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_206 word64_1_208

def word64_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_209 word64_1_7

def word64_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_210 word64_1_9

def word64_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_211 word64_1_13

def word64_1_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551336#64)))

def word64_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_213

def word64_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_212 word64_1_214

def word64_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_215 word64_1_7

def word64_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_216 word64_1_9

def word64_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_217 word64_1_13

def word64_1_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551328#64)))

def word64_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_219

def word64_1_221 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_218 word64_1_220

def word64_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_221 word64_1_7

def word64_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_222 word64_1_9

def word64_1_224 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_223 word64_1_13

def word64_1_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551320#64)))

def word64_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_225

def word64_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_224 word64_1_226

def word64_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_227 word64_1_7

def word64_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_228 word64_1_9

def word64_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_229 word64_1_13

def word64_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551312#64)))

def word64_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_231

def word64_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_230 word64_1_232

def word64_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_233 word64_1_7

def word64_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_234 word64_1_9

def word64_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_235 word64_1_13

def word64_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551304#64)))

def word64_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_237

def word64_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_236 word64_1_238

def word64_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_239 word64_1_7

def word64_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_240 word64_1_9

def word64_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_241 word64_1_13

def word64_1_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551296#64)))

def word64_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_243

def word64_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_242 word64_1_244

def word64_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_245 word64_1_7

def word64_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_246 word64_1_9

def word64_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_247 word64_1_13

def word64_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551288#64)))

def word64_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_249

def word64_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_248 word64_1_250

def word64_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_251 word64_1_7

def word64_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_252 word64_1_9

def word64_1_254 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_253 word64_1_13

def word64_1_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551280#64)))

def word64_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_255

def word64_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_254 word64_1_256

def word64_1_258 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_257 word64_1_7

def word64_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_258 word64_1_9

def word64_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_259 word64_1_13

def word64_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551272#64)))

def word64_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_261

def word64_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_260 word64_1_262

def word64_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_263 word64_1_7

def word64_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_264 word64_1_9

def word64_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_265 word64_1_13

def word64_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551264#64)))

def word64_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_267

def word64_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_266 word64_1_268

def word64_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_269 word64_1_7

def word64_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_270 word64_1_9

def word64_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_271 word64_1_13

def word64_1_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551256#64)))

def word64_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_273

def word64_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_272 word64_1_274

def word64_1_276 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_275 word64_1_7

def word64_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_276 word64_1_9

def word64_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_277 word64_1_13

def word64_1_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551248#64)))

def word64_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_279

def word64_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_278 word64_1_280

def word64_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_281 word64_1_7

def word64_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_282 word64_1_9

def word64_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_283 word64_1_13

def word64_1_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551240#64)))

def word64_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_285

def word64_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_284 word64_1_286

def word64_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_287 word64_1_7

def word64_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_288 word64_1_9

def word64_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_289 word64_1_13

def word64_1_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551232#64)))

def word64_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_291

def word64_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_290 word64_1_292

def word64_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_293 word64_1_7

def word64_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_294 word64_1_9

def word64_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_295 word64_1_13

def word64_1_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551224#64)))

def word64_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_297

def word64_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_296 word64_1_298

def word64_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_299 word64_1_7

def word64_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_300 word64_1_9

def word64_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_301 word64_1_13

def word64_1_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551216#64)))

def word64_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_303

def word64_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_302 word64_1_304

def word64_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_305 word64_1_7

def word64_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_306 word64_1_9

def word64_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_307 word64_1_13

def word64_1_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551208#64)))

def word64_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_309

def word64_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_308 word64_1_310

def word64_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_311 word64_1_7

def word64_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_312 word64_1_9

def word64_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_313 word64_1_13

def word64_1_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551200#64)))

def word64_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_315

def word64_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_314 word64_1_316

def word64_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_317 word64_1_7

def word64_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_318 word64_1_9

def word64_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_319 word64_1_13

def word64_1_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551192#64)))

def word64_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_321

def word64_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_320 word64_1_322

def word64_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_323 word64_1_7

def word64_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_324 word64_1_9

def word64_1_326 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_325 word64_1_13

def word64_1_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551184#64)))

def word64_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_327

def word64_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_326 word64_1_328

def word64_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_329 word64_1_7

def word64_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_330 word64_1_9

def word64_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_331 word64_1_13

def word64_1_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551176#64)))

def word64_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_333

def word64_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_332 word64_1_334

def word64_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_335 word64_1_7

def word64_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_336 word64_1_9

def word64_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_337 word64_1_13

def word64_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551168#64)))

def word64_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_339

def word64_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_338 word64_1_340

def word64_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_341 word64_1_7

def word64_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_342 word64_1_9

def word64_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_343 word64_1_13

def word64_1_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551160#64)))

def word64_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_345

def word64_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_344 word64_1_346

def word64_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_347 word64_1_7

def word64_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_348 word64_1_9

def word64_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_349 word64_1_13

def word64_1_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551152#64)))

def word64_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_351

def word64_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_350 word64_1_352

def word64_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_353 word64_1_7

def word64_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_354 word64_1_9

def word64_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_355 word64_1_13

def word64_1_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551144#64)))

def word64_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_357

def word64_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_356 word64_1_358

def word64_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_359 word64_1_7

def word64_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_360 word64_1_9

def word64_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_361 word64_1_13

def word64_1_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551136#64)))

def word64_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_363

def word64_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_362 word64_1_364

def word64_1_366 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_365 word64_1_7

def word64_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_366 word64_1_9

def word64_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_367 word64_1_13

def word64_1_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551128#64)))

def word64_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_369

def word64_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_368 word64_1_370

def word64_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_371 word64_1_7

def word64_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_372 word64_1_9

def word64_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_373 word64_1_13

def word64_1_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551120#64)))

def word64_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_375

def word64_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_374 word64_1_376

def word64_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_377 word64_1_7

def word64_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_378 word64_1_9

def word64_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_379 word64_1_13

def word64_1_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551112#64)))

def word64_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_381

def word64_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_380 word64_1_382

def word64_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_383 word64_1_7

def word64_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_384 word64_1_9

def word64_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_385 word64_1_13

def word64_1_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551104#64)))

def word64_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_387

def word64_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_386 word64_1_388

def word64_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_389 word64_1_7

def word64_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_390 word64_1_9

def word64_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_391 word64_1_13

def word64_1_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551096#64)))

def word64_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_393

def word64_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_392 word64_1_394

def word64_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_395 word64_1_7

def word64_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_396 word64_1_9

def word64_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_397 word64_1_13

def word64_1_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551088#64)))

def word64_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_399

def word64_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_398 word64_1_400

def word64_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_401 word64_1_7

def word64_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_402 word64_1_9

def word64_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_403 word64_1_13

def word64_1_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 7 (Flapjack.WordRegImm.imm 18446744073709551080#64)))

def word64_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_4 word64_1_405

def word64_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_404 word64_1_406

def word64_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_407 word64_1_7

def word64_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_408 word64_1_9

def word64_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_409 word64_1_13

def word64_1_411 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 65) ([0]) (none)

def word64_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word64_1_410 word64_1_411

def pass64_1 : WordLangProgHOL (BitVec 64) :=
word64_1_412
theorem pass64_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass64_0) + 1) (pass64_0) = pass64_1 := by
  kernel_rfl
#print axioms pass64_1_eq
end InitECandidate.Proofs.WordStages
