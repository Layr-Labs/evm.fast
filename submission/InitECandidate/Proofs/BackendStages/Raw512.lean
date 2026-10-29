import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function512
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody512_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody512_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody512_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1638#64)

def rawBody512_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_5 : StackLang.HolProg 64 :=
.seq rawBody512_3 rawBody512_4

def rawBody512_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 3

def rawBody512_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_16 : StackLang.HolProg 64 :=
.seq rawBody512_14 rawBody512_15

def rawBody512_17 : StackLang.HolProg 64 :=
.seq rawBody512_13 rawBody512_16

def rawBody512_18 : StackLang.HolProg 64 :=
.seq rawBody512_12 rawBody512_17

def rawBody512_19 : StackLang.HolProg 64 :=
.seq rawBody512_11 rawBody512_18

def rawBody512_20 : StackLang.HolProg 64 :=
.seq rawBody512_10 rawBody512_19

def rawBody512_21 : StackLang.HolProg 64 :=
.seq rawBody512_9 rawBody512_20

def rawBody512_22 : StackLang.HolProg 64 :=
.seq rawBody512_8 rawBody512_21

def rawBody512_23 : StackLang.HolProg 64 :=
.seq rawBody512_7 rawBody512_22

def rawBody512_24 : StackLang.HolProg 64 :=
.seq rawBody512_6 rawBody512_23

def rawBody512_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody512_32 : StackLang.HolProg 64 :=
.seq rawBody512_30 rawBody512_31

def rawBody512_33 : StackLang.HolProg 64 :=
.seq rawBody512_29 rawBody512_32

def rawBody512_34 : StackLang.HolProg 64 :=
.seq rawBody512_28 rawBody512_33

def rawBody512_35 : StackLang.HolProg 64 :=
.seq rawBody512_27 rawBody512_34

def rawBody512_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_38 : StackLang.HolProg 64 :=
.seq rawBody512_36 rawBody512_37

def rawBody512_39 : StackLang.HolProg 64 :=
.call (some (rawBody512_35, 0, 512, 2)) (Sum.inl 475) (some (rawBody512_38, 512, 3))

def rawBody512_40 : StackLang.HolProg 64 :=
.seq rawBody512_26 rawBody512_39

def rawBody512_41 : StackLang.HolProg 64 :=
.seq rawBody512_25 rawBody512_40

def rawBody512_42 : StackLang.HolProg 64 :=
.seq rawBody512_24 rawBody512_41

def rawBody512_43 : StackLang.HolProg 64 :=
.seq rawBody512_5 rawBody512_42

def rawBody512_44 : StackLang.HolProg 64 :=
.seq rawBody512_2 rawBody512_43

def rawBody512_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody512_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody512_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody512_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody512_50 : StackLang.HolProg 64 :=
.seq rawBody512_48 rawBody512_49

def rawBody512_51 : StackLang.HolProg 64 :=
.seq rawBody512_47 rawBody512_50

def rawBody512_52 : StackLang.HolProg 64 :=
.seq rawBody512_46 rawBody512_51

def rawBody512_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1639#64)

def rawBody512_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_56 : StackLang.HolProg 64 :=
.seq rawBody512_54 rawBody512_55

def rawBody512_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 5

def rawBody512_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_67 : StackLang.HolProg 64 :=
.seq rawBody512_65 rawBody512_66

def rawBody512_68 : StackLang.HolProg 64 :=
.seq rawBody512_64 rawBody512_67

def rawBody512_69 : StackLang.HolProg 64 :=
.seq rawBody512_63 rawBody512_68

def rawBody512_70 : StackLang.HolProg 64 :=
.seq rawBody512_62 rawBody512_69

def rawBody512_71 : StackLang.HolProg 64 :=
.seq rawBody512_61 rawBody512_70

def rawBody512_72 : StackLang.HolProg 64 :=
.seq rawBody512_60 rawBody512_71

def rawBody512_73 : StackLang.HolProg 64 :=
.seq rawBody512_59 rawBody512_72

def rawBody512_74 : StackLang.HolProg 64 :=
.seq rawBody512_58 rawBody512_73

