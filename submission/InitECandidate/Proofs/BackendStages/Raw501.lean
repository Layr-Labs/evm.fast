import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function501
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody501_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody501_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody501_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1568#64)

def rawBody501_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_5 : StackLang.HolProg 64 :=
.seq rawBody501_3 rawBody501_4

def rawBody501_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 3

def rawBody501_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_16 : StackLang.HolProg 64 :=
.seq rawBody501_14 rawBody501_15

def rawBody501_17 : StackLang.HolProg 64 :=
.seq rawBody501_13 rawBody501_16

def rawBody501_18 : StackLang.HolProg 64 :=
.seq rawBody501_12 rawBody501_17

def rawBody501_19 : StackLang.HolProg 64 :=
.seq rawBody501_11 rawBody501_18

def rawBody501_20 : StackLang.HolProg 64 :=
.seq rawBody501_10 rawBody501_19

def rawBody501_21 : StackLang.HolProg 64 :=
.seq rawBody501_9 rawBody501_20

def rawBody501_22 : StackLang.HolProg 64 :=
.seq rawBody501_8 rawBody501_21

def rawBody501_23 : StackLang.HolProg 64 :=
.seq rawBody501_7 rawBody501_22

def rawBody501_24 : StackLang.HolProg 64 :=
.seq rawBody501_6 rawBody501_23

def rawBody501_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody501_32 : StackLang.HolProg 64 :=
.seq rawBody501_30 rawBody501_31

def rawBody501_33 : StackLang.HolProg 64 :=
.seq rawBody501_29 rawBody501_32

def rawBody501_34 : StackLang.HolProg 64 :=
.seq rawBody501_28 rawBody501_33

def rawBody501_35 : StackLang.HolProg 64 :=
.seq rawBody501_27 rawBody501_34

def rawBody501_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_38 : StackLang.HolProg 64 :=
.seq rawBody501_36 rawBody501_37

def rawBody501_39 : StackLang.HolProg 64 :=
.call (some (rawBody501_35, 0, 501, 2)) (Sum.inl 475) (some (rawBody501_38, 501, 3))

def rawBody501_40 : StackLang.HolProg 64 :=
.seq rawBody501_26 rawBody501_39

def rawBody501_41 : StackLang.HolProg 64 :=
.seq rawBody501_25 rawBody501_40

def rawBody501_42 : StackLang.HolProg 64 :=
.seq rawBody501_24 rawBody501_41

def rawBody501_43 : StackLang.HolProg 64 :=
.seq rawBody501_5 rawBody501_42

def rawBody501_44 : StackLang.HolProg 64 :=
.seq rawBody501_2 rawBody501_43

def rawBody501_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody501_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody501_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody501_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody501_50 : StackLang.HolProg 64 :=
.seq rawBody501_48 rawBody501_49

def rawBody501_51 : StackLang.HolProg 64 :=
.seq rawBody501_47 rawBody501_50

def rawBody501_52 : StackLang.HolProg 64 :=
.seq rawBody501_46 rawBody501_51

def rawBody501_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1569#64)

def rawBody501_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_56 : StackLang.HolProg 64 :=
.seq rawBody501_54 rawBody501_55

def rawBody501_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 5

def rawBody501_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_67 : StackLang.HolProg 64 :=
.seq rawBody501_65 rawBody501_66

def rawBody501_68 : StackLang.HolProg 64 :=
.seq rawBody501_64 rawBody501_67

def rawBody501_69 : StackLang.HolProg 64 :=
.seq rawBody501_63 rawBody501_68

def rawBody501_70 : StackLang.HolProg 64 :=
.seq rawBody501_62 rawBody501_69

def rawBody501_71 : StackLang.HolProg 64 :=
.seq rawBody501_61 rawBody501_70

def rawBody501_72 : StackLang.HolProg 64 :=
.seq rawBody501_60 rawBody501_71

def rawBody501_73 : StackLang.HolProg 64 :=
.seq rawBody501_59 rawBody501_72

def rawBody501_74 : StackLang.HolProg 64 :=
.seq rawBody501_58 rawBody501_73

def rawBody501_75 : StackLang.HolProg 64 :=
.seq rawBody501_57 rawBody501_74

