import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function502
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody502_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody502_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody502_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1574#64)

def rawBody502_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_5 : StackLang.HolProg 64 :=
.seq rawBody502_3 rawBody502_4

def rawBody502_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 3

def rawBody502_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_16 : StackLang.HolProg 64 :=
.seq rawBody502_14 rawBody502_15

def rawBody502_17 : StackLang.HolProg 64 :=
.seq rawBody502_13 rawBody502_16

def rawBody502_18 : StackLang.HolProg 64 :=
.seq rawBody502_12 rawBody502_17

def rawBody502_19 : StackLang.HolProg 64 :=
.seq rawBody502_11 rawBody502_18

def rawBody502_20 : StackLang.HolProg 64 :=
.seq rawBody502_10 rawBody502_19

def rawBody502_21 : StackLang.HolProg 64 :=
.seq rawBody502_9 rawBody502_20

def rawBody502_22 : StackLang.HolProg 64 :=
.seq rawBody502_8 rawBody502_21

def rawBody502_23 : StackLang.HolProg 64 :=
.seq rawBody502_7 rawBody502_22

def rawBody502_24 : StackLang.HolProg 64 :=
.seq rawBody502_6 rawBody502_23

def rawBody502_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody502_32 : StackLang.HolProg 64 :=
.seq rawBody502_30 rawBody502_31

def rawBody502_33 : StackLang.HolProg 64 :=
.seq rawBody502_29 rawBody502_32

def rawBody502_34 : StackLang.HolProg 64 :=
.seq rawBody502_28 rawBody502_33

def rawBody502_35 : StackLang.HolProg 64 :=
.seq rawBody502_27 rawBody502_34

def rawBody502_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_38 : StackLang.HolProg 64 :=
.seq rawBody502_36 rawBody502_37

def rawBody502_39 : StackLang.HolProg 64 :=
.call (some (rawBody502_35, 0, 502, 2)) (Sum.inl 475) (some (rawBody502_38, 502, 3))

def rawBody502_40 : StackLang.HolProg 64 :=
.seq rawBody502_26 rawBody502_39

def rawBody502_41 : StackLang.HolProg 64 :=
.seq rawBody502_25 rawBody502_40

def rawBody502_42 : StackLang.HolProg 64 :=
.seq rawBody502_24 rawBody502_41

def rawBody502_43 : StackLang.HolProg 64 :=
.seq rawBody502_5 rawBody502_42

def rawBody502_44 : StackLang.HolProg 64 :=
.seq rawBody502_2 rawBody502_43

def rawBody502_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody502_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody502_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody502_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody502_50 : StackLang.HolProg 64 :=
.seq rawBody502_48 rawBody502_49

def rawBody502_51 : StackLang.HolProg 64 :=
.seq rawBody502_47 rawBody502_50

def rawBody502_52 : StackLang.HolProg 64 :=
.seq rawBody502_46 rawBody502_51

def rawBody502_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1575#64)

def rawBody502_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_56 : StackLang.HolProg 64 :=
.seq rawBody502_54 rawBody502_55

def rawBody502_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 5

def rawBody502_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_67 : StackLang.HolProg 64 :=
.seq rawBody502_65 rawBody502_66

def rawBody502_68 : StackLang.HolProg 64 :=
.seq rawBody502_64 rawBody502_67

def rawBody502_69 : StackLang.HolProg 64 :=
.seq rawBody502_63 rawBody502_68

def rawBody502_70 : StackLang.HolProg 64 :=
.seq rawBody502_62 rawBody502_69

def rawBody502_71 : StackLang.HolProg 64 :=
.seq rawBody502_61 rawBody502_70

def rawBody502_72 : StackLang.HolProg 64 :=
.seq rawBody502_60 rawBody502_71

def rawBody502_73 : StackLang.HolProg 64 :=
.seq rawBody502_59 rawBody502_72

def rawBody502_74 : StackLang.HolProg 64 :=
.seq rawBody502_58 rawBody502_73

def rawBody502_75 : StackLang.HolProg 64 :=
.seq rawBody502_57 rawBody502_74

