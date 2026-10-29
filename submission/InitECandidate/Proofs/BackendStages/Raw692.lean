import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function692
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody692_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody692_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody692_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody692_3 : StackLang.HolProg 64 :=
.seq rawBody692_1 rawBody692_2

def rawBody692_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def rawBody692_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody692_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody692_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody692_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody692_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody692_10 : StackLang.HolProg 64 :=
.seq rawBody692_8 rawBody692_9

def rawBody692_11 : StackLang.HolProg 64 :=
.seq rawBody692_7 rawBody692_10

def rawBody692_12 : StackLang.HolProg 64 :=
.seq rawBody692_6 rawBody692_11

def rawBody692_13 : StackLang.HolProg 64 :=
.seq rawBody692_5 rawBody692_12

def rawBody692_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2969#64)

def rawBody692_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_17 : StackLang.HolProg 64 :=
.seq rawBody692_15 rawBody692_16

def rawBody692_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody692_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody692_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 3

def rawBody692_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody692_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody692_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody692_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody692_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_28 : StackLang.HolProg 64 :=
.seq rawBody692_26 rawBody692_27

def rawBody692_29 : StackLang.HolProg 64 :=
.seq rawBody692_25 rawBody692_28

def rawBody692_30 : StackLang.HolProg 64 :=
.seq rawBody692_24 rawBody692_29

def rawBody692_31 : StackLang.HolProg 64 :=
.seq rawBody692_23 rawBody692_30

def rawBody692_32 : StackLang.HolProg 64 :=
.seq rawBody692_22 rawBody692_31

def rawBody692_33 : StackLang.HolProg 64 :=
.seq rawBody692_21 rawBody692_32

def rawBody692_34 : StackLang.HolProg 64 :=
.seq rawBody692_20 rawBody692_33

def rawBody692_35 : StackLang.HolProg 64 :=
.seq rawBody692_19 rawBody692_34

def rawBody692_36 : StackLang.HolProg 64 :=
.seq rawBody692_18 rawBody692_35

def rawBody692_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody692_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody692_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody692_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody692_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody692_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody692_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody692_47 : StackLang.HolProg 64 :=
.seq rawBody692_45 rawBody692_46

def rawBody692_48 : StackLang.HolProg 64 :=
.seq rawBody692_44 rawBody692_47

def rawBody692_49 : StackLang.HolProg 64 :=
.seq rawBody692_43 rawBody692_48

def rawBody692_50 : StackLang.HolProg 64 :=
.seq rawBody692_42 rawBody692_49

def rawBody692_51 : StackLang.HolProg 64 :=
.seq rawBody692_41 rawBody692_50

def rawBody692_52 : StackLang.HolProg 64 :=
.seq rawBody692_40 rawBody692_51

def rawBody692_53 : StackLang.HolProg 64 :=
.seq rawBody692_39 rawBody692_52

def rawBody692_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody692_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody692_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody692_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody692_58 : StackLang.HolProg 64 :=
.seq rawBody692_56 rawBody692_57

def rawBody692_59 : StackLang.HolProg 64 :=
.seq rawBody692_55 rawBody692_58

def rawBody692_60 : StackLang.HolProg 64 :=
.seq rawBody692_54 rawBody692_59

def rawBody692_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody692_62 : StackLang.HolProg 64 :=
.seq rawBody692_60 rawBody692_61

def rawBody692_63 : StackLang.HolProg 64 :=
.call (some (rawBody692_53, 0, 692, 2)) (Sum.inl 679) (some (rawBody692_62, 692, 3))

def rawBody692_64 : StackLang.HolProg 64 :=
.seq rawBody692_38 rawBody692_63

def rawBody692_65 : StackLang.HolProg 64 :=
.seq rawBody692_37 rawBody692_64

def rawBody692_66 : StackLang.HolProg 64 :=
.seq rawBody692_36 rawBody692_65

def rawBody692_67 : StackLang.HolProg 64 :=
.seq rawBody692_17 rawBody692_66

def rawBody692_68 : StackLang.HolProg 64 :=
.seq rawBody692_14 rawBody692_67