def rawBody501_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody501_83 : StackLang.HolProg 64 :=
.seq rawBody501_81 rawBody501_82

def rawBody501_84 : StackLang.HolProg 64 :=
.seq rawBody501_80 rawBody501_83

def rawBody501_85 : StackLang.HolProg 64 :=
.seq rawBody501_79 rawBody501_84

def rawBody501_86 : StackLang.HolProg 64 :=
.seq rawBody501_78 rawBody501_85

def rawBody501_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_89 : StackLang.HolProg 64 :=
.seq rawBody501_87 rawBody501_88

def rawBody501_90 : StackLang.HolProg 64 :=
.call (some (rawBody501_86, 0, 501, 4)) (Sum.inl 475) (some (rawBody501_89, 501, 5))

def rawBody501_91 : StackLang.HolProg 64 :=
.seq rawBody501_77 rawBody501_90

def rawBody501_92 : StackLang.HolProg 64 :=
.seq rawBody501_76 rawBody501_91

def rawBody501_93 : StackLang.HolProg 64 :=
.seq rawBody501_75 rawBody501_92

def rawBody501_94 : StackLang.HolProg 64 :=
.seq rawBody501_56 rawBody501_93

def rawBody501_95 : StackLang.HolProg 64 :=
.seq rawBody501_53 rawBody501_94

def rawBody501_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody501_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody501_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody501_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody501_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody501_102 : StackLang.HolProg 64 :=
.seq rawBody501_100 rawBody501_101

def rawBody501_103 : StackLang.HolProg 64 :=
.seq rawBody501_99 rawBody501_102

def rawBody501_104 : StackLang.HolProg 64 :=
.seq rawBody501_98 rawBody501_103

def rawBody501_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1570#64)

def rawBody501_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_108 : StackLang.HolProg 64 :=
.seq rawBody501_106 rawBody501_107

def rawBody501_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 7

def rawBody501_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_119 : StackLang.HolProg 64 :=
.seq rawBody501_117 rawBody501_118

def rawBody501_120 : StackLang.HolProg 64 :=
.seq rawBody501_116 rawBody501_119

def rawBody501_121 : StackLang.HolProg 64 :=
.seq rawBody501_115 rawBody501_120

def rawBody501_122 : StackLang.HolProg 64 :=
.seq rawBody501_114 rawBody501_121

def rawBody501_123 : StackLang.HolProg 64 :=
.seq rawBody501_113 rawBody501_122

def rawBody501_124 : StackLang.HolProg 64 :=
.seq rawBody501_112 rawBody501_123

def rawBody501_125 : StackLang.HolProg 64 :=
.seq rawBody501_111 rawBody501_124

def rawBody501_126 : StackLang.HolProg 64 :=
.seq rawBody501_110 rawBody501_125

def rawBody501_127 : StackLang.HolProg 64 :=
.seq rawBody501_109 rawBody501_126

def rawBody501_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody501_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody501_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody501_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody501_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody501_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody501_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody501_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody501_142 : StackLang.HolProg 64 :=
.seq rawBody501_140 rawBody501_141

def rawBody501_143 : StackLang.HolProg 64 :=
.seq rawBody501_139 rawBody501_142

def rawBody501_144 : StackLang.HolProg 64 :=
.seq rawBody501_138 rawBody501_143

def rawBody501_145 : StackLang.HolProg 64 :=
.seq rawBody501_137 rawBody501_144

def rawBody501_146 : StackLang.HolProg 64 :=
.seq rawBody501_136 rawBody501_145

def rawBody501_147 : StackLang.HolProg 64 :=
.seq rawBody501_135 rawBody501_146

def rawBody501_148 : StackLang.HolProg 64 :=
.seq rawBody501_134 rawBody501_147

def rawBody501_149 : StackLang.HolProg 64 :=
.seq rawBody501_133 rawBody501_148

def rawBody501_150 : StackLang.HolProg 64 :=
.seq rawBody501_132 rawBody501_149

def rawBody501_151 : StackLang.HolProg 64 :=
.seq rawBody501_131 rawBody501_150

