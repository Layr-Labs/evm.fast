import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function751
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody751_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody751_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody751_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody751_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody751_4 : StackLang.HolProg 64 :=
.seq rawBody751_2 rawBody751_3

def rawBody751_5 : StackLang.HolProg 64 :=
.seq rawBody751_1 rawBody751_4

def rawBody751_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3317#64)

def rawBody751_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_9 : StackLang.HolProg 64 :=
.seq rawBody751_7 rawBody751_8

def rawBody751_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody751_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody751_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 3

def rawBody751_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody751_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody751_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody751_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody751_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_20 : StackLang.HolProg 64 :=
.seq rawBody751_18 rawBody751_19

def rawBody751_21 : StackLang.HolProg 64 :=
.seq rawBody751_17 rawBody751_20

def rawBody751_22 : StackLang.HolProg 64 :=
.seq rawBody751_16 rawBody751_21

def rawBody751_23 : StackLang.HolProg 64 :=
.seq rawBody751_15 rawBody751_22

def rawBody751_24 : StackLang.HolProg 64 :=
.seq rawBody751_14 rawBody751_23

def rawBody751_25 : StackLang.HolProg 64 :=
.seq rawBody751_13 rawBody751_24

def rawBody751_26 : StackLang.HolProg 64 :=
.seq rawBody751_12 rawBody751_25

def rawBody751_27 : StackLang.HolProg 64 :=
.seq rawBody751_11 rawBody751_26

def rawBody751_28 : StackLang.HolProg 64 :=
.seq rawBody751_10 rawBody751_27

def rawBody751_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody751_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody751_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody751_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody751_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody751_37 : StackLang.HolProg 64 :=
.seq rawBody751_35 rawBody751_36

def rawBody751_38 : StackLang.HolProg 64 :=
.seq rawBody751_34 rawBody751_37

def rawBody751_39 : StackLang.HolProg 64 :=
.seq rawBody751_33 rawBody751_38

def rawBody751_40 : StackLang.HolProg 64 :=
.seq rawBody751_32 rawBody751_39

def rawBody751_41 : StackLang.HolProg 64 :=
.seq rawBody751_31 rawBody751_40

def rawBody751_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody751_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody751_44 : StackLang.HolProg 64 :=
.seq rawBody751_42 rawBody751_43

def rawBody751_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody751_46 : StackLang.HolProg 64 :=
.seq rawBody751_44 rawBody751_45

def rawBody751_47 : StackLang.HolProg 64 :=
.call (some (rawBody751_41, 0, 751, 2)) (Sum.inl 736) (some (rawBody751_46, 751, 3))

def rawBody751_48 : StackLang.HolProg 64 :=
.seq rawBody751_30 rawBody751_47

def rawBody751_49 : StackLang.HolProg 64 :=
.seq rawBody751_29 rawBody751_48

def rawBody751_50 : StackLang.HolProg 64 :=
.seq rawBody751_28 rawBody751_49

def rawBody751_51 : StackLang.HolProg 64 :=
.seq rawBody751_9 rawBody751_50

def rawBody751_52 : StackLang.HolProg 64 :=
.seq rawBody751_6 rawBody751_51

def rawBody751_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody751_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody751_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody751_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody751_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody751_60 : StackLang.HolProg 64 :=
.seq rawBody751_58 rawBody751_59

def rawBody751_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3318#64)

def rawBody751_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_64 : StackLang.HolProg 64 :=
.seq rawBody751_62 rawBody751_63

def rawBody751_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody751_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody751_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 5

def rawBody751_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody751_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody751_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody751_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody751_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_75 : StackLang.HolProg 64 :=
.seq rawBody751_73 rawBody751_74

def rawBody751_76 : StackLang.HolProg 64 :=
.seq rawBody751_72 rawBody751_75

def rawBody751_77 : StackLang.HolProg 64 :=
.seq rawBody751_71 rawBody751_76

def rawBody751_78 : StackLang.HolProg 64 :=
.seq rawBody751_70 rawBody751_77

def rawBody751_79 : StackLang.HolProg 64 :=
.seq rawBody751_69 rawBody751_78

def rawBody751_80 : StackLang.HolProg 64 :=
.seq rawBody751_68 rawBody751_79

def rawBody751_81 : StackLang.HolProg 64 :=
.seq rawBody751_67 rawBody751_80

def rawBody751_82 : StackLang.HolProg 64 :=
.seq rawBody751_66 rawBody751_81

def rawBody751_83 : StackLang.HolProg 64 :=
.seq rawBody751_65 rawBody751_82

def rawBody751_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody751_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody751_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody751_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody751_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody751_92 : StackLang.HolProg 64 :=
.seq rawBody751_90 rawBody751_91

def rawBody751_93 : StackLang.HolProg 64 :=
.seq rawBody751_89 rawBody751_92

def rawBody751_94 : StackLang.HolProg 64 :=
.seq rawBody751_88 rawBody751_93

def rawBody751_95 : StackLang.HolProg 64 :=
.seq rawBody751_87 rawBody751_94

def rawBody751_96 : StackLang.HolProg 64 :=
.seq rawBody751_86 rawBody751_95

def rawBody751_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody751_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody751_99 : StackLang.HolProg 64 :=
.seq rawBody751_97 rawBody751_98

def rawBody751_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody751_101 : StackLang.HolProg 64 :=
.seq rawBody751_99 rawBody751_100

def rawBody751_102 : StackLang.HolProg 64 :=
.call (some (rawBody751_96, 0, 751, 4)) (Sum.inl 736) (some (rawBody751_101, 751, 5))

def rawBody751_103 : StackLang.HolProg 64 :=
.seq rawBody751_85 rawBody751_102

