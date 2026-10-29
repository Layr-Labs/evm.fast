import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function516
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody516_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody516_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody516_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1659#64)

def rawBody516_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_5 : StackLang.HolProg 64 :=
.seq rawBody516_3 rawBody516_4

def rawBody516_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody516_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody516_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 3

def rawBody516_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody516_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody516_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody516_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody516_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_16 : StackLang.HolProg 64 :=
.seq rawBody516_14 rawBody516_15

def rawBody516_17 : StackLang.HolProg 64 :=
.seq rawBody516_13 rawBody516_16

def rawBody516_18 : StackLang.HolProg 64 :=
.seq rawBody516_12 rawBody516_17

def rawBody516_19 : StackLang.HolProg 64 :=
.seq rawBody516_11 rawBody516_18

def rawBody516_20 : StackLang.HolProg 64 :=
.seq rawBody516_10 rawBody516_19

def rawBody516_21 : StackLang.HolProg 64 :=
.seq rawBody516_9 rawBody516_20

def rawBody516_22 : StackLang.HolProg 64 :=
.seq rawBody516_8 rawBody516_21

def rawBody516_23 : StackLang.HolProg 64 :=
.seq rawBody516_7 rawBody516_22

def rawBody516_24 : StackLang.HolProg 64 :=
.seq rawBody516_6 rawBody516_23

def rawBody516_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody516_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody516_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody516_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody516_32 : StackLang.HolProg 64 :=
.seq rawBody516_30 rawBody516_31

def rawBody516_33 : StackLang.HolProg 64 :=
.seq rawBody516_29 rawBody516_32

def rawBody516_34 : StackLang.HolProg 64 :=
.seq rawBody516_28 rawBody516_33

def rawBody516_35 : StackLang.HolProg 64 :=
.seq rawBody516_27 rawBody516_34

def rawBody516_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody516_38 : StackLang.HolProg 64 :=
.seq rawBody516_36 rawBody516_37

def rawBody516_39 : StackLang.HolProg 64 :=
.call (some (rawBody516_35, 0, 516, 2)) (Sum.inl 475) (some (rawBody516_38, 516, 3))

def rawBody516_40 : StackLang.HolProg 64 :=
.seq rawBody516_26 rawBody516_39

def rawBody516_41 : StackLang.HolProg 64 :=
.seq rawBody516_25 rawBody516_40

def rawBody516_42 : StackLang.HolProg 64 :=
.seq rawBody516_24 rawBody516_41

def rawBody516_43 : StackLang.HolProg 64 :=
.seq rawBody516_5 rawBody516_42

def rawBody516_44 : StackLang.HolProg 64 :=
.seq rawBody516_2 rawBody516_43

def rawBody516_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody516_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody516_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody516_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody516_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody516_50 : StackLang.HolProg 64 :=
.seq rawBody516_48 rawBody516_49

def rawBody516_51 : StackLang.HolProg 64 :=
.seq rawBody516_47 rawBody516_50

def rawBody516_52 : StackLang.HolProg 64 :=
.seq rawBody516_46 rawBody516_51

def rawBody516_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1660#64)

def rawBody516_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_56 : StackLang.HolProg 64 :=
.seq rawBody516_54 rawBody516_55

def rawBody516_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody516_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody516_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 5

def rawBody516_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody516_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody516_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody516_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody516_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_67 : StackLang.HolProg 64 :=
.seq rawBody516_65 rawBody516_66

def rawBody516_68 : StackLang.HolProg 64 :=
.seq rawBody516_64 rawBody516_67

def rawBody516_69 : StackLang.HolProg 64 :=
.seq rawBody516_63 rawBody516_68

def rawBody516_70 : StackLang.HolProg 64 :=
.seq rawBody516_62 rawBody516_69

def rawBody516_71 : StackLang.HolProg 64 :=
.seq rawBody516_61 rawBody516_70

def rawBody516_72 : StackLang.HolProg 64 :=
.seq rawBody516_60 rawBody516_71

def rawBody516_73 : StackLang.HolProg 64 :=
.seq rawBody516_59 rawBody516_72

def rawBody516_74 : StackLang.HolProg 64 :=
.seq rawBody516_58 rawBody516_73

def rawBody516_75 : StackLang.HolProg 64 :=
.seq rawBody516_57 rawBody516_74

def rawBody516_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody516_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody516_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody516_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody516_83 : StackLang.HolProg 64 :=
.seq rawBody516_81 rawBody516_82

def rawBody516_84 : StackLang.HolProg 64 :=
.seq rawBody516_80 rawBody516_83

def rawBody516_85 : StackLang.HolProg 64 :=
.seq rawBody516_79 rawBody516_84

def rawBody516_86 : StackLang.HolProg 64 :=
.seq rawBody516_78 rawBody516_85