def rawBody692_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody692_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody692_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody692_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody692_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody692_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody692_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody692_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody692_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody692_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody692_86 : StackLang.HolProg 64 :=
.seq rawBody692_84 rawBody692_85

def rawBody692_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody692_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody692_89 : StackLang.HolProg 64 :=
.seq rawBody692_87 rawBody692_88

def rawBody692_90 : StackLang.HolProg 64 :=
.seq rawBody692_86 rawBody692_89

def rawBody692_91 : StackLang.HolProg 64 :=
.seq rawBody692_83 rawBody692_90

def rawBody692_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2970#64)

def rawBody692_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_95 : StackLang.HolProg 64 :=
.seq rawBody692_93 rawBody692_94

def rawBody692_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody692_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody692_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 5

def rawBody692_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody692_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody692_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody692_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody692_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_106 : StackLang.HolProg 64 :=
.seq rawBody692_104 rawBody692_105

def rawBody692_107 : StackLang.HolProg 64 :=
.seq rawBody692_103 rawBody692_106

def rawBody692_108 : StackLang.HolProg 64 :=
.seq rawBody692_102 rawBody692_107

def rawBody692_109 : StackLang.HolProg 64 :=
.seq rawBody692_101 rawBody692_108

def rawBody692_110 : StackLang.HolProg 64 :=
.seq rawBody692_100 rawBody692_109

def rawBody692_111 : StackLang.HolProg 64 :=
.seq rawBody692_99 rawBody692_110

def rawBody692_112 : StackLang.HolProg 64 :=
.seq rawBody692_98 rawBody692_111

def rawBody692_113 : StackLang.HolProg 64 :=
.seq rawBody692_97 rawBody692_112

def rawBody692_114 : StackLang.HolProg 64 :=
.seq rawBody692_96 rawBody692_113

def rawBody692_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody692_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody692_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody692_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody692_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody692_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody692_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody692_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody692_126 : StackLang.HolProg 64 :=
.seq rawBody692_124 rawBody692_125

def rawBody692_127 : StackLang.HolProg 64 :=
.seq rawBody692_123 rawBody692_126

def rawBody692_128 : StackLang.HolProg 64 :=
.seq rawBody692_122 rawBody692_127

def rawBody692_129 : StackLang.HolProg 64 :=
.seq rawBody692_121 rawBody692_128

def rawBody692_130 : StackLang.HolProg 64 :=
.seq rawBody692_120 rawBody692_129

def rawBody692_131 : StackLang.HolProg 64 :=
.seq rawBody692_119 rawBody692_130

def rawBody692_132 : StackLang.HolProg 64 :=
.seq rawBody692_118 rawBody692_131

def rawBody692_133 : StackLang.HolProg 64 :=
.seq rawBody692_117 rawBody692_132

def rawBody692_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody692_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody692_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody692_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody692_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody692_139 : StackLang.HolProg 64 :=
.seq rawBody692_137 rawBody692_138

def rawBody692_140 : StackLang.HolProg 64 :=
.seq rawBody692_136 rawBody692_139

def rawBody692_141 : StackLang.HolProg 64 :=
.seq rawBody692_135 rawBody692_140

def rawBody692_142 : StackLang.HolProg 64 :=
.seq rawBody692_134 rawBody692_141

def rawBody692_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody692_144 : StackLang.HolProg 64 :=
.seq rawBody692_142 rawBody692_143

def rawBody692_145 : StackLang.HolProg 64 :=
.call (some (rawBody692_133, 0, 692, 4)) (Sum.inl 669) (some (rawBody692_144, 692, 5))

def rawBody692_146 : StackLang.HolProg 64 :=
.seq rawBody692_116 rawBody692_145

def rawBody692_147 : StackLang.HolProg 64 :=
.seq rawBody692_115 rawBody692_146

def rawBody692_148 : StackLang.HolProg 64 :=
.seq rawBody692_114 rawBody692_147

def rawBody692_149 : StackLang.HolProg 64 :=
.seq rawBody692_95 rawBody692_148

def rawBody692_150 : StackLang.HolProg 64 :=
.seq rawBody692_92 rawBody692_149