def rawBody501_152 : StackLang.HolProg 64 :=
.seq rawBody501_130 rawBody501_151

def rawBody501_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody501_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody501_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody501_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody501_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody501_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody501_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody501_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody501_161 : StackLang.HolProg 64 :=
.seq rawBody501_159 rawBody501_160

def rawBody501_162 : StackLang.HolProg 64 :=
.seq rawBody501_158 rawBody501_161

def rawBody501_163 : StackLang.HolProg 64 :=
.seq rawBody501_157 rawBody501_162

def rawBody501_164 : StackLang.HolProg 64 :=
.seq rawBody501_156 rawBody501_163

def rawBody501_165 : StackLang.HolProg 64 :=
.seq rawBody501_155 rawBody501_164

def rawBody501_166 : StackLang.HolProg 64 :=
.seq rawBody501_154 rawBody501_165

def rawBody501_167 : StackLang.HolProg 64 :=
.seq rawBody501_153 rawBody501_166

def rawBody501_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_169 : StackLang.HolProg 64 :=
.seq rawBody501_167 rawBody501_168

def rawBody501_170 : StackLang.HolProg 64 :=
.call (some (rawBody501_152, 0, 501, 6)) (Sum.inl 470) (some (rawBody501_169, 501, 7))

def rawBody501_171 : StackLang.HolProg 64 :=
.seq rawBody501_129 rawBody501_170

def rawBody501_172 : StackLang.HolProg 64 :=
.seq rawBody501_128 rawBody501_171

def rawBody501_173 : StackLang.HolProg 64 :=
.seq rawBody501_127 rawBody501_172

def rawBody501_174 : StackLang.HolProg 64 :=
.seq rawBody501_108 rawBody501_173

def rawBody501_175 : StackLang.HolProg 64 :=
.seq rawBody501_105 rawBody501_174

def rawBody501_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody501_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1571#64)

def rawBody501_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_181 : StackLang.HolProg 64 :=
.seq rawBody501_179 rawBody501_180

def rawBody501_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 9

def rawBody501_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_192 : StackLang.HolProg 64 :=
.seq rawBody501_190 rawBody501_191

def rawBody501_193 : StackLang.HolProg 64 :=
.seq rawBody501_189 rawBody501_192

def rawBody501_194 : StackLang.HolProg 64 :=
.seq rawBody501_188 rawBody501_193

def rawBody501_195 : StackLang.HolProg 64 :=
.seq rawBody501_187 rawBody501_194

def rawBody501_196 : StackLang.HolProg 64 :=
.seq rawBody501_186 rawBody501_195

def rawBody501_197 : StackLang.HolProg 64 :=
.seq rawBody501_185 rawBody501_196

def rawBody501_198 : StackLang.HolProg 64 :=
.seq rawBody501_184 rawBody501_197

def rawBody501_199 : StackLang.HolProg 64 :=
.seq rawBody501_183 rawBody501_198

def rawBody501_200 : StackLang.HolProg 64 :=
.seq rawBody501_182 rawBody501_199

def rawBody501_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody501_208 : StackLang.HolProg 64 :=
.seq rawBody501_206 rawBody501_207

def rawBody501_209 : StackLang.HolProg 64 :=
.seq rawBody501_205 rawBody501_208

def rawBody501_210 : StackLang.HolProg 64 :=
.seq rawBody501_204 rawBody501_209

def rawBody501_211 : StackLang.HolProg 64 :=
.seq rawBody501_203 rawBody501_210

def rawBody501_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_214 : StackLang.HolProg 64 :=
.seq rawBody501_212 rawBody501_213

def rawBody501_215 : StackLang.HolProg 64 :=
.call (some (rawBody501_211, 0, 501, 8)) (Sum.inl 133) (some (rawBody501_214, 501, 9))

def rawBody501_216 : StackLang.HolProg 64 :=
.seq rawBody501_202 rawBody501_215

def rawBody501_217 : StackLang.HolProg 64 :=
.seq rawBody501_201 rawBody501_216

def rawBody501_218 : StackLang.HolProg 64 :=
.seq rawBody501_200 rawBody501_217

def rawBody501_219 : StackLang.HolProg 64 :=
.seq rawBody501_181 rawBody501_218

