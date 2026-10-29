import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function364
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody364_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody364_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody364_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody364_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody364_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody364_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody364_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody364_9 : StackLang.HolProg 64 :=
.seq rawBody364_7 rawBody364_8

def rawBody364_10 : StackLang.HolProg 64 :=
.seq rawBody364_6 rawBody364_9

def rawBody364_11 : StackLang.HolProg 64 :=
.seq rawBody364_5 rawBody364_10

def rawBody364_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def rawBody364_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody364_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody364_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody364_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody364_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody364_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody364_23 : StackLang.HolProg 64 :=
.seq rawBody364_21 rawBody364_22

def rawBody364_24 : StackLang.HolProg 64 :=
.seq rawBody364_20 rawBody364_23

def rawBody364_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1049#64)

def rawBody364_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody364_28 : StackLang.HolProg 64 :=
.seq rawBody364_26 rawBody364_27

def rawBody364_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody364_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody364_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody364_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 3

def rawBody364_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody364_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody364_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody364_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody364_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody364_39 : StackLang.HolProg 64 :=
.seq rawBody364_37 rawBody364_38

def rawBody364_40 : StackLang.HolProg 64 :=
.seq rawBody364_36 rawBody364_39

def rawBody364_41 : StackLang.HolProg 64 :=
.seq rawBody364_35 rawBody364_40

def rawBody364_42 : StackLang.HolProg 64 :=
.seq rawBody364_34 rawBody364_41

def rawBody364_43 : StackLang.HolProg 64 :=
.seq rawBody364_33 rawBody364_42

def rawBody364_44 : StackLang.HolProg 64 :=
.seq rawBody364_32 rawBody364_43

def rawBody364_45 : StackLang.HolProg 64 :=
.seq rawBody364_31 rawBody364_44

def rawBody364_46 : StackLang.HolProg 64 :=
.seq rawBody364_30 rawBody364_45

def rawBody364_47 : StackLang.HolProg 64 :=
.seq rawBody364_29 rawBody364_46

def rawBody364_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody364_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody364_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody364_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody364_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody364_55 : StackLang.HolProg 64 :=
.seq rawBody364_53 rawBody364_54

def rawBody364_56 : StackLang.HolProg 64 :=
.seq rawBody364_52 rawBody364_55

def rawBody364_57 : StackLang.HolProg 64 :=
.seq rawBody364_51 rawBody364_56

def rawBody364_58 : StackLang.HolProg 64 :=
.seq rawBody364_50 rawBody364_57

def rawBody364_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody364_61 : StackLang.HolProg 64 :=
.seq rawBody364_59 rawBody364_60

def rawBody364_62 : StackLang.HolProg 64 :=
.call (some (rawBody364_58, 0, 364, 2)) (Sum.inl 363) (some (rawBody364_61, 364, 3))

def rawBody364_63 : StackLang.HolProg 64 :=
.seq rawBody364_49 rawBody364_62

def rawBody364_64 : StackLang.HolProg 64 :=
.seq rawBody364_48 rawBody364_63

def rawBody364_65 : StackLang.HolProg 64 :=
.seq rawBody364_47 rawBody364_64

def rawBody364_66 : StackLang.HolProg 64 :=
.seq rawBody364_28 rawBody364_65

def rawBody364_67 : StackLang.HolProg 64 :=
.seq rawBody364_25 rawBody364_66

def rawBody364_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody364_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody364_71 : StackLang.HolProg 64 :=
.seq rawBody364_69 rawBody364_70

def rawBody364_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1050#64)

def rawBody364_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody364_75 : StackLang.HolProg 64 :=
.seq rawBody364_73 rawBody364_74

def rawBody364_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody364_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody364_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody364_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 5

def rawBody364_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody364_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody364_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody364_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody364_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody364_86 : StackLang.HolProg 64 :=
.seq rawBody364_84 rawBody364_85

def rawBody364_87 : StackLang.HolProg 64 :=
.seq rawBody364_83 rawBody364_86