def rawBody502_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody502_83 : StackLang.HolProg 64 :=
.seq rawBody502_81 rawBody502_82

def rawBody502_84 : StackLang.HolProg 64 :=
.seq rawBody502_80 rawBody502_83

def rawBody502_85 : StackLang.HolProg 64 :=
.seq rawBody502_79 rawBody502_84

def rawBody502_86 : StackLang.HolProg 64 :=
.seq rawBody502_78 rawBody502_85

def rawBody502_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_89 : StackLang.HolProg 64 :=
.seq rawBody502_87 rawBody502_88

def rawBody502_90 : StackLang.HolProg 64 :=
.call (some (rawBody502_86, 0, 502, 4)) (Sum.inl 475) (some (rawBody502_89, 502, 5))

def rawBody502_91 : StackLang.HolProg 64 :=
.seq rawBody502_77 rawBody502_90

def rawBody502_92 : StackLang.HolProg 64 :=
.seq rawBody502_76 rawBody502_91

def rawBody502_93 : StackLang.HolProg 64 :=
.seq rawBody502_75 rawBody502_92

def rawBody502_94 : StackLang.HolProg 64 :=
.seq rawBody502_56 rawBody502_93

def rawBody502_95 : StackLang.HolProg 64 :=
.seq rawBody502_53 rawBody502_94

def rawBody502_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody502_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody502_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody502_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody502_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody502_102 : StackLang.HolProg 64 :=
.seq rawBody502_100 rawBody502_101

def rawBody502_103 : StackLang.HolProg 64 :=
.seq rawBody502_99 rawBody502_102

def rawBody502_104 : StackLang.HolProg 64 :=
.seq rawBody502_98 rawBody502_103

def rawBody502_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1576#64)

def rawBody502_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_108 : StackLang.HolProg 64 :=
.seq rawBody502_106 rawBody502_107

def rawBody502_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 7

def rawBody502_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_119 : StackLang.HolProg 64 :=
.seq rawBody502_117 rawBody502_118

def rawBody502_120 : StackLang.HolProg 64 :=
.seq rawBody502_116 rawBody502_119

def rawBody502_121 : StackLang.HolProg 64 :=
.seq rawBody502_115 rawBody502_120

def rawBody502_122 : StackLang.HolProg 64 :=
.seq rawBody502_114 rawBody502_121

def rawBody502_123 : StackLang.HolProg 64 :=
.seq rawBody502_113 rawBody502_122

def rawBody502_124 : StackLang.HolProg 64 :=
.seq rawBody502_112 rawBody502_123

def rawBody502_125 : StackLang.HolProg 64 :=
.seq rawBody502_111 rawBody502_124

def rawBody502_126 : StackLang.HolProg 64 :=
.seq rawBody502_110 rawBody502_125

def rawBody502_127 : StackLang.HolProg 64 :=
.seq rawBody502_109 rawBody502_126

def rawBody502_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody502_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody502_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody502_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody502_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody502_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody502_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody502_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody502_142 : StackLang.HolProg 64 :=
.seq rawBody502_140 rawBody502_141

def rawBody502_143 : StackLang.HolProg 64 :=
.seq rawBody502_139 rawBody502_142

def rawBody502_144 : StackLang.HolProg 64 :=
.seq rawBody502_138 rawBody502_143

def rawBody502_145 : StackLang.HolProg 64 :=
.seq rawBody502_137 rawBody502_144

def rawBody502_146 : StackLang.HolProg 64 :=
.seq rawBody502_136 rawBody502_145

def rawBody502_147 : StackLang.HolProg 64 :=
.seq rawBody502_135 rawBody502_146

def rawBody502_148 : StackLang.HolProg 64 :=
.seq rawBody502_134 rawBody502_147

def rawBody502_149 : StackLang.HolProg 64 :=
.seq rawBody502_133 rawBody502_148

def rawBody502_150 : StackLang.HolProg 64 :=
.seq rawBody502_132 rawBody502_149

def rawBody502_151 : StackLang.HolProg 64 :=
.seq rawBody502_131 rawBody502_150

def rawBody502_152 : StackLang.HolProg 64 :=
.seq rawBody502_130 rawBody502_151