def rawBody501_220 : StackLang.HolProg 64 :=
.seq rawBody501_178 rawBody501_219

def rawBody501_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody501_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1572#64)

def rawBody501_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_226 : StackLang.HolProg 64 :=
.seq rawBody501_224 rawBody501_225

def rawBody501_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 11

def rawBody501_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_237 : StackLang.HolProg 64 :=
.seq rawBody501_235 rawBody501_236

def rawBody501_238 : StackLang.HolProg 64 :=
.seq rawBody501_234 rawBody501_237

def rawBody501_239 : StackLang.HolProg 64 :=
.seq rawBody501_233 rawBody501_238

def rawBody501_240 : StackLang.HolProg 64 :=
.seq rawBody501_232 rawBody501_239

def rawBody501_241 : StackLang.HolProg 64 :=
.seq rawBody501_231 rawBody501_240

def rawBody501_242 : StackLang.HolProg 64 :=
.seq rawBody501_230 rawBody501_241

def rawBody501_243 : StackLang.HolProg 64 :=
.seq rawBody501_229 rawBody501_242

def rawBody501_244 : StackLang.HolProg 64 :=
.seq rawBody501_228 rawBody501_243

def rawBody501_245 : StackLang.HolProg 64 :=
.seq rawBody501_227 rawBody501_244

def rawBody501_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_253 : StackLang.HolProg 64 :=
.seq rawBody501_251 rawBody501_252

def rawBody501_254 : StackLang.HolProg 64 :=
.seq rawBody501_250 rawBody501_253

def rawBody501_255 : StackLang.HolProg 64 :=
.seq rawBody501_249 rawBody501_254

def rawBody501_256 : StackLang.HolProg 64 :=
.seq rawBody501_248 rawBody501_255

def rawBody501_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_259 : StackLang.HolProg 64 :=
.seq rawBody501_257 rawBody501_258

def rawBody501_260 : StackLang.HolProg 64 :=
.call (some (rawBody501_256, 0, 501, 10)) (Sum.inl 476) (some (rawBody501_259, 501, 11))

def rawBody501_261 : StackLang.HolProg 64 :=
.seq rawBody501_247 rawBody501_260

def rawBody501_262 : StackLang.HolProg 64 :=
.seq rawBody501_246 rawBody501_261

def rawBody501_263 : StackLang.HolProg 64 :=
.seq rawBody501_245 rawBody501_262

def rawBody501_264 : StackLang.HolProg 64 :=
.seq rawBody501_226 rawBody501_263

def rawBody501_265 : StackLang.HolProg 64 :=
.seq rawBody501_223 rawBody501_264

def rawBody501_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody501_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1573#64)

def rawBody501_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_272 : StackLang.HolProg 64 :=
.seq rawBody501_270 rawBody501_271

def rawBody501_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody501_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody501_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody501_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 13

def rawBody501_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody501_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody501_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody501_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody501_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_283 : StackLang.HolProg 64 :=
.seq rawBody501_281 rawBody501_282

def rawBody501_284 : StackLang.HolProg 64 :=
.seq rawBody501_280 rawBody501_283

def rawBody501_285 : StackLang.HolProg 64 :=
.seq rawBody501_279 rawBody501_284

def rawBody501_286 : StackLang.HolProg 64 :=
.seq rawBody501_278 rawBody501_285

def rawBody501_287 : StackLang.HolProg 64 :=
.seq rawBody501_277 rawBody501_286

def rawBody501_288 : StackLang.HolProg 64 :=
.seq rawBody501_276 rawBody501_287

def rawBody501_289 : StackLang.HolProg 64 :=
.seq rawBody501_275 rawBody501_288

def rawBody501_290 : StackLang.HolProg 64 :=
.seq rawBody501_274 rawBody501_289

def rawBody501_291 : StackLang.HolProg 64 :=
.seq rawBody501_273 rawBody501_290

def rawBody501_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody501_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody501_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody501_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody501_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody501_299 : StackLang.HolProg 64 :=
.seq rawBody501_297 rawBody501_298

def rawBody501_300 : StackLang.HolProg 64 :=
.seq rawBody501_296 rawBody501_299