def rawBody512_75 : StackLang.HolProg 64 :=
.seq rawBody512_57 rawBody512_74

def rawBody512_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody512_83 : StackLang.HolProg 64 :=
.seq rawBody512_81 rawBody512_82

def rawBody512_84 : StackLang.HolProg 64 :=
.seq rawBody512_80 rawBody512_83

def rawBody512_85 : StackLang.HolProg 64 :=
.seq rawBody512_79 rawBody512_84

def rawBody512_86 : StackLang.HolProg 64 :=
.seq rawBody512_78 rawBody512_85

def rawBody512_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_89 : StackLang.HolProg 64 :=
.seq rawBody512_87 rawBody512_88

def rawBody512_90 : StackLang.HolProg 64 :=
.call (some (rawBody512_86, 0, 512, 4)) (Sum.inl 475) (some (rawBody512_89, 512, 5))

def rawBody512_91 : StackLang.HolProg 64 :=
.seq rawBody512_77 rawBody512_90

def rawBody512_92 : StackLang.HolProg 64 :=
.seq rawBody512_76 rawBody512_91

def rawBody512_93 : StackLang.HolProg 64 :=
.seq rawBody512_75 rawBody512_92

def rawBody512_94 : StackLang.HolProg 64 :=
.seq rawBody512_56 rawBody512_93

def rawBody512_95 : StackLang.HolProg 64 :=
.seq rawBody512_53 rawBody512_94

def rawBody512_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody512_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody512_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody512_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody512_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody512_102 : StackLang.HolProg 64 :=
.seq rawBody512_100 rawBody512_101

def rawBody512_103 : StackLang.HolProg 64 :=
.seq rawBody512_99 rawBody512_102

def rawBody512_104 : StackLang.HolProg 64 :=
.seq rawBody512_98 rawBody512_103

def rawBody512_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1640#64)

def rawBody512_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_108 : StackLang.HolProg 64 :=
.seq rawBody512_106 rawBody512_107

def rawBody512_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 7

def rawBody512_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_119 : StackLang.HolProg 64 :=
.seq rawBody512_117 rawBody512_118

def rawBody512_120 : StackLang.HolProg 64 :=
.seq rawBody512_116 rawBody512_119

def rawBody512_121 : StackLang.HolProg 64 :=
.seq rawBody512_115 rawBody512_120

def rawBody512_122 : StackLang.HolProg 64 :=
.seq rawBody512_114 rawBody512_121

def rawBody512_123 : StackLang.HolProg 64 :=
.seq rawBody512_113 rawBody512_122

def rawBody512_124 : StackLang.HolProg 64 :=
.seq rawBody512_112 rawBody512_123

def rawBody512_125 : StackLang.HolProg 64 :=
.seq rawBody512_111 rawBody512_124

def rawBody512_126 : StackLang.HolProg 64 :=
.seq rawBody512_110 rawBody512_125

def rawBody512_127 : StackLang.HolProg 64 :=
.seq rawBody512_109 rawBody512_126

def rawBody512_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody512_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody512_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody512_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody512_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody512_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody512_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody512_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody512_142 : StackLang.HolProg 64 :=
.seq rawBody512_140 rawBody512_141

def rawBody512_143 : StackLang.HolProg 64 :=
.seq rawBody512_139 rawBody512_142

def rawBody512_144 : StackLang.HolProg 64 :=
.seq rawBody512_138 rawBody512_143

def rawBody512_145 : StackLang.HolProg 64 :=
.seq rawBody512_137 rawBody512_144

def rawBody512_146 : StackLang.HolProg 64 :=
.seq rawBody512_136 rawBody512_145

def rawBody512_147 : StackLang.HolProg 64 :=
.seq rawBody512_135 rawBody512_146

def rawBody512_148 : StackLang.HolProg 64 :=
.seq rawBody512_134 rawBody512_147

def rawBody512_149 : StackLang.HolProg 64 :=
.seq rawBody512_133 rawBody512_148

def rawBody512_150 : StackLang.HolProg 64 :=
.seq rawBody512_132 rawBody512_149

def rawBody512_151 : StackLang.HolProg 64 :=
.seq rawBody512_131 rawBody512_150