def rawBody502_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody502_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody502_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody502_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody502_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody502_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody502_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody502_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody502_161 : StackLang.HolProg 64 :=
.seq rawBody502_159 rawBody502_160

def rawBody502_162 : StackLang.HolProg 64 :=
.seq rawBody502_158 rawBody502_161

def rawBody502_163 : StackLang.HolProg 64 :=
.seq rawBody502_157 rawBody502_162

def rawBody502_164 : StackLang.HolProg 64 :=
.seq rawBody502_156 rawBody502_163

def rawBody502_165 : StackLang.HolProg 64 :=
.seq rawBody502_155 rawBody502_164

def rawBody502_166 : StackLang.HolProg 64 :=
.seq rawBody502_154 rawBody502_165

def rawBody502_167 : StackLang.HolProg 64 :=
.seq rawBody502_153 rawBody502_166

def rawBody502_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_169 : StackLang.HolProg 64 :=
.seq rawBody502_167 rawBody502_168

def rawBody502_170 : StackLang.HolProg 64 :=
.call (some (rawBody502_152, 0, 502, 6)) (Sum.inl 470) (some (rawBody502_169, 502, 7))

def rawBody502_171 : StackLang.HolProg 64 :=
.seq rawBody502_129 rawBody502_170

def rawBody502_172 : StackLang.HolProg 64 :=
.seq rawBody502_128 rawBody502_171

def rawBody502_173 : StackLang.HolProg 64 :=
.seq rawBody502_127 rawBody502_172

def rawBody502_174 : StackLang.HolProg 64 :=
.seq rawBody502_108 rawBody502_173

def rawBody502_175 : StackLang.HolProg 64 :=
.seq rawBody502_105 rawBody502_174

def rawBody502_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody502_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1577#64)

def rawBody502_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_181 : StackLang.HolProg 64 :=
.seq rawBody502_179 rawBody502_180

def rawBody502_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 9

def rawBody502_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_192 : StackLang.HolProg 64 :=
.seq rawBody502_190 rawBody502_191

def rawBody502_193 : StackLang.HolProg 64 :=
.seq rawBody502_189 rawBody502_192

def rawBody502_194 : StackLang.HolProg 64 :=
.seq rawBody502_188 rawBody502_193

def rawBody502_195 : StackLang.HolProg 64 :=
.seq rawBody502_187 rawBody502_194

def rawBody502_196 : StackLang.HolProg 64 :=
.seq rawBody502_186 rawBody502_195

def rawBody502_197 : StackLang.HolProg 64 :=
.seq rawBody502_185 rawBody502_196

def rawBody502_198 : StackLang.HolProg 64 :=
.seq rawBody502_184 rawBody502_197

def rawBody502_199 : StackLang.HolProg 64 :=
.seq rawBody502_183 rawBody502_198

def rawBody502_200 : StackLang.HolProg 64 :=
.seq rawBody502_182 rawBody502_199

def rawBody502_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody502_208 : StackLang.HolProg 64 :=
.seq rawBody502_206 rawBody502_207

def rawBody502_209 : StackLang.HolProg 64 :=
.seq rawBody502_205 rawBody502_208

def rawBody502_210 : StackLang.HolProg 64 :=
.seq rawBody502_204 rawBody502_209

def rawBody502_211 : StackLang.HolProg 64 :=
.seq rawBody502_203 rawBody502_210

def rawBody502_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_214 : StackLang.HolProg 64 :=
.seq rawBody502_212 rawBody502_213

def rawBody502_215 : StackLang.HolProg 64 :=
.call (some (rawBody502_211, 0, 502, 8)) (Sum.inl 131) (some (rawBody502_214, 502, 9))

def rawBody502_216 : StackLang.HolProg 64 :=
.seq rawBody502_202 rawBody502_215

def rawBody502_217 : StackLang.HolProg 64 :=
.seq rawBody502_201 rawBody502_216

def rawBody502_218 : StackLang.HolProg 64 :=
.seq rawBody502_200 rawBody502_217

def rawBody502_219 : StackLang.HolProg 64 :=
.seq rawBody502_181 rawBody502_218