def rawBody516_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody516_89 : StackLang.HolProg 64 :=
.seq rawBody516_87 rawBody516_88

def rawBody516_90 : StackLang.HolProg 64 :=
.call (some (rawBody516_86, 0, 516, 4)) (Sum.inl 475) (some (rawBody516_89, 516, 5))

def rawBody516_91 : StackLang.HolProg 64 :=
.seq rawBody516_77 rawBody516_90

def rawBody516_92 : StackLang.HolProg 64 :=
.seq rawBody516_76 rawBody516_91

def rawBody516_93 : StackLang.HolProg 64 :=
.seq rawBody516_75 rawBody516_92

def rawBody516_94 : StackLang.HolProg 64 :=
.seq rawBody516_56 rawBody516_93

def rawBody516_95 : StackLang.HolProg 64 :=
.seq rawBody516_53 rawBody516_94

def rawBody516_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody516_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody516_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody516_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody516_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody516_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody516_102 : StackLang.HolProg 64 :=
.seq rawBody516_100 rawBody516_101

def rawBody516_103 : StackLang.HolProg 64 :=
.seq rawBody516_99 rawBody516_102

def rawBody516_104 : StackLang.HolProg 64 :=
.seq rawBody516_98 rawBody516_103

def rawBody516_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1661#64)

def rawBody516_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_108 : StackLang.HolProg 64 :=
.seq rawBody516_106 rawBody516_107

def rawBody516_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody516_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody516_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 7

def rawBody516_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody516_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody516_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody516_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody516_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_119 : StackLang.HolProg 64 :=
.seq rawBody516_117 rawBody516_118

def rawBody516_120 : StackLang.HolProg 64 :=
.seq rawBody516_116 rawBody516_119

def rawBody516_121 : StackLang.HolProg 64 :=
.seq rawBody516_115 rawBody516_120

def rawBody516_122 : StackLang.HolProg 64 :=
.seq rawBody516_114 rawBody516_121

def rawBody516_123 : StackLang.HolProg 64 :=
.seq rawBody516_113 rawBody516_122

def rawBody516_124 : StackLang.HolProg 64 :=
.seq rawBody516_112 rawBody516_123

def rawBody516_125 : StackLang.HolProg 64 :=
.seq rawBody516_111 rawBody516_124

def rawBody516_126 : StackLang.HolProg 64 :=
.seq rawBody516_110 rawBody516_125

def rawBody516_127 : StackLang.HolProg 64 :=
.seq rawBody516_109 rawBody516_126

def rawBody516_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody516_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody516_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody516_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody516_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody516_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody516_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody516_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody516_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody516_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody516_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody516_142 : StackLang.HolProg 64 :=
.seq rawBody516_140 rawBody516_141

def rawBody516_143 : StackLang.HolProg 64 :=
.seq rawBody516_139 rawBody516_142

def rawBody516_144 : StackLang.HolProg 64 :=
.seq rawBody516_138 rawBody516_143

def rawBody516_145 : StackLang.HolProg 64 :=
.seq rawBody516_137 rawBody516_144

def rawBody516_146 : StackLang.HolProg 64 :=
.seq rawBody516_136 rawBody516_145

def rawBody516_147 : StackLang.HolProg 64 :=
.seq rawBody516_135 rawBody516_146

def rawBody516_148 : StackLang.HolProg 64 :=
.seq rawBody516_134 rawBody516_147

def rawBody516_149 : StackLang.HolProg 64 :=
.seq rawBody516_133 rawBody516_148

def rawBody516_150 : StackLang.HolProg 64 :=
.seq rawBody516_132 rawBody516_149

def rawBody516_151 : StackLang.HolProg 64 :=
.seq rawBody516_131 rawBody516_150

def rawBody516_152 : StackLang.HolProg 64 :=
.seq rawBody516_130 rawBody516_151

def rawBody516_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody516_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody516_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody516_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody516_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody516_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody516_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody516_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody516_161 : StackLang.HolProg 64 :=
.seq rawBody516_159 rawBody516_160

def rawBody516_162 : StackLang.HolProg 64 :=
.seq rawBody516_158 rawBody516_161

def rawBody516_163 : StackLang.HolProg 64 :=
.seq rawBody516_157 rawBody516_162

def rawBody516_164 : StackLang.HolProg 64 :=
.seq rawBody516_156 rawBody516_163

def rawBody516_165 : StackLang.HolProg 64 :=
.seq rawBody516_155 rawBody516_164

def rawBody516_166 : StackLang.HolProg 64 :=
.seq rawBody516_154 rawBody516_165

def rawBody516_167 : StackLang.HolProg 64 :=
.seq rawBody516_153 rawBody516_166

def rawBody516_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody516_169 : StackLang.HolProg 64 :=
.seq rawBody516_167 rawBody516_168