def rawBody501_301 : StackLang.HolProg 64 :=
.seq rawBody501_295 rawBody501_300

def rawBody501_302 : StackLang.HolProg 64 :=
.seq rawBody501_294 rawBody501_301

def rawBody501_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody501_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody501_305 : StackLang.HolProg 64 :=
.seq rawBody501_303 rawBody501_304

def rawBody501_306 : StackLang.HolProg 64 :=
.call (some (rawBody501_302, 0, 501, 12)) (Sum.inl 490) (some (rawBody501_305, 501, 13))

def rawBody501_307 : StackLang.HolProg 64 :=
.seq rawBody501_293 rawBody501_306

def rawBody501_308 : StackLang.HolProg 64 :=
.seq rawBody501_292 rawBody501_307

def rawBody501_309 : StackLang.HolProg 64 :=
.seq rawBody501_291 rawBody501_308

def rawBody501_310 : StackLang.HolProg 64 :=
.seq rawBody501_272 rawBody501_309

def rawBody501_311 : StackLang.HolProg 64 :=
.seq rawBody501_269 rawBody501_310

def rawBody501_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody501_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody501_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody501_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody501_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody501_317 : StackLang.HolProg 64 :=
.seq rawBody501_315 rawBody501_316

def rawBody501_318 : StackLang.HolProg 64 :=
.seq rawBody501_314 rawBody501_317

def rawBody501_319 : StackLang.HolProg 64 :=
.seq rawBody501_313 rawBody501_318

def rawBody501_320 : StackLang.HolProg 64 :=
.seq rawBody501_312 rawBody501_319

def rawBody501_321 : StackLang.HolProg 64 :=
.seq rawBody501_311 rawBody501_320

def rawBody501_322 : StackLang.HolProg 64 :=
.seq rawBody501_268 rawBody501_321

def rawBody501_323 : StackLang.HolProg 64 :=
.seq rawBody501_267 rawBody501_322

def rawBody501_324 : StackLang.HolProg 64 :=
.seq rawBody501_266 rawBody501_323

def rawBody501_325 : StackLang.HolProg 64 :=
.seq rawBody501_265 rawBody501_324

def rawBody501_326 : StackLang.HolProg 64 :=
.seq rawBody501_222 rawBody501_325

def rawBody501_327 : StackLang.HolProg 64 :=
.seq rawBody501_221 rawBody501_326

def rawBody501_328 : StackLang.HolProg 64 :=
.seq rawBody501_220 rawBody501_327

def rawBody501_329 : StackLang.HolProg 64 :=
.seq rawBody501_177 rawBody501_328

def rawBody501_330 : StackLang.HolProg 64 :=
.seq rawBody501_176 rawBody501_329

def rawBody501_331 : StackLang.HolProg 64 :=
.seq rawBody501_175 rawBody501_330

def rawBody501_332 : StackLang.HolProg 64 :=
.seq rawBody501_104 rawBody501_331

def rawBody501_333 : StackLang.HolProg 64 :=
.seq rawBody501_97 rawBody501_332

def rawBody501_334 : StackLang.HolProg 64 :=
.seq rawBody501_96 rawBody501_333

def rawBody501_335 : StackLang.HolProg 64 :=
.seq rawBody501_95 rawBody501_334

def rawBody501_336 : StackLang.HolProg 64 :=
.seq rawBody501_52 rawBody501_335

def rawBody501_337 : StackLang.HolProg 64 :=
.seq rawBody501_45 rawBody501_336

def rawBody501_338 : StackLang.HolProg 64 :=
.seq rawBody501_44 rawBody501_337

def rawBody501_339 : StackLang.HolProg 64 :=
.seq rawBody501_1 rawBody501_338

def rawBody501_340 : StackLang.HolProg 64 :=
.seq rawBody501_0 rawBody501_339

def raw501 : StackLang.HolProg 64 := rawBody501_340
theorem raw501_eq : StackRawCall.compTop RawInfo.rawInfo (function501 (.list [])).1 = raw501 := by
  kernel_rfl
#print axioms raw501_eq
end InitECandidate.Proofs.BackendStages