def rawBody692_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_153 : StackLang.HolProg 64 :=
.seq rawBody692_151 rawBody692_152

def rawBody692_154 : StackLang.HolProg 64 :=
.seq rawBody692_150 rawBody692_153

def rawBody692_155 : StackLang.HolProg 64 :=
.seq rawBody692_91 rawBody692_154

def rawBody692_156 : StackLang.HolProg 64 :=
.seq rawBody692_82 rawBody692_155

def rawBody692_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody692_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody692_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody692_161 : StackLang.HolProg 64 :=
.seq rawBody692_159 rawBody692_160

def rawBody692_162 : StackLang.HolProg 64 :=
.seq rawBody692_158 rawBody692_161

def rawBody692_163 : StackLang.HolProg 64 :=
.seq rawBody692_157 rawBody692_162

def rawBody692_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody692_156 rawBody692_163

def rawBody692_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody692_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody692_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody692_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody692_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody692_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody692_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody692_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody692_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody692_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody692_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody692_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody692_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody692_185 : StackLang.HolProg 64 :=
.seq rawBody692_183 rawBody692_184

def rawBody692_186 : StackLang.HolProg 64 :=
.seq rawBody692_182 rawBody692_185

def rawBody692_187 : StackLang.HolProg 64 :=
.seq rawBody692_181 rawBody692_186

def rawBody692_188 : StackLang.HolProg 64 :=
.seq rawBody692_180 rawBody692_187

def rawBody692_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2971#64)

def rawBody692_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_192 : StackLang.HolProg 64 :=
.seq rawBody692_190 rawBody692_191

def rawBody692_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody692_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody692_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody692_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 7

def rawBody692_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody692_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody692_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody692_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody692_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_203 : StackLang.HolProg 64 :=
.seq rawBody692_201 rawBody692_202

def rawBody692_204 : StackLang.HolProg 64 :=
.seq rawBody692_200 rawBody692_203

def rawBody692_205 : StackLang.HolProg 64 :=
.seq rawBody692_199 rawBody692_204

def rawBody692_206 : StackLang.HolProg 64 :=
.seq rawBody692_198 rawBody692_205

def rawBody692_207 : StackLang.HolProg 64 :=
.seq rawBody692_197 rawBody692_206

def rawBody692_208 : StackLang.HolProg 64 :=
.seq rawBody692_196 rawBody692_207

def rawBody692_209 : StackLang.HolProg 64 :=
.seq rawBody692_195 rawBody692_208

def rawBody692_210 : StackLang.HolProg 64 :=
.seq rawBody692_194 rawBody692_209

def rawBody692_211 : StackLang.HolProg 64 :=
.seq rawBody692_193 rawBody692_210

def rawBody692_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody692_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody692_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody692_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody692_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody692_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody692_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody692_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody692_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody692_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody692_224 : StackLang.HolProg 64 :=
.seq rawBody692_222 rawBody692_223

def rawBody692_225 : StackLang.HolProg 64 :=
.seq rawBody692_221 rawBody692_224

def rawBody692_226 : StackLang.HolProg 64 :=
.seq rawBody692_220 rawBody692_225

def rawBody692_227 : StackLang.HolProg 64 :=
.seq rawBody692_219 rawBody692_226

def rawBody692_228 : StackLang.HolProg 64 :=
.seq rawBody692_218 rawBody692_227

def rawBody692_229 : StackLang.HolProg 64 :=
.seq rawBody692_217 rawBody692_228

def rawBody692_230 : StackLang.HolProg 64 :=
.seq rawBody692_216 rawBody692_229

def rawBody692_231 : StackLang.HolProg 64 :=
.seq rawBody692_215 rawBody692_230

def rawBody692_232 : StackLang.HolProg 64 :=
.seq rawBody692_214 rawBody692_231

def rawBody692_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody692_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody692_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody692_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody692_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody692_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody692_239 : StackLang.HolProg 64 :=
.seq rawBody692_237 rawBody692_238

def rawBody692_240 : StackLang.HolProg 64 :=
.seq rawBody692_236 rawBody692_239

