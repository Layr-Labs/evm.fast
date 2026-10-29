import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function835
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody835_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody835_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody835_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody835_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody835_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody835_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody835_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody835_7 : StackLang.HolProg 64 :=
.seq rawBody835_5 rawBody835_6

def rawBody835_8 : StackLang.HolProg 64 :=
.seq rawBody835_4 rawBody835_7

def rawBody835_9 : StackLang.HolProg 64 :=
.seq rawBody835_3 rawBody835_8

def rawBody835_10 : StackLang.HolProg 64 :=
.seq rawBody835_2 rawBody835_9

def rawBody835_11 : StackLang.HolProg 64 :=
.seq rawBody835_1 rawBody835_10

def rawBody835_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4156#64)

def rawBody835_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody835_15 : StackLang.HolProg 64 :=
.seq rawBody835_13 rawBody835_14

def rawBody835_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody835_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody835_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody835_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 3

def rawBody835_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody835_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody835_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody835_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody835_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody835_26 : StackLang.HolProg 64 :=
.seq rawBody835_24 rawBody835_25

def rawBody835_27 : StackLang.HolProg 64 :=
.seq rawBody835_23 rawBody835_26

def rawBody835_28 : StackLang.HolProg 64 :=
.seq rawBody835_22 rawBody835_27

def rawBody835_29 : StackLang.HolProg 64 :=
.seq rawBody835_21 rawBody835_28

def rawBody835_30 : StackLang.HolProg 64 :=
.seq rawBody835_20 rawBody835_29

def rawBody835_31 : StackLang.HolProg 64 :=
.seq rawBody835_19 rawBody835_30

def rawBody835_32 : StackLang.HolProg 64 :=
.seq rawBody835_18 rawBody835_31

def rawBody835_33 : StackLang.HolProg 64 :=
.seq rawBody835_17 rawBody835_32

def rawBody835_34 : StackLang.HolProg 64 :=
.seq rawBody835_16 rawBody835_33

def rawBody835_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody835_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody835_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody835_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody835_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody835_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody835_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody835_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody835_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody835_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody835_47 : StackLang.HolProg 64 :=
.seq rawBody835_45 rawBody835_46

def rawBody835_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody835_49 : StackLang.HolProg 64 :=
.seq rawBody835_47 rawBody835_48

def rawBody835_50 : StackLang.HolProg 64 :=
.seq rawBody835_44 rawBody835_49

def rawBody835_51 : StackLang.HolProg 64 :=
.seq rawBody835_43 rawBody835_50

def rawBody835_52 : StackLang.HolProg 64 :=
.seq rawBody835_42 rawBody835_51

def rawBody835_53 : StackLang.HolProg 64 :=
.seq rawBody835_41 rawBody835_52

def rawBody835_54 : StackLang.HolProg 64 :=
.seq rawBody835_40 rawBody835_53

def rawBody835_55 : StackLang.HolProg 64 :=
.seq rawBody835_39 rawBody835_54

def rawBody835_56 : StackLang.HolProg 64 :=
.seq rawBody835_38 rawBody835_55

def rawBody835_57 : StackLang.HolProg 64 :=
.seq rawBody835_37 rawBody835_56

def rawBody835_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody835_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody835_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody835_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody835_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody835_63 : StackLang.HolProg 64 :=
.seq rawBody835_61 rawBody835_62

def rawBody835_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody835_65 : StackLang.HolProg 64 :=
.seq rawBody835_63 rawBody835_64

def rawBody835_66 : StackLang.HolProg 64 :=
.seq rawBody835_60 rawBody835_65

def rawBody835_67 : StackLang.HolProg 64 :=
.seq rawBody835_59 rawBody835_66

def rawBody835_68 : StackLang.HolProg 64 :=
.seq rawBody835_58 rawBody835_67

def rawBody835_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody835_70 : StackLang.HolProg 64 :=
.seq rawBody835_68 rawBody835_69

def rawBody835_71 : StackLang.HolProg 64 :=
.call (some (rawBody835_57, 0, 835, 2)) (Sum.inl 93) (some (rawBody835_70, 835, 3))

def rawBody835_72 : StackLang.HolProg 64 :=
.seq rawBody835_36 rawBody835_71

def rawBody835_73 : StackLang.HolProg 64 :=
.seq rawBody835_35 rawBody835_72

def rawBody835_74 : StackLang.HolProg 64 :=
.seq rawBody835_34 rawBody835_73

def rawBody835_75 : StackLang.HolProg 64 :=
.seq rawBody835_15 rawBody835_74

def rawBody835_76 : StackLang.HolProg 64 :=
.seq rawBody835_12 rawBody835_75

def rawBody835_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody835_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody835_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody835_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody835_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody835_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody835_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody835_90 : StackLang.HolProg 64 :=
.seq rawBody835_88 rawBody835_89

def rawBody835_91 : StackLang.HolProg 64 :=
.seq rawBody835_87 rawBody835_90

def rawBody835_92 : StackLang.HolProg 64 :=
.seq rawBody835_86 rawBody835_91