def rawBody502_220 : StackLang.HolProg 64 :=
.seq rawBody502_178 rawBody502_219

def rawBody502_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody502_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1578#64)

def rawBody502_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_226 : StackLang.HolProg 64 :=
.seq rawBody502_224 rawBody502_225

def rawBody502_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 11

def rawBody502_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_237 : StackLang.HolProg 64 :=
.seq rawBody502_235 rawBody502_236

def rawBody502_238 : StackLang.HolProg 64 :=
.seq rawBody502_234 rawBody502_237

def rawBody502_239 : StackLang.HolProg 64 :=
.seq rawBody502_233 rawBody502_238

def rawBody502_240 : StackLang.HolProg 64 :=
.seq rawBody502_232 rawBody502_239

def rawBody502_241 : StackLang.HolProg 64 :=
.seq rawBody502_231 rawBody502_240

def rawBody502_242 : StackLang.HolProg 64 :=
.seq rawBody502_230 rawBody502_241

def rawBody502_243 : StackLang.HolProg 64 :=
.seq rawBody502_229 rawBody502_242

def rawBody502_244 : StackLang.HolProg 64 :=
.seq rawBody502_228 rawBody502_243

def rawBody502_245 : StackLang.HolProg 64 :=
.seq rawBody502_227 rawBody502_244

def rawBody502_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_253 : StackLang.HolProg 64 :=
.seq rawBody502_251 rawBody502_252

def rawBody502_254 : StackLang.HolProg 64 :=
.seq rawBody502_250 rawBody502_253

def rawBody502_255 : StackLang.HolProg 64 :=
.seq rawBody502_249 rawBody502_254

def rawBody502_256 : StackLang.HolProg 64 :=
.seq rawBody502_248 rawBody502_255

def rawBody502_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_259 : StackLang.HolProg 64 :=
.seq rawBody502_257 rawBody502_258

def rawBody502_260 : StackLang.HolProg 64 :=
.call (some (rawBody502_256, 0, 502, 10)) (Sum.inl 476) (some (rawBody502_259, 502, 11))

def rawBody502_261 : StackLang.HolProg 64 :=
.seq rawBody502_247 rawBody502_260

def rawBody502_262 : StackLang.HolProg 64 :=
.seq rawBody502_246 rawBody502_261

def rawBody502_263 : StackLang.HolProg 64 :=
.seq rawBody502_245 rawBody502_262

def rawBody502_264 : StackLang.HolProg 64 :=
.seq rawBody502_226 rawBody502_263

def rawBody502_265 : StackLang.HolProg 64 :=
.seq rawBody502_223 rawBody502_264

def rawBody502_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody502_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1579#64)

def rawBody502_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_272 : StackLang.HolProg 64 :=
.seq rawBody502_270 rawBody502_271

def rawBody502_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody502_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody502_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody502_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 13

def rawBody502_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody502_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody502_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody502_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody502_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_283 : StackLang.HolProg 64 :=
.seq rawBody502_281 rawBody502_282

def rawBody502_284 : StackLang.HolProg 64 :=
.seq rawBody502_280 rawBody502_283

def rawBody502_285 : StackLang.HolProg 64 :=
.seq rawBody502_279 rawBody502_284

def rawBody502_286 : StackLang.HolProg 64 :=
.seq rawBody502_278 rawBody502_285

def rawBody502_287 : StackLang.HolProg 64 :=
.seq rawBody502_277 rawBody502_286

def rawBody502_288 : StackLang.HolProg 64 :=
.seq rawBody502_276 rawBody502_287

def rawBody502_289 : StackLang.HolProg 64 :=
.seq rawBody502_275 rawBody502_288

def rawBody502_290 : StackLang.HolProg 64 :=
.seq rawBody502_274 rawBody502_289

def rawBody502_291 : StackLang.HolProg 64 :=
.seq rawBody502_273 rawBody502_290

def rawBody502_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody502_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody502_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody502_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody502_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody502_299 : StackLang.HolProg 64 :=
.seq rawBody502_297 rawBody502_298

def rawBody502_300 : StackLang.HolProg 64 :=
.seq rawBody502_296 rawBody502_299