def rawBody751_104 : StackLang.HolProg 64 :=
.seq rawBody751_84 rawBody751_103

def rawBody751_105 : StackLang.HolProg 64 :=
.seq rawBody751_83 rawBody751_104

def rawBody751_106 : StackLang.HolProg 64 :=
.seq rawBody751_64 rawBody751_105

def rawBody751_107 : StackLang.HolProg 64 :=
.seq rawBody751_61 rawBody751_106

def rawBody751_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody751_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody751_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody751_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3319#64)

def rawBody751_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_117 : StackLang.HolProg 64 :=
.seq rawBody751_115 rawBody751_116

def rawBody751_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody751_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody751_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody751_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 751 7

def rawBody751_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody751_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody751_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody751_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody751_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_128 : StackLang.HolProg 64 :=
.seq rawBody751_126 rawBody751_127

def rawBody751_129 : StackLang.HolProg 64 :=
.seq rawBody751_125 rawBody751_128

def rawBody751_130 : StackLang.HolProg 64 :=
.seq rawBody751_124 rawBody751_129

def rawBody751_131 : StackLang.HolProg 64 :=
.seq rawBody751_123 rawBody751_130

def rawBody751_132 : StackLang.HolProg 64 :=
.seq rawBody751_122 rawBody751_131

def rawBody751_133 : StackLang.HolProg 64 :=
.seq rawBody751_121 rawBody751_132

def rawBody751_134 : StackLang.HolProg 64 :=
.seq rawBody751_120 rawBody751_133

def rawBody751_135 : StackLang.HolProg 64 :=
.seq rawBody751_119 rawBody751_134

def rawBody751_136 : StackLang.HolProg 64 :=
.seq rawBody751_118 rawBody751_135

def rawBody751_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody751_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody751_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody751_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody751_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody751_144 : StackLang.HolProg 64 :=
.seq rawBody751_142 rawBody751_143

def rawBody751_145 : StackLang.HolProg 64 :=
.seq rawBody751_141 rawBody751_144

def rawBody751_146 : StackLang.HolProg 64 :=
.seq rawBody751_140 rawBody751_145

def rawBody751_147 : StackLang.HolProg 64 :=
.seq rawBody751_139 rawBody751_146

def rawBody751_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody751_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody751_150 : StackLang.HolProg 64 :=
.seq rawBody751_148 rawBody751_149

def rawBody751_151 : StackLang.HolProg 64 :=
.call (some (rawBody751_147, 0, 751, 6)) (Sum.inl 736) (some (rawBody751_150, 751, 7))

def rawBody751_152 : StackLang.HolProg 64 :=
.seq rawBody751_138 rawBody751_151

def rawBody751_153 : StackLang.HolProg 64 :=
.seq rawBody751_137 rawBody751_152

def rawBody751_154 : StackLang.HolProg 64 :=
.seq rawBody751_136 rawBody751_153

def rawBody751_155 : StackLang.HolProg 64 :=
.seq rawBody751_117 rawBody751_154

def rawBody751_156 : StackLang.HolProg 64 :=
.seq rawBody751_114 rawBody751_155

def rawBody751_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody751_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody751_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody751_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody751_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody751_162 : StackLang.HolProg 64 :=
.seq rawBody751_160 rawBody751_161

def rawBody751_163 : StackLang.HolProg 64 :=
.seq rawBody751_159 rawBody751_162

def rawBody751_164 : StackLang.HolProg 64 :=
.seq rawBody751_158 rawBody751_163

def rawBody751_165 : StackLang.HolProg 64 :=
.seq rawBody751_157 rawBody751_164

def rawBody751_166 : StackLang.HolProg 64 :=
.seq rawBody751_156 rawBody751_165

def rawBody751_167 : StackLang.HolProg 64 :=
.seq rawBody751_113 rawBody751_166

def rawBody751_168 : StackLang.HolProg 64 :=
.seq rawBody751_112 rawBody751_167

def rawBody751_169 : StackLang.HolProg 64 :=
.seq rawBody751_111 rawBody751_168

def rawBody751_170 : StackLang.HolProg 64 :=
.seq rawBody751_110 rawBody751_169

def rawBody751_171 : StackLang.HolProg 64 :=
.seq rawBody751_109 rawBody751_170

def rawBody751_172 : StackLang.HolProg 64 :=
.seq rawBody751_108 rawBody751_171

def rawBody751_173 : StackLang.HolProg 64 :=
.seq rawBody751_107 rawBody751_172

def rawBody751_174 : StackLang.HolProg 64 :=
.seq rawBody751_60 rawBody751_173

def rawBody751_175 : StackLang.HolProg 64 :=
.seq rawBody751_57 rawBody751_174

def rawBody751_176 : StackLang.HolProg 64 :=
.seq rawBody751_56 rawBody751_175

def rawBody751_177 : StackLang.HolProg 64 :=
.seq rawBody751_55 rawBody751_176

def rawBody751_178 : StackLang.HolProg 64 :=
.seq rawBody751_54 rawBody751_177

def rawBody751_179 : StackLang.HolProg 64 :=
.seq rawBody751_53 rawBody751_178

def rawBody751_180 : StackLang.HolProg 64 :=
.seq rawBody751_52 rawBody751_179

def rawBody751_181 : StackLang.HolProg 64 :=
.seq rawBody751_5 rawBody751_180

def rawBody751_182 : StackLang.HolProg 64 :=
.seq rawBody751_0 rawBody751_181

def raw751 : StackLang.HolProg 64 := rawBody751_182
theorem raw751_eq : StackRawCall.compTop RawInfo.rawInfo (function751 (.list [])).1 = raw751 := by
  kernel_rfl
#print axioms raw751_eq
end InitECandidate.Proofs.BackendStages