def rawBody835_93 : StackLang.HolProg 64 :=
.seq rawBody835_85 rawBody835_92

def rawBody835_94 : StackLang.HolProg 64 :=
.seq rawBody835_84 rawBody835_93

def rawBody835_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody835_97 : StackLang.HolProg 64 :=
.seq rawBody835_95 rawBody835_96

def rawBody835_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody835_94 rawBody835_97

def rawBody835_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody835_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody835_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody835_103 : StackLang.HolProg 64 :=
.seq rawBody835_101 rawBody835_102

def rawBody835_104 : StackLang.HolProg 64 :=
.seq rawBody835_100 rawBody835_103

def rawBody835_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4157#64)

def rawBody835_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody835_108 : StackLang.HolProg 64 :=
.seq rawBody835_106 rawBody835_107

def rawBody835_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody835_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody835_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody835_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 5

def rawBody835_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody835_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody835_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody835_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody835_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody835_119 : StackLang.HolProg 64 :=
.seq rawBody835_117 rawBody835_118

def rawBody835_120 : StackLang.HolProg 64 :=
.seq rawBody835_116 rawBody835_119

def rawBody835_121 : StackLang.HolProg 64 :=
.seq rawBody835_115 rawBody835_120

def rawBody835_122 : StackLang.HolProg 64 :=
.seq rawBody835_114 rawBody835_121

def rawBody835_123 : StackLang.HolProg 64 :=
.seq rawBody835_113 rawBody835_122

def rawBody835_124 : StackLang.HolProg 64 :=
.seq rawBody835_112 rawBody835_123

def rawBody835_125 : StackLang.HolProg 64 :=
.seq rawBody835_111 rawBody835_124

def rawBody835_126 : StackLang.HolProg 64 :=
.seq rawBody835_110 rawBody835_125

def rawBody835_127 : StackLang.HolProg 64 :=
.seq rawBody835_109 rawBody835_126

def rawBody835_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody835_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody835_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody835_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody835_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody835_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody835_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody835_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody835_138 : StackLang.HolProg 64 :=
.seq rawBody835_136 rawBody835_137

def rawBody835_139 : StackLang.HolProg 64 :=
.seq rawBody835_135 rawBody835_138

def rawBody835_140 : StackLang.HolProg 64 :=
.seq rawBody835_134 rawBody835_139

def rawBody835_141 : StackLang.HolProg 64 :=
.seq rawBody835_133 rawBody835_140

def rawBody835_142 : StackLang.HolProg 64 :=
.seq rawBody835_132 rawBody835_141

def rawBody835_143 : StackLang.HolProg 64 :=
.seq rawBody835_131 rawBody835_142

def rawBody835_144 : StackLang.HolProg 64 :=
.seq rawBody835_130 rawBody835_143

def rawBody835_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody835_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody835_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody835_148 : StackLang.HolProg 64 :=
.seq rawBody835_146 rawBody835_147

def rawBody835_149 : StackLang.HolProg 64 :=
.seq rawBody835_145 rawBody835_148

def rawBody835_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody835_151 : StackLang.HolProg 64 :=
.seq rawBody835_149 rawBody835_150

def rawBody835_152 : StackLang.HolProg 64 :=
.call (some (rawBody835_144, 0, 835, 4)) (Sum.inl 138) (some (rawBody835_151, 835, 5))

def rawBody835_153 : StackLang.HolProg 64 :=
.seq rawBody835_129 rawBody835_152

def rawBody835_154 : StackLang.HolProg 64 :=
.seq rawBody835_128 rawBody835_153

def rawBody835_155 : StackLang.HolProg 64 :=
.seq rawBody835_127 rawBody835_154

def rawBody835_156 : StackLang.HolProg 64 :=
.seq rawBody835_108 rawBody835_155

def rawBody835_157 : StackLang.HolProg 64 :=
.seq rawBody835_105 rawBody835_156

def rawBody835_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody835_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody835_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_165 : StackLang.HolProg 64 :=
.seq rawBody835_163 rawBody835_164

def rawBody835_166 : StackLang.HolProg 64 :=
.seq rawBody835_162 rawBody835_165

def rawBody835_167 : StackLang.HolProg 64 :=
.seq rawBody835_161 rawBody835_166

def rawBody835_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_170 : StackLang.HolProg 64 :=
.seq rawBody835_168 rawBody835_169

def rawBody835_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody835_167 rawBody835_170

def rawBody835_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody835_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_177 : StackLang.HolProg 64 :=
.seq rawBody835_175 rawBody835_176

def rawBody835_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def rawBody835_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody835_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody835_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_184 : StackLang.HolProg 64 :=
.seq rawBody835_182 rawBody835_183

def rawBody835_185 : StackLang.HolProg 64 :=
.seq rawBody835_181 rawBody835_184

def rawBody835_186 : StackLang.HolProg 64 :=
.seq rawBody835_180 rawBody835_185

def rawBody835_187 : StackLang.HolProg 64 :=
.seq rawBody835_179 rawBody835_186

def rawBody835_188 : StackLang.HolProg 64 :=
.seq rawBody835_178 rawBody835_187