def rawBody502_301 : StackLang.HolProg 64 :=
.seq rawBody502_295 rawBody502_300

def rawBody502_302 : StackLang.HolProg 64 :=
.seq rawBody502_294 rawBody502_301

def rawBody502_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody502_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody502_305 : StackLang.HolProg 64 :=
.seq rawBody502_303 rawBody502_304

def rawBody502_306 : StackLang.HolProg 64 :=
.call (some (rawBody502_302, 0, 502, 12)) (Sum.inl 490) (some (rawBody502_305, 502, 13))

def rawBody502_307 : StackLang.HolProg 64 :=
.seq rawBody502_293 rawBody502_306

def rawBody502_308 : StackLang.HolProg 64 :=
.seq rawBody502_292 rawBody502_307

def rawBody502_309 : StackLang.HolProg 64 :=
.seq rawBody502_291 rawBody502_308

def rawBody502_310 : StackLang.HolProg 64 :=
.seq rawBody502_272 rawBody502_309

def rawBody502_311 : StackLang.HolProg 64 :=
.seq rawBody502_269 rawBody502_310

def rawBody502_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody502_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody502_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody502_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody502_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody502_317 : StackLang.HolProg 64 :=
.seq rawBody502_315 rawBody502_316

def rawBody502_318 : StackLang.HolProg 64 :=
.seq rawBody502_314 rawBody502_317

def rawBody502_319 : StackLang.HolProg 64 :=
.seq rawBody502_313 rawBody502_318

def rawBody502_320 : StackLang.HolProg 64 :=
.seq rawBody502_312 rawBody502_319

def rawBody502_321 : StackLang.HolProg 64 :=
.seq rawBody502_311 rawBody502_320

def rawBody502_322 : StackLang.HolProg 64 :=
.seq rawBody502_268 rawBody502_321

def rawBody502_323 : StackLang.HolProg 64 :=
.seq rawBody502_267 rawBody502_322

def rawBody502_324 : StackLang.HolProg 64 :=
.seq rawBody502_266 rawBody502_323

def rawBody502_325 : StackLang.HolProg 64 :=
.seq rawBody502_265 rawBody502_324

def rawBody502_326 : StackLang.HolProg 64 :=
.seq rawBody502_222 rawBody502_325

def rawBody502_327 : StackLang.HolProg 64 :=
.seq rawBody502_221 rawBody502_326

def rawBody502_328 : StackLang.HolProg 64 :=
.seq rawBody502_220 rawBody502_327

def rawBody502_329 : StackLang.HolProg 64 :=
.seq rawBody502_177 rawBody502_328

def rawBody502_330 : StackLang.HolProg 64 :=
.seq rawBody502_176 rawBody502_329

def rawBody502_331 : StackLang.HolProg 64 :=
.seq rawBody502_175 rawBody502_330

def rawBody502_332 : StackLang.HolProg 64 :=
.seq rawBody502_104 rawBody502_331

def rawBody502_333 : StackLang.HolProg 64 :=
.seq rawBody502_97 rawBody502_332

def rawBody502_334 : StackLang.HolProg 64 :=
.seq rawBody502_96 rawBody502_333

def rawBody502_335 : StackLang.HolProg 64 :=
.seq rawBody502_95 rawBody502_334

def rawBody502_336 : StackLang.HolProg 64 :=
.seq rawBody502_52 rawBody502_335

def rawBody502_337 : StackLang.HolProg 64 :=
.seq rawBody502_45 rawBody502_336

def rawBody502_338 : StackLang.HolProg 64 :=
.seq rawBody502_44 rawBody502_337

def rawBody502_339 : StackLang.HolProg 64 :=
.seq rawBody502_1 rawBody502_338

def rawBody502_340 : StackLang.HolProg 64 :=
.seq rawBody502_0 rawBody502_339

def raw502 : StackLang.HolProg 64 := rawBody502_340
theorem raw502_eq : StackRawCall.compTop RawInfo.rawInfo (function502 (.list [])).1 = raw502 := by
  kernel_rfl
#print axioms raw502_eq
end InitECandidate.Proofs.BackendStages
