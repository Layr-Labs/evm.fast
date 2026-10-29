import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function252
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody252_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody252_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody252_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody252_3 : StackLang.HolProg 64 :=
.seq rawBody252_1 rawBody252_2

def rawBody252_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 516#64)

def rawBody252_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_7 : StackLang.HolProg 64 :=
.seq rawBody252_5 rawBody252_6

def rawBody252_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody252_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody252_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 3

def rawBody252_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody252_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody252_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody252_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody252_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_18 : StackLang.HolProg 64 :=
.seq rawBody252_16 rawBody252_17

def rawBody252_19 : StackLang.HolProg 64 :=
.seq rawBody252_15 rawBody252_18

def rawBody252_20 : StackLang.HolProg 64 :=
.seq rawBody252_14 rawBody252_19

def rawBody252_21 : StackLang.HolProg 64 :=
.seq rawBody252_13 rawBody252_20

def rawBody252_22 : StackLang.HolProg 64 :=
.seq rawBody252_12 rawBody252_21

def rawBody252_23 : StackLang.HolProg 64 :=
.seq rawBody252_11 rawBody252_22

def rawBody252_24 : StackLang.HolProg 64 :=
.seq rawBody252_10 rawBody252_23

def rawBody252_25 : StackLang.HolProg 64 :=
.seq rawBody252_9 rawBody252_24

def rawBody252_26 : StackLang.HolProg 64 :=
.seq rawBody252_8 rawBody252_25

def rawBody252_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody252_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody252_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody252_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody252_34 : StackLang.HolProg 64 :=
.seq rawBody252_32 rawBody252_33

def rawBody252_35 : StackLang.HolProg 64 :=
.seq rawBody252_31 rawBody252_34

def rawBody252_36 : StackLang.HolProg 64 :=
.seq rawBody252_30 rawBody252_35

def rawBody252_37 : StackLang.HolProg 64 :=
.seq rawBody252_29 rawBody252_36

def rawBody252_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody252_40 : StackLang.HolProg 64 :=
.seq rawBody252_38 rawBody252_39

def rawBody252_41 : StackLang.HolProg 64 :=
.call (some (rawBody252_37, 0, 252, 2)) (Sum.inl 94) (some (rawBody252_40, 252, 3))

def rawBody252_42 : StackLang.HolProg 64 :=
.seq rawBody252_28 rawBody252_41

def rawBody252_43 : StackLang.HolProg 64 :=
.seq rawBody252_27 rawBody252_42

def rawBody252_44 : StackLang.HolProg 64 :=
.seq rawBody252_26 rawBody252_43

def rawBody252_45 : StackLang.HolProg 64 :=
.seq rawBody252_7 rawBody252_44

def rawBody252_46 : StackLang.HolProg 64 :=
.seq rawBody252_4 rawBody252_45

def rawBody252_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody252_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 30#64)

def rawBody252_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody252_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 517#64)

def rawBody252_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_56 : StackLang.HolProg 64 :=
.seq rawBody252_54 rawBody252_55

def rawBody252_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody252_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody252_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 5

def rawBody252_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody252_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody252_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody252_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody252_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_67 : StackLang.HolProg 64 :=
.seq rawBody252_65 rawBody252_66

def rawBody252_68 : StackLang.HolProg 64 :=
.seq rawBody252_64 rawBody252_67

def rawBody252_69 : StackLang.HolProg 64 :=
.seq rawBody252_63 rawBody252_68

def rawBody252_70 : StackLang.HolProg 64 :=
.seq rawBody252_62 rawBody252_69

def rawBody252_71 : StackLang.HolProg 64 :=
.seq rawBody252_61 rawBody252_70

def rawBody252_72 : StackLang.HolProg 64 :=
.seq rawBody252_60 rawBody252_71

def rawBody252_73 : StackLang.HolProg 64 :=
.seq rawBody252_59 rawBody252_72

def rawBody252_74 : StackLang.HolProg 64 :=
.seq rawBody252_58 rawBody252_73