def rawBody512_152 : StackLang.HolProg 64 :=
.seq rawBody512_130 rawBody512_151

def rawBody512_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody512_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody512_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody512_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody512_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody512_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody512_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody512_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody512_161 : StackLang.HolProg 64 :=
.seq rawBody512_159 rawBody512_160

def rawBody512_162 : StackLang.HolProg 64 :=
.seq rawBody512_158 rawBody512_161

def rawBody512_163 : StackLang.HolProg 64 :=
.seq rawBody512_157 rawBody512_162

def rawBody512_164 : StackLang.HolProg 64 :=
.seq rawBody512_156 rawBody512_163

def rawBody512_165 : StackLang.HolProg 64 :=
.seq rawBody512_155 rawBody512_164

def rawBody512_166 : StackLang.HolProg 64 :=
.seq rawBody512_154 rawBody512_165

def rawBody512_167 : StackLang.HolProg 64 :=
.seq rawBody512_153 rawBody512_166

def rawBody512_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_169 : StackLang.HolProg 64 :=
.seq rawBody512_167 rawBody512_168

def rawBody512_170 : StackLang.HolProg 64 :=
.call (some (rawBody512_152, 0, 512, 6)) (Sum.inl 470) (some (rawBody512_169, 512, 7))

def rawBody512_171 : StackLang.HolProg 64 :=
.seq rawBody512_129 rawBody512_170

def rawBody512_172 : StackLang.HolProg 64 :=
.seq rawBody512_128 rawBody512_171

def rawBody512_173 : StackLang.HolProg 64 :=
.seq rawBody512_127 rawBody512_172

def rawBody512_174 : StackLang.HolProg 64 :=
.seq rawBody512_108 rawBody512_173

def rawBody512_175 : StackLang.HolProg 64 :=
.seq rawBody512_105 rawBody512_174

def rawBody512_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody512_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1641#64)

def rawBody512_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_181 : StackLang.HolProg 64 :=
.seq rawBody512_179 rawBody512_180

def rawBody512_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 9

def rawBody512_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_192 : StackLang.HolProg 64 :=
.seq rawBody512_190 rawBody512_191

def rawBody512_193 : StackLang.HolProg 64 :=
.seq rawBody512_189 rawBody512_192

def rawBody512_194 : StackLang.HolProg 64 :=
.seq rawBody512_188 rawBody512_193

def rawBody512_195 : StackLang.HolProg 64 :=
.seq rawBody512_187 rawBody512_194

def rawBody512_196 : StackLang.HolProg 64 :=
.seq rawBody512_186 rawBody512_195

def rawBody512_197 : StackLang.HolProg 64 :=
.seq rawBody512_185 rawBody512_196

def rawBody512_198 : StackLang.HolProg 64 :=
.seq rawBody512_184 rawBody512_197

def rawBody512_199 : StackLang.HolProg 64 :=
.seq rawBody512_183 rawBody512_198

def rawBody512_200 : StackLang.HolProg 64 :=
.seq rawBody512_182 rawBody512_199

def rawBody512_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody512_208 : StackLang.HolProg 64 :=
.seq rawBody512_206 rawBody512_207

def rawBody512_209 : StackLang.HolProg 64 :=
.seq rawBody512_205 rawBody512_208

def rawBody512_210 : StackLang.HolProg 64 :=
.seq rawBody512_204 rawBody512_209

def rawBody512_211 : StackLang.HolProg 64 :=
.seq rawBody512_203 rawBody512_210

def rawBody512_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_214 : StackLang.HolProg 64 :=
.seq rawBody512_212 rawBody512_213

def rawBody512_215 : StackLang.HolProg 64 :=
.call (some (rawBody512_211, 0, 512, 8)) (Sum.inl 105) (some (rawBody512_214, 512, 9))

def rawBody512_216 : StackLang.HolProg 64 :=
.seq rawBody512_202 rawBody512_215

def rawBody512_217 : StackLang.HolProg 64 :=
.seq rawBody512_201 rawBody512_216

def rawBody512_218 : StackLang.HolProg 64 :=
.seq rawBody512_200 rawBody512_217

def rawBody512_219 : StackLang.HolProg 64 :=
.seq rawBody512_181 rawBody512_218