def rawBody835_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody835_177 rawBody835_188

def rawBody835_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody835_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody835_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_196 : StackLang.HolProg 64 :=
.seq rawBody835_194 rawBody835_195

def rawBody835_197 : StackLang.HolProg 64 :=
.seq rawBody835_193 rawBody835_196

def rawBody835_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_200 : StackLang.HolProg 64 :=
.seq rawBody835_198 rawBody835_199

def rawBody835_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody835_197 rawBody835_200

def rawBody835_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody835_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 500#64)

def rawBody835_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 500#64)

def rawBody835_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_210 : StackLang.HolProg 64 :=
.seq rawBody835_208 rawBody835_209

def rawBody835_211 : StackLang.HolProg 64 :=
.seq rawBody835_207 rawBody835_210

def rawBody835_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody835_214 : StackLang.HolProg 64 :=
.seq rawBody835_212 rawBody835_213

def rawBody835_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody835_211 rawBody835_214

def rawBody835_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody835_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody835_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody835_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody835_220 : StackLang.HolProg 64 :=
.seq rawBody835_218 rawBody835_219

def rawBody835_221 : StackLang.HolProg 64 :=
.seq rawBody835_217 rawBody835_220

def rawBody835_222 : StackLang.HolProg 64 :=
.seq rawBody835_216 rawBody835_221

def rawBody835_223 : StackLang.HolProg 64 :=
.seq rawBody835_215 rawBody835_222

def rawBody835_224 : StackLang.HolProg 64 :=
.seq rawBody835_206 rawBody835_223

def rawBody835_225 : StackLang.HolProg 64 :=
.seq rawBody835_205 rawBody835_224

def rawBody835_226 : StackLang.HolProg 64 :=
.seq rawBody835_204 rawBody835_225

def rawBody835_227 : StackLang.HolProg 64 :=
.seq rawBody835_203 rawBody835_226

def rawBody835_228 : StackLang.HolProg 64 :=
.seq rawBody835_202 rawBody835_227

def rawBody835_229 : StackLang.HolProg 64 :=
.seq rawBody835_201 rawBody835_228

def rawBody835_230 : StackLang.HolProg 64 :=
.seq rawBody835_192 rawBody835_229

def rawBody835_231 : StackLang.HolProg 64 :=
.seq rawBody835_191 rawBody835_230

def rawBody835_232 : StackLang.HolProg 64 :=
.seq rawBody835_190 rawBody835_231

def rawBody835_233 : StackLang.HolProg 64 :=
.seq rawBody835_189 rawBody835_232

def rawBody835_234 : StackLang.HolProg 64 :=
.seq rawBody835_174 rawBody835_233

def rawBody835_235 : StackLang.HolProg 64 :=
.seq rawBody835_173 rawBody835_234

def rawBody835_236 : StackLang.HolProg 64 :=
.seq rawBody835_172 rawBody835_235

def rawBody835_237 : StackLang.HolProg 64 :=
.seq rawBody835_171 rawBody835_236

def rawBody835_238 : StackLang.HolProg 64 :=
.seq rawBody835_160 rawBody835_237

def rawBody835_239 : StackLang.HolProg 64 :=
.seq rawBody835_159 rawBody835_238

def rawBody835_240 : StackLang.HolProg 64 :=
.seq rawBody835_158 rawBody835_239

def rawBody835_241 : StackLang.HolProg 64 :=
.seq rawBody835_157 rawBody835_240

def rawBody835_242 : StackLang.HolProg 64 :=
.seq rawBody835_104 rawBody835_241

def rawBody835_243 : StackLang.HolProg 64 :=
.seq rawBody835_99 rawBody835_242

def rawBody835_244 : StackLang.HolProg 64 :=
.seq rawBody835_98 rawBody835_243

def rawBody835_245 : StackLang.HolProg 64 :=
.seq rawBody835_83 rawBody835_244

def rawBody835_246 : StackLang.HolProg 64 :=
.seq rawBody835_82 rawBody835_245

def rawBody835_247 : StackLang.HolProg 64 :=
.seq rawBody835_81 rawBody835_246

def rawBody835_248 : StackLang.HolProg 64 :=
.seq rawBody835_80 rawBody835_247

def rawBody835_249 : StackLang.HolProg 64 :=
.seq rawBody835_79 rawBody835_248

def rawBody835_250 : StackLang.HolProg 64 :=
.seq rawBody835_78 rawBody835_249

def rawBody835_251 : StackLang.HolProg 64 :=
.seq rawBody835_77 rawBody835_250

def rawBody835_252 : StackLang.HolProg 64 :=
.seq rawBody835_76 rawBody835_251

def rawBody835_253 : StackLang.HolProg 64 :=
.seq rawBody835_11 rawBody835_252

def rawBody835_254 : StackLang.HolProg 64 :=
.seq rawBody835_0 rawBody835_253

def raw835 : StackLang.HolProg 64 := rawBody835_254
theorem raw835_eq : StackRawCall.compTop RawInfo.rawInfo (function835 (.list [])).1 = raw835 := by
  kernel_rfl
#print axioms raw835_eq
end InitECandidate.Proofs.BackendStages