def rawBody252_75 : StackLang.HolProg 64 :=
.seq rawBody252_57 rawBody252_74

def rawBody252_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody252_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody252_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody252_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody252_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody252_84 : StackLang.HolProg 64 :=
.seq rawBody252_82 rawBody252_83

def rawBody252_85 : StackLang.HolProg 64 :=
.seq rawBody252_81 rawBody252_84

def rawBody252_86 : StackLang.HolProg 64 :=
.seq rawBody252_80 rawBody252_85

def rawBody252_87 : StackLang.HolProg 64 :=
.seq rawBody252_79 rawBody252_86

def rawBody252_88 : StackLang.HolProg 64 :=
.seq rawBody252_78 rawBody252_87

def rawBody252_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody252_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody252_91 : StackLang.HolProg 64 :=
.seq rawBody252_89 rawBody252_90

def rawBody252_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody252_93 : StackLang.HolProg 64 :=
.seq rawBody252_91 rawBody252_92

def rawBody252_94 : StackLang.HolProg 64 :=
.call (some (rawBody252_88, 0, 252, 4)) (Sum.inl 245) (some (rawBody252_93, 252, 5))

def rawBody252_95 : StackLang.HolProg 64 :=
.seq rawBody252_77 rawBody252_94

def rawBody252_96 : StackLang.HolProg 64 :=
.seq rawBody252_76 rawBody252_95

def rawBody252_97 : StackLang.HolProg 64 :=
.seq rawBody252_75 rawBody252_96

def rawBody252_98 : StackLang.HolProg 64 :=
.seq rawBody252_56 rawBody252_97

def rawBody252_99 : StackLang.HolProg 64 :=
.seq rawBody252_53 rawBody252_98

def rawBody252_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_102 : StackLang.HolProg 64 :=
.seq rawBody252_100 rawBody252_101

def rawBody252_103 : StackLang.HolProg 64 :=
.seq rawBody252_99 rawBody252_102

def rawBody252_104 : StackLang.HolProg 64 :=
.seq rawBody252_52 rawBody252_103

def rawBody252_105 : StackLang.HolProg 64 :=
.seq rawBody252_51 rawBody252_104

def rawBody252_106 : StackLang.HolProg 64 :=
.seq rawBody252_50 rawBody252_105

def rawBody252_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody252_109 : StackLang.HolProg 64 :=
.seq rawBody252_107 rawBody252_108

def rawBody252_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody252_106 rawBody252_109

def rawBody252_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def rawBody252_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody252_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 518#64)

def rawBody252_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_119 : StackLang.HolProg 64 :=
.seq rawBody252_117 rawBody252_118

def rawBody252_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody252_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody252_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody252_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 7

def rawBody252_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody252_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody252_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody252_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody252_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_130 : StackLang.HolProg 64 :=
.seq rawBody252_128 rawBody252_129

def rawBody252_131 : StackLang.HolProg 64 :=
.seq rawBody252_127 rawBody252_130

def rawBody252_132 : StackLang.HolProg 64 :=
.seq rawBody252_126 rawBody252_131

def rawBody252_133 : StackLang.HolProg 64 :=
.seq rawBody252_125 rawBody252_132

def rawBody252_134 : StackLang.HolProg 64 :=
.seq rawBody252_124 rawBody252_133

def rawBody252_135 : StackLang.HolProg 64 :=
.seq rawBody252_123 rawBody252_134

def rawBody252_136 : StackLang.HolProg 64 :=
.seq rawBody252_122 rawBody252_135

def rawBody252_137 : StackLang.HolProg 64 :=
.seq rawBody252_121 rawBody252_136

def rawBody252_138 : StackLang.HolProg 64 :=
.seq rawBody252_120 rawBody252_137

def rawBody252_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody252_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody252_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody252_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody252_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody252_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody252_147 : StackLang.HolProg 64 :=
.seq rawBody252_145 rawBody252_146