def rawBody364_88 : StackLang.HolProg 64 :=
.seq rawBody364_82 rawBody364_87

def rawBody364_89 : StackLang.HolProg 64 :=
.seq rawBody364_81 rawBody364_88

def rawBody364_90 : StackLang.HolProg 64 :=
.seq rawBody364_80 rawBody364_89

def rawBody364_91 : StackLang.HolProg 64 :=
.seq rawBody364_79 rawBody364_90

def rawBody364_92 : StackLang.HolProg 64 :=
.seq rawBody364_78 rawBody364_91

def rawBody364_93 : StackLang.HolProg 64 :=
.seq rawBody364_77 rawBody364_92

def rawBody364_94 : StackLang.HolProg 64 :=
.seq rawBody364_76 rawBody364_93

def rawBody364_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody364_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody364_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody364_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody364_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody364_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody364_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody364_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody364_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody364_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody364_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody364_108 : StackLang.HolProg 64 :=
.seq rawBody364_106 rawBody364_107

def rawBody364_109 : StackLang.HolProg 64 :=
.seq rawBody364_105 rawBody364_108

def rawBody364_110 : StackLang.HolProg 64 :=
.seq rawBody364_104 rawBody364_109

def rawBody364_111 : StackLang.HolProg 64 :=
.seq rawBody364_103 rawBody364_110

def rawBody364_112 : StackLang.HolProg 64 :=
.seq rawBody364_102 rawBody364_111

def rawBody364_113 : StackLang.HolProg 64 :=
.seq rawBody364_101 rawBody364_112

def rawBody364_114 : StackLang.HolProg 64 :=
.seq rawBody364_100 rawBody364_113

def rawBody364_115 : StackLang.HolProg 64 :=
.seq rawBody364_99 rawBody364_114

def rawBody364_116 : StackLang.HolProg 64 :=
.seq rawBody364_98 rawBody364_115

def rawBody364_117 : StackLang.HolProg 64 :=
.seq rawBody364_97 rawBody364_116

def rawBody364_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody364_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody364_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody364_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody364_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody364_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody364_124 : StackLang.HolProg 64 :=
.seq rawBody364_122 rawBody364_123

def rawBody364_125 : StackLang.HolProg 64 :=
.seq rawBody364_121 rawBody364_124

def rawBody364_126 : StackLang.HolProg 64 :=
.seq rawBody364_120 rawBody364_125

def rawBody364_127 : StackLang.HolProg 64 :=
.seq rawBody364_119 rawBody364_126

def rawBody364_128 : StackLang.HolProg 64 :=
.seq rawBody364_118 rawBody364_127

def rawBody364_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody364_130 : StackLang.HolProg 64 :=
.seq rawBody364_128 rawBody364_129

def rawBody364_131 : StackLang.HolProg 64 :=
.call (some (rawBody364_117, 0, 364, 4)) (Sum.inl 180) (some (rawBody364_130, 364, 5))

def rawBody364_132 : StackLang.HolProg 64 :=
.seq rawBody364_96 rawBody364_131

def rawBody364_133 : StackLang.HolProg 64 :=
.seq rawBody364_95 rawBody364_132

def rawBody364_134 : StackLang.HolProg 64 :=
.seq rawBody364_94 rawBody364_133

def rawBody364_135 : StackLang.HolProg 64 :=
.seq rawBody364_75 rawBody364_134

def rawBody364_136 : StackLang.HolProg 64 :=
.seq rawBody364_72 rawBody364_135

def rawBody364_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody364_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody364_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody364_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody364_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def rawBody364_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody364_146 : StackLang.HolProg 64 :=
.seq rawBody364_144 rawBody364_145

def rawBody364_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody364_148 : StackLang.HolProg 64 :=
.seq rawBody364_146 rawBody364_147

def rawBody364_149 : StackLang.HolProg 64 :=
.seq rawBody364_143 rawBody364_148

def rawBody364_150 : StackLang.HolProg 64 :=
.seq rawBody364_142 rawBody364_149

def rawBody364_151 : StackLang.HolProg 64 :=
.seq rawBody364_141 rawBody364_150