def rawBody516_170 : StackLang.HolProg 64 :=
.call (some (rawBody516_152, 0, 516, 6)) (Sum.inl 470) (some (rawBody516_169, 516, 7))

def rawBody516_171 : StackLang.HolProg 64 :=
.seq rawBody516_129 rawBody516_170

def rawBody516_172 : StackLang.HolProg 64 :=
.seq rawBody516_128 rawBody516_171

def rawBody516_173 : StackLang.HolProg 64 :=
.seq rawBody516_127 rawBody516_172

def rawBody516_174 : StackLang.HolProg 64 :=
.seq rawBody516_108 rawBody516_173

def rawBody516_175 : StackLang.HolProg 64 :=
.seq rawBody516_105 rawBody516_174

def rawBody516_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody516_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody516_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody516_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody516_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody516_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1662#64)

def rawBody516_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_189 : StackLang.HolProg 64 :=
.seq rawBody516_187 rawBody516_188

def rawBody516_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody516_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody516_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 9

def rawBody516_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody516_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody516_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody516_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody516_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_200 : StackLang.HolProg 64 :=
.seq rawBody516_198 rawBody516_199

def rawBody516_201 : StackLang.HolProg 64 :=
.seq rawBody516_197 rawBody516_200

def rawBody516_202 : StackLang.HolProg 64 :=
.seq rawBody516_196 rawBody516_201

def rawBody516_203 : StackLang.HolProg 64 :=
.seq rawBody516_195 rawBody516_202

def rawBody516_204 : StackLang.HolProg 64 :=
.seq rawBody516_194 rawBody516_203

def rawBody516_205 : StackLang.HolProg 64 :=
.seq rawBody516_193 rawBody516_204

def rawBody516_206 : StackLang.HolProg 64 :=
.seq rawBody516_192 rawBody516_205

def rawBody516_207 : StackLang.HolProg 64 :=
.seq rawBody516_191 rawBody516_206

def rawBody516_208 : StackLang.HolProg 64 :=
.seq rawBody516_190 rawBody516_207

def rawBody516_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody516_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody516_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody516_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_216 : StackLang.HolProg 64 :=
.seq rawBody516_214 rawBody516_215

def rawBody516_217 : StackLang.HolProg 64 :=
.seq rawBody516_213 rawBody516_216

def rawBody516_218 : StackLang.HolProg 64 :=
.seq rawBody516_212 rawBody516_217

def rawBody516_219 : StackLang.HolProg 64 :=
.seq rawBody516_211 rawBody516_218

def rawBody516_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody516_222 : StackLang.HolProg 64 :=
.seq rawBody516_220 rawBody516_221

def rawBody516_223 : StackLang.HolProg 64 :=
.call (some (rawBody516_219, 0, 516, 8)) (Sum.inl 476) (some (rawBody516_222, 516, 9))

def rawBody516_224 : StackLang.HolProg 64 :=
.seq rawBody516_210 rawBody516_223

def rawBody516_225 : StackLang.HolProg 64 :=
.seq rawBody516_209 rawBody516_224

def rawBody516_226 : StackLang.HolProg 64 :=
.seq rawBody516_208 rawBody516_225

def rawBody516_227 : StackLang.HolProg 64 :=
.seq rawBody516_189 rawBody516_226

def rawBody516_228 : StackLang.HolProg 64 :=
.seq rawBody516_186 rawBody516_227

def rawBody516_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody516_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody516_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1663#64)

def rawBody516_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_235 : StackLang.HolProg 64 :=
.seq rawBody516_233 rawBody516_234

def rawBody516_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody516_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody516_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody516_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 11

def rawBody516_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody516_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody516_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody516_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody516_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_246 : StackLang.HolProg 64 :=
.seq rawBody516_244 rawBody516_245

def rawBody516_247 : StackLang.HolProg 64 :=
.seq rawBody516_243 rawBody516_246

def rawBody516_248 : StackLang.HolProg 64 :=
.seq rawBody516_242 rawBody516_247

def rawBody516_249 : StackLang.HolProg 64 :=
.seq rawBody516_241 rawBody516_248

def rawBody516_250 : StackLang.HolProg 64 :=
.seq rawBody516_240 rawBody516_249

def rawBody516_251 : StackLang.HolProg 64 :=
.seq rawBody516_239 rawBody516_250

def rawBody516_252 : StackLang.HolProg 64 :=
.seq rawBody516_238 rawBody516_251

def rawBody516_253 : StackLang.HolProg 64 :=
.seq rawBody516_237 rawBody516_252

def rawBody516_254 : StackLang.HolProg 64 :=
.seq rawBody516_236 rawBody516_253

def rawBody516_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody516_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody516_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody516_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody516_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody516_262 : StackLang.HolProg 64 :=
.seq rawBody516_260 rawBody516_261