def rawBody692_241 : StackLang.HolProg 64 :=
.seq rawBody692_235 rawBody692_240

def rawBody692_242 : StackLang.HolProg 64 :=
.seq rawBody692_234 rawBody692_241

def rawBody692_243 : StackLang.HolProg 64 :=
.seq rawBody692_233 rawBody692_242

def rawBody692_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody692_245 : StackLang.HolProg 64 :=
.seq rawBody692_243 rawBody692_244

def rawBody692_246 : StackLang.HolProg 64 :=
.call (some (rawBody692_232, 0, 692, 6)) (Sum.inl 668) (some (rawBody692_245, 692, 7))

def rawBody692_247 : StackLang.HolProg 64 :=
.seq rawBody692_213 rawBody692_246

def rawBody692_248 : StackLang.HolProg 64 :=
.seq rawBody692_212 rawBody692_247

def rawBody692_249 : StackLang.HolProg 64 :=
.seq rawBody692_211 rawBody692_248

def rawBody692_250 : StackLang.HolProg 64 :=
.seq rawBody692_192 rawBody692_249

def rawBody692_251 : StackLang.HolProg 64 :=
.seq rawBody692_189 rawBody692_250

def rawBody692_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody692_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_255 : StackLang.HolProg 64 :=
.seq rawBody692_253 rawBody692_254

def rawBody692_256 : StackLang.HolProg 64 :=
.seq rawBody692_252 rawBody692_255

def rawBody692_257 : StackLang.HolProg 64 :=
.seq rawBody692_251 rawBody692_256

def rawBody692_258 : StackLang.HolProg 64 :=
.seq rawBody692_188 rawBody692_257

def rawBody692_259 : StackLang.HolProg 64 :=
.seq rawBody692_179 rawBody692_258

def rawBody692_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody692_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody692_263 : StackLang.HolProg 64 :=
.seq rawBody692_261 rawBody692_262

def rawBody692_264 : StackLang.HolProg 64 :=
.seq rawBody692_260 rawBody692_263

def rawBody692_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody692_259 rawBody692_264

def rawBody692_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody692_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def rawBody692_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody692_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody692_271 : StackLang.HolProg 64 :=
.seq rawBody692_269 rawBody692_270

def rawBody692_272 : StackLang.HolProg 64 :=
.seq rawBody692_268 rawBody692_271

def rawBody692_273 : StackLang.HolProg 64 :=
.seq rawBody692_267 rawBody692_272

def rawBody692_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody692_275 : StackLang.HolProg 64 :=
.seq rawBody692_273 rawBody692_274

def rawBody692_276 : StackLang.HolProg 64 :=
.seq rawBody692_266 rawBody692_275

def rawBody692_277 : StackLang.HolProg 64 :=
.seq rawBody692_265 rawBody692_276

def rawBody692_278 : StackLang.HolProg 64 :=
.seq rawBody692_178 rawBody692_277

def rawBody692_279 : StackLang.HolProg 64 :=
.seq rawBody692_177 rawBody692_278

def rawBody692_280 : StackLang.HolProg 64 :=
.seq rawBody692_176 rawBody692_279

def rawBody692_281 : StackLang.HolProg 64 :=
.seq rawBody692_175 rawBody692_280

def rawBody692_282 : StackLang.HolProg 64 :=
.seq rawBody692_174 rawBody692_281

def rawBody692_283 : StackLang.HolProg 64 :=
.seq rawBody692_173 rawBody692_282

def rawBody692_284 : StackLang.HolProg 64 :=
.seq rawBody692_172 rawBody692_283

def rawBody692_285 : StackLang.HolProg 64 :=
.seq rawBody692_171 rawBody692_284

def rawBody692_286 : StackLang.HolProg 64 :=
.seq rawBody692_170 rawBody692_285

def rawBody692_287 : StackLang.HolProg 64 :=
.seq rawBody692_169 rawBody692_286

def rawBody692_288 : StackLang.HolProg 64 :=
.seq rawBody692_168 rawBody692_287

def rawBody692_289 : StackLang.HolProg 64 :=
.seq rawBody692_167 rawBody692_288