def rawBody364_152 : StackLang.HolProg 64 :=
.seq rawBody364_140 rawBody364_151

def rawBody364_153 : StackLang.HolProg 64 :=
.seq rawBody364_139 rawBody364_152

def rawBody364_154 : StackLang.HolProg 64 :=
.seq rawBody364_138 rawBody364_153

def rawBody364_155 : StackLang.HolProg 64 :=
.seq rawBody364_137 rawBody364_154

def rawBody364_156 : StackLang.HolProg 64 :=
.seq rawBody364_136 rawBody364_155

def rawBody364_157 : StackLang.HolProg 64 :=
.seq rawBody364_71 rawBody364_156

def rawBody364_158 : StackLang.HolProg 64 :=
.seq rawBody364_68 rawBody364_157

def rawBody364_159 : StackLang.HolProg 64 :=
.seq rawBody364_67 rawBody364_158

def rawBody364_160 : StackLang.HolProg 64 :=
.seq rawBody364_24 rawBody364_159

def rawBody364_161 : StackLang.HolProg 64 :=
.seq rawBody364_19 rawBody364_160

def rawBody364_162 : StackLang.HolProg 64 :=
.seq rawBody364_18 rawBody364_161

def rawBody364_163 : StackLang.HolProg 64 :=
.seq rawBody364_17 rawBody364_162

def rawBody364_164 : StackLang.HolProg 64 :=
.seq rawBody364_16 rawBody364_163

def rawBody364_165 : StackLang.HolProg 64 :=
.seq rawBody364_15 rawBody364_164

def rawBody364_166 : StackLang.HolProg 64 :=
.seq rawBody364_14 rawBody364_165

def rawBody364_167 : StackLang.HolProg 64 :=
.seq rawBody364_13 rawBody364_166

def rawBody364_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody364_170 : StackLang.HolProg 64 :=
.seq rawBody364_168 rawBody364_169

def rawBody364_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody364_167 rawBody364_170

def rawBody364_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody364_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody364_175 : StackLang.HolProg 64 :=
.seq rawBody364_173 rawBody364_174

def rawBody364_176 : StackLang.HolProg 64 :=
.seq rawBody364_172 rawBody364_175

def rawBody364_177 : StackLang.HolProg 64 :=
.seq rawBody364_171 rawBody364_176

def rawBody364_178 : StackLang.HolProg 64 :=
.seq rawBody364_12 rawBody364_177

def rawBody364_179 : StackLang.HolProg 64 :=
.loop rawBody364_178

def rawBody364_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody364_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def rawBody364_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody364_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody364_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody364_185 : StackLang.HolProg 64 :=
.seq rawBody364_183 rawBody364_184

def rawBody364_186 : StackLang.HolProg 64 :=
.seq rawBody364_182 rawBody364_185

def rawBody364_187 : StackLang.HolProg 64 :=
.seq rawBody364_181 rawBody364_186

def rawBody364_188 : StackLang.HolProg 64 :=
.seq rawBody364_180 rawBody364_187

def rawBody364_189 : StackLang.HolProg 64 :=
.seq rawBody364_179 rawBody364_188

def rawBody364_190 : StackLang.HolProg 64 :=
.seq rawBody364_11 rawBody364_189

def rawBody364_191 : StackLang.HolProg 64 :=
.seq rawBody364_4 rawBody364_190

def rawBody364_192 : StackLang.HolProg 64 :=
.seq rawBody364_3 rawBody364_191

def rawBody364_193 : StackLang.HolProg 64 :=
.seq rawBody364_2 rawBody364_192

def rawBody364_194 : StackLang.HolProg 64 :=
.seq rawBody364_1 rawBody364_193

def rawBody364_195 : StackLang.HolProg 64 :=
.seq rawBody364_0 rawBody364_194

def raw364 : StackLang.HolProg 64 := rawBody364_195
theorem raw364_eq : StackRawCall.compTop RawInfo.rawInfo (function364 (.list [])).1 = raw364 := by
  kernel_rfl
#print axioms raw364_eq
end InitECandidate.Proofs.BackendStages