def rawBody512_220 : StackLang.HolProg 64 :=
.seq rawBody512_178 rawBody512_219

def rawBody512_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody512_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1642#64)

def rawBody512_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_226 : StackLang.HolProg 64 :=
.seq rawBody512_224 rawBody512_225

def rawBody512_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 11

def rawBody512_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_237 : StackLang.HolProg 64 :=
.seq rawBody512_235 rawBody512_236

def rawBody512_238 : StackLang.HolProg 64 :=
.seq rawBody512_234 rawBody512_237

def rawBody512_239 : StackLang.HolProg 64 :=
.seq rawBody512_233 rawBody512_238

def rawBody512_240 : StackLang.HolProg 64 :=
.seq rawBody512_232 rawBody512_239

def rawBody512_241 : StackLang.HolProg 64 :=
.seq rawBody512_231 rawBody512_240

def rawBody512_242 : StackLang.HolProg 64 :=
.seq rawBody512_230 rawBody512_241

def rawBody512_243 : StackLang.HolProg 64 :=
.seq rawBody512_229 rawBody512_242

def rawBody512_244 : StackLang.HolProg 64 :=
.seq rawBody512_228 rawBody512_243

def rawBody512_245 : StackLang.HolProg 64 :=
.seq rawBody512_227 rawBody512_244

def rawBody512_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_253 : StackLang.HolProg 64 :=
.seq rawBody512_251 rawBody512_252

def rawBody512_254 : StackLang.HolProg 64 :=
.seq rawBody512_250 rawBody512_253

def rawBody512_255 : StackLang.HolProg 64 :=
.seq rawBody512_249 rawBody512_254

def rawBody512_256 : StackLang.HolProg 64 :=
.seq rawBody512_248 rawBody512_255

def rawBody512_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_259 : StackLang.HolProg 64 :=
.seq rawBody512_257 rawBody512_258

def rawBody512_260 : StackLang.HolProg 64 :=
.call (some (rawBody512_256, 0, 512, 10)) (Sum.inl 478) (some (rawBody512_259, 512, 11))

def rawBody512_261 : StackLang.HolProg 64 :=
.seq rawBody512_247 rawBody512_260

def rawBody512_262 : StackLang.HolProg 64 :=
.seq rawBody512_246 rawBody512_261

def rawBody512_263 : StackLang.HolProg 64 :=
.seq rawBody512_245 rawBody512_262

def rawBody512_264 : StackLang.HolProg 64 :=
.seq rawBody512_226 rawBody512_263

def rawBody512_265 : StackLang.HolProg 64 :=
.seq rawBody512_223 rawBody512_264

def rawBody512_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody512_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1643#64)

def rawBody512_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_272 : StackLang.HolProg 64 :=
.seq rawBody512_270 rawBody512_271

def rawBody512_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody512_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody512_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody512_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 13

def rawBody512_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody512_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody512_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody512_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody512_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_283 : StackLang.HolProg 64 :=
.seq rawBody512_281 rawBody512_282

def rawBody512_284 : StackLang.HolProg 64 :=
.seq rawBody512_280 rawBody512_283

def rawBody512_285 : StackLang.HolProg 64 :=
.seq rawBody512_279 rawBody512_284

def rawBody512_286 : StackLang.HolProg 64 :=
.seq rawBody512_278 rawBody512_285

def rawBody512_287 : StackLang.HolProg 64 :=
.seq rawBody512_277 rawBody512_286

def rawBody512_288 : StackLang.HolProg 64 :=
.seq rawBody512_276 rawBody512_287

def rawBody512_289 : StackLang.HolProg 64 :=
.seq rawBody512_275 rawBody512_288

def rawBody512_290 : StackLang.HolProg 64 :=
.seq rawBody512_274 rawBody512_289

def rawBody512_291 : StackLang.HolProg 64 :=
.seq rawBody512_273 rawBody512_290

def rawBody512_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody512_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody512_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody512_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody512_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody512_299 : StackLang.HolProg 64 :=
.seq rawBody512_297 rawBody512_298