def rawBody516_263 : StackLang.HolProg 64 :=
.seq rawBody516_259 rawBody516_262

def rawBody516_264 : StackLang.HolProg 64 :=
.seq rawBody516_258 rawBody516_263

def rawBody516_265 : StackLang.HolProg 64 :=
.seq rawBody516_257 rawBody516_264

def rawBody516_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody516_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody516_268 : StackLang.HolProg 64 :=
.seq rawBody516_266 rawBody516_267

def rawBody516_269 : StackLang.HolProg 64 :=
.call (some (rawBody516_265, 0, 516, 10)) (Sum.inl 490) (some (rawBody516_268, 516, 11))

def rawBody516_270 : StackLang.HolProg 64 :=
.seq rawBody516_256 rawBody516_269

def rawBody516_271 : StackLang.HolProg 64 :=
.seq rawBody516_255 rawBody516_270

def rawBody516_272 : StackLang.HolProg 64 :=
.seq rawBody516_254 rawBody516_271

def rawBody516_273 : StackLang.HolProg 64 :=
.seq rawBody516_235 rawBody516_272

def rawBody516_274 : StackLang.HolProg 64 :=
.seq rawBody516_232 rawBody516_273

def rawBody516_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody516_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody516_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody516_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody516_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody516_280 : StackLang.HolProg 64 :=
.seq rawBody516_278 rawBody516_279

def rawBody516_281 : StackLang.HolProg 64 :=
.seq rawBody516_277 rawBody516_280

def rawBody516_282 : StackLang.HolProg 64 :=
.seq rawBody516_276 rawBody516_281

def rawBody516_283 : StackLang.HolProg 64 :=
.seq rawBody516_275 rawBody516_282

def rawBody516_284 : StackLang.HolProg 64 :=
.seq rawBody516_274 rawBody516_283

def rawBody516_285 : StackLang.HolProg 64 :=
.seq rawBody516_231 rawBody516_284

def rawBody516_286 : StackLang.HolProg 64 :=
.seq rawBody516_230 rawBody516_285

def rawBody516_287 : StackLang.HolProg 64 :=
.seq rawBody516_229 rawBody516_286

def rawBody516_288 : StackLang.HolProg 64 :=
.seq rawBody516_228 rawBody516_287

def rawBody516_289 : StackLang.HolProg 64 :=
.seq rawBody516_185 rawBody516_288

def rawBody516_290 : StackLang.HolProg 64 :=
.seq rawBody516_184 rawBody516_289

def rawBody516_291 : StackLang.HolProg 64 :=
.seq rawBody516_183 rawBody516_290

def rawBody516_292 : StackLang.HolProg 64 :=
.seq rawBody516_182 rawBody516_291

def rawBody516_293 : StackLang.HolProg 64 :=
.seq rawBody516_181 rawBody516_292

def rawBody516_294 : StackLang.HolProg 64 :=
.seq rawBody516_180 rawBody516_293

def rawBody516_295 : StackLang.HolProg 64 :=
.seq rawBody516_179 rawBody516_294

def rawBody516_296 : StackLang.HolProg 64 :=
.seq rawBody516_178 rawBody516_295

def rawBody516_297 : StackLang.HolProg 64 :=
.seq rawBody516_177 rawBody516_296

def rawBody516_298 : StackLang.HolProg 64 :=
.seq rawBody516_176 rawBody516_297

def rawBody516_299 : StackLang.HolProg 64 :=
.seq rawBody516_175 rawBody516_298

def rawBody516_300 : StackLang.HolProg 64 :=
.seq rawBody516_104 rawBody516_299

def rawBody516_301 : StackLang.HolProg 64 :=
.seq rawBody516_97 rawBody516_300

def rawBody516_302 : StackLang.HolProg 64 :=
.seq rawBody516_96 rawBody516_301

def rawBody516_303 : StackLang.HolProg 64 :=
.seq rawBody516_95 rawBody516_302

def rawBody516_304 : StackLang.HolProg 64 :=
.seq rawBody516_52 rawBody516_303

def rawBody516_305 : StackLang.HolProg 64 :=
.seq rawBody516_45 rawBody516_304

def rawBody516_306 : StackLang.HolProg 64 :=
.seq rawBody516_44 rawBody516_305

def rawBody516_307 : StackLang.HolProg 64 :=
.seq rawBody516_1 rawBody516_306

def rawBody516_308 : StackLang.HolProg 64 :=
.seq rawBody516_0 rawBody516_307

def raw516 : StackLang.HolProg 64 := rawBody516_308
theorem raw516_eq : StackRawCall.compTop RawInfo.rawInfo (function516 (.list [])).1 = raw516 := by
  kernel_rfl
#print axioms raw516_eq
end InitECandidate.Proofs.BackendStages