def rawBody692_290 : StackLang.HolProg 64 :=
.seq rawBody692_166 rawBody692_289

def rawBody692_291 : StackLang.HolProg 64 :=
.seq rawBody692_165 rawBody692_290

def rawBody692_292 : StackLang.HolProg 64 :=
.seq rawBody692_164 rawBody692_291

def rawBody692_293 : StackLang.HolProg 64 :=
.seq rawBody692_81 rawBody692_292

def rawBody692_294 : StackLang.HolProg 64 :=
.seq rawBody692_80 rawBody692_293

def rawBody692_295 : StackLang.HolProg 64 :=
.seq rawBody692_79 rawBody692_294

def rawBody692_296 : StackLang.HolProg 64 :=
.seq rawBody692_78 rawBody692_295

def rawBody692_297 : StackLang.HolProg 64 :=
.seq rawBody692_77 rawBody692_296

def rawBody692_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody692_300 : StackLang.HolProg 64 :=
.seq rawBody692_298 rawBody692_299

def rawBody692_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody692_297 rawBody692_300

def rawBody692_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody692_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody692_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody692_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody692_307 : StackLang.HolProg 64 :=
.seq rawBody692_305 rawBody692_306

def rawBody692_308 : StackLang.HolProg 64 :=
.seq rawBody692_304 rawBody692_307

def rawBody692_309 : StackLang.HolProg 64 :=
.seq rawBody692_303 rawBody692_308

def rawBody692_310 : StackLang.HolProg 64 :=
.seq rawBody692_302 rawBody692_309

def rawBody692_311 : StackLang.HolProg 64 :=
.seq rawBody692_301 rawBody692_310

def rawBody692_312 : StackLang.HolProg 64 :=
.seq rawBody692_76 rawBody692_311

def rawBody692_313 : StackLang.HolProg 64 :=
.seq rawBody692_75 rawBody692_312

def rawBody692_314 : StackLang.HolProg 64 :=
.loop rawBody692_313

def rawBody692_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody692_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody692_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody692_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody692_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody692_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody692_321 : StackLang.HolProg 64 :=
.seq rawBody692_319 rawBody692_320

def rawBody692_322 : StackLang.HolProg 64 :=
.seq rawBody692_318 rawBody692_321

def rawBody692_323 : StackLang.HolProg 64 :=
.seq rawBody692_317 rawBody692_322

def rawBody692_324 : StackLang.HolProg 64 :=
.seq rawBody692_316 rawBody692_323

def rawBody692_325 : StackLang.HolProg 64 :=
.seq rawBody692_315 rawBody692_324

def rawBody692_326 : StackLang.HolProg 64 :=
.seq rawBody692_314 rawBody692_325

def rawBody692_327 : StackLang.HolProg 64 :=
.seq rawBody692_74 rawBody692_326

def rawBody692_328 : StackLang.HolProg 64 :=
.seq rawBody692_73 rawBody692_327

def rawBody692_329 : StackLang.HolProg 64 :=
.seq rawBody692_72 rawBody692_328

def rawBody692_330 : StackLang.HolProg 64 :=
.seq rawBody692_71 rawBody692_329

def rawBody692_331 : StackLang.HolProg 64 :=
.seq rawBody692_70 rawBody692_330

def rawBody692_332 : StackLang.HolProg 64 :=
.seq rawBody692_69 rawBody692_331

def rawBody692_333 : StackLang.HolProg 64 :=
.seq rawBody692_68 rawBody692_332

def rawBody692_334 : StackLang.HolProg 64 :=
.seq rawBody692_13 rawBody692_333

def rawBody692_335 : StackLang.HolProg 64 :=
.seq rawBody692_4 rawBody692_334

def rawBody692_336 : StackLang.HolProg 64 :=
.seq rawBody692_3 rawBody692_335

def rawBody692_337 : StackLang.HolProg 64 :=
.seq rawBody692_0 rawBody692_336

def raw692 : StackLang.HolProg 64 := rawBody692_337
theorem raw692_eq : StackRawCall.compTop RawInfo.rawInfo (function692 (.list [])).1 = raw692 := by
  kernel_rfl
#print axioms raw692_eq
end InitECandidate.Proofs.BackendStages