def rawBody512_300 : StackLang.HolProg 64 :=
.seq rawBody512_296 rawBody512_299

def rawBody512_301 : StackLang.HolProg 64 :=
.seq rawBody512_295 rawBody512_300

def rawBody512_302 : StackLang.HolProg 64 :=
.seq rawBody512_294 rawBody512_301

def rawBody512_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody512_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody512_305 : StackLang.HolProg 64 :=
.seq rawBody512_303 rawBody512_304

def rawBody512_306 : StackLang.HolProg 64 :=
.call (some (rawBody512_302, 0, 512, 12)) (Sum.inl 490) (some (rawBody512_305, 512, 13))

def rawBody512_307 : StackLang.HolProg 64 :=
.seq rawBody512_293 rawBody512_306

def rawBody512_308 : StackLang.HolProg 64 :=
.seq rawBody512_292 rawBody512_307

def rawBody512_309 : StackLang.HolProg 64 :=
.seq rawBody512_291 rawBody512_308

def rawBody512_310 : StackLang.HolProg 64 :=
.seq rawBody512_272 rawBody512_309

def rawBody512_311 : StackLang.HolProg 64 :=
.seq rawBody512_269 rawBody512_310

def rawBody512_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody512_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody512_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody512_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody512_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody512_317 : StackLang.HolProg 64 :=
.seq rawBody512_315 rawBody512_316

def rawBody512_318 : StackLang.HolProg 64 :=
.seq rawBody512_314 rawBody512_317

def rawBody512_319 : StackLang.HolProg 64 :=
.seq rawBody512_313 rawBody512_318

def rawBody512_320 : StackLang.HolProg 64 :=
.seq rawBody512_312 rawBody512_319

def rawBody512_321 : StackLang.HolProg 64 :=
.seq rawBody512_311 rawBody512_320

def rawBody512_322 : StackLang.HolProg 64 :=
.seq rawBody512_268 rawBody512_321

def rawBody512_323 : StackLang.HolProg 64 :=
.seq rawBody512_267 rawBody512_322

def rawBody512_324 : StackLang.HolProg 64 :=
.seq rawBody512_266 rawBody512_323

def rawBody512_325 : StackLang.HolProg 64 :=
.seq rawBody512_265 rawBody512_324

def rawBody512_326 : StackLang.HolProg 64 :=
.seq rawBody512_222 rawBody512_325

def rawBody512_327 : StackLang.HolProg 64 :=
.seq rawBody512_221 rawBody512_326

def rawBody512_328 : StackLang.HolProg 64 :=
.seq rawBody512_220 rawBody512_327

def rawBody512_329 : StackLang.HolProg 64 :=
.seq rawBody512_177 rawBody512_328

def rawBody512_330 : StackLang.HolProg 64 :=
.seq rawBody512_176 rawBody512_329

def rawBody512_331 : StackLang.HolProg 64 :=
.seq rawBody512_175 rawBody512_330

def rawBody512_332 : StackLang.HolProg 64 :=
.seq rawBody512_104 rawBody512_331

def rawBody512_333 : StackLang.HolProg 64 :=
.seq rawBody512_97 rawBody512_332

def rawBody512_334 : StackLang.HolProg 64 :=
.seq rawBody512_96 rawBody512_333

def rawBody512_335 : StackLang.HolProg 64 :=
.seq rawBody512_95 rawBody512_334

def rawBody512_336 : StackLang.HolProg 64 :=
.seq rawBody512_52 rawBody512_335

def rawBody512_337 : StackLang.HolProg 64 :=
.seq rawBody512_45 rawBody512_336

def rawBody512_338 : StackLang.HolProg 64 :=
.seq rawBody512_44 rawBody512_337

def rawBody512_339 : StackLang.HolProg 64 :=
.seq rawBody512_1 rawBody512_338

def rawBody512_340 : StackLang.HolProg 64 :=
.seq rawBody512_0 rawBody512_339

def raw512 : StackLang.HolProg 64 := rawBody512_340
theorem raw512_eq : StackRawCall.compTop RawInfo.rawInfo (function512 (.list [])).1 = raw512 := by
  kernel_rfl
#print axioms raw512_eq
end InitECandidate.Proofs.BackendStages