def rawBody252_148 : StackLang.HolProg 64 :=
.seq rawBody252_144 rawBody252_147

def rawBody252_149 : StackLang.HolProg 64 :=
.seq rawBody252_143 rawBody252_148

def rawBody252_150 : StackLang.HolProg 64 :=
.seq rawBody252_142 rawBody252_149

def rawBody252_151 : StackLang.HolProg 64 :=
.seq rawBody252_141 rawBody252_150

def rawBody252_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody252_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody252_154 : StackLang.HolProg 64 :=
.seq rawBody252_152 rawBody252_153

def rawBody252_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody252_156 : StackLang.HolProg 64 :=
.seq rawBody252_154 rawBody252_155

def rawBody252_157 : StackLang.HolProg 64 :=
.call (some (rawBody252_151, 0, 252, 6)) (Sum.inl 245) (some (rawBody252_156, 252, 7))

def rawBody252_158 : StackLang.HolProg 64 :=
.seq rawBody252_140 rawBody252_157

def rawBody252_159 : StackLang.HolProg 64 :=
.seq rawBody252_139 rawBody252_158

def rawBody252_160 : StackLang.HolProg 64 :=
.seq rawBody252_138 rawBody252_159

def rawBody252_161 : StackLang.HolProg 64 :=
.seq rawBody252_119 rawBody252_160

def rawBody252_162 : StackLang.HolProg 64 :=
.seq rawBody252_116 rawBody252_161

def rawBody252_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody252_165 : StackLang.HolProg 64 :=
.seq rawBody252_163 rawBody252_164

def rawBody252_166 : StackLang.HolProg 64 :=
.seq rawBody252_162 rawBody252_165

def rawBody252_167 : StackLang.HolProg 64 :=
.seq rawBody252_115 rawBody252_166

def rawBody252_168 : StackLang.HolProg 64 :=
.seq rawBody252_114 rawBody252_167

def rawBody252_169 : StackLang.HolProg 64 :=
.seq rawBody252_113 rawBody252_168

def rawBody252_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody252_172 : StackLang.HolProg 64 :=
.seq rawBody252_170 rawBody252_171

def rawBody252_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody252_169 rawBody252_172

def rawBody252_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody252_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody252_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody252_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody252_178 : StackLang.HolProg 64 :=
.seq rawBody252_176 rawBody252_177

def rawBody252_179 : StackLang.HolProg 64 :=
.seq rawBody252_175 rawBody252_178

def rawBody252_180 : StackLang.HolProg 64 :=
.seq rawBody252_174 rawBody252_179

def rawBody252_181 : StackLang.HolProg 64 :=
.seq rawBody252_173 rawBody252_180

def rawBody252_182 : StackLang.HolProg 64 :=
.seq rawBody252_112 rawBody252_181

def rawBody252_183 : StackLang.HolProg 64 :=
.seq rawBody252_111 rawBody252_182

def rawBody252_184 : StackLang.HolProg 64 :=
.seq rawBody252_110 rawBody252_183

def rawBody252_185 : StackLang.HolProg 64 :=
.seq rawBody252_49 rawBody252_184

def rawBody252_186 : StackLang.HolProg 64 :=
.seq rawBody252_48 rawBody252_185

def rawBody252_187 : StackLang.HolProg 64 :=
.seq rawBody252_47 rawBody252_186

def rawBody252_188 : StackLang.HolProg 64 :=
.seq rawBody252_46 rawBody252_187

def rawBody252_189 : StackLang.HolProg 64 :=
.seq rawBody252_3 rawBody252_188

def rawBody252_190 : StackLang.HolProg 64 :=
.seq rawBody252_0 rawBody252_189

def raw252 : StackLang.HolProg 64 := rawBody252_190
theorem raw252_eq : StackRawCall.compTop RawInfo.rawInfo (function252 (.list [])).1 = raw252 := by
  kernel_rfl
#print axioms raw252_eq
end InitECandidate.Proofs.BackendStages
