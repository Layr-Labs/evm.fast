import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function514
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody514_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody514_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody514_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1649#64)

def rawBody514_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_5 : StackLang.HolProg 64 :=
.seq rawBody514_3 rawBody514_4

def rawBody514_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody514_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody514_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 3

def rawBody514_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody514_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody514_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody514_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody514_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_16 : StackLang.HolProg 64 :=
.seq rawBody514_14 rawBody514_15

def rawBody514_17 : StackLang.HolProg 64 :=
.seq rawBody514_13 rawBody514_16

def rawBody514_18 : StackLang.HolProg 64 :=
.seq rawBody514_12 rawBody514_17

def rawBody514_19 : StackLang.HolProg 64 :=
.seq rawBody514_11 rawBody514_18

def rawBody514_20 : StackLang.HolProg 64 :=
.seq rawBody514_10 rawBody514_19

def rawBody514_21 : StackLang.HolProg 64 :=
.seq rawBody514_9 rawBody514_20

def rawBody514_22 : StackLang.HolProg 64 :=
.seq rawBody514_8 rawBody514_21

def rawBody514_23 : StackLang.HolProg 64 :=
.seq rawBody514_7 rawBody514_22

def rawBody514_24 : StackLang.HolProg 64 :=
.seq rawBody514_6 rawBody514_23

def rawBody514_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody514_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody514_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody514_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody514_32 : StackLang.HolProg 64 :=
.seq rawBody514_30 rawBody514_31

def rawBody514_33 : StackLang.HolProg 64 :=
.seq rawBody514_29 rawBody514_32

def rawBody514_34 : StackLang.HolProg 64 :=
.seq rawBody514_28 rawBody514_33

def rawBody514_35 : StackLang.HolProg 64 :=
.seq rawBody514_27 rawBody514_34

def rawBody514_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody514_38 : StackLang.HolProg 64 :=
.seq rawBody514_36 rawBody514_37

def rawBody514_39 : StackLang.HolProg 64 :=
.call (some (rawBody514_35, 0, 514, 2)) (Sum.inl 475) (some (rawBody514_38, 514, 3))

def rawBody514_40 : StackLang.HolProg 64 :=
.seq rawBody514_26 rawBody514_39

def rawBody514_41 : StackLang.HolProg 64 :=
.seq rawBody514_25 rawBody514_40

def rawBody514_42 : StackLang.HolProg 64 :=
.seq rawBody514_24 rawBody514_41

def rawBody514_43 : StackLang.HolProg 64 :=
.seq rawBody514_5 rawBody514_42

def rawBody514_44 : StackLang.HolProg 64 :=
.seq rawBody514_2 rawBody514_43

def rawBody514_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody514_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody514_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody514_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody514_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody514_50 : StackLang.HolProg 64 :=
.seq rawBody514_48 rawBody514_49

def rawBody514_51 : StackLang.HolProg 64 :=
.seq rawBody514_47 rawBody514_50

def rawBody514_52 : StackLang.HolProg 64 :=
.seq rawBody514_46 rawBody514_51

def rawBody514_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1650#64)

def rawBody514_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_56 : StackLang.HolProg 64 :=
.seq rawBody514_54 rawBody514_55

def rawBody514_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody514_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody514_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 5

def rawBody514_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody514_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody514_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody514_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody514_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_67 : StackLang.HolProg 64 :=
.seq rawBody514_65 rawBody514_66

def rawBody514_68 : StackLang.HolProg 64 :=
.seq rawBody514_64 rawBody514_67

def rawBody514_69 : StackLang.HolProg 64 :=
.seq rawBody514_63 rawBody514_68

def rawBody514_70 : StackLang.HolProg 64 :=
.seq rawBody514_62 rawBody514_69

def rawBody514_71 : StackLang.HolProg 64 :=
.seq rawBody514_61 rawBody514_70

def rawBody514_72 : StackLang.HolProg 64 :=
.seq rawBody514_60 rawBody514_71

def rawBody514_73 : StackLang.HolProg 64 :=
.seq rawBody514_59 rawBody514_72

def rawBody514_74 : StackLang.HolProg 64 :=
.seq rawBody514_58 rawBody514_73

def rawBody514_75 : StackLang.HolProg 64 :=
.seq rawBody514_57 rawBody514_74

def rawBody514_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody514_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody514_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody514_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody514_83 : StackLang.HolProg 64 :=
.seq rawBody514_81 rawBody514_82

def rawBody514_84 : StackLang.HolProg 64 :=
.seq rawBody514_80 rawBody514_83

def rawBody514_85 : StackLang.HolProg 64 :=
.seq rawBody514_79 rawBody514_84

def rawBody514_86 : StackLang.HolProg 64 :=
.seq rawBody514_78 rawBody514_85

def rawBody514_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody514_89 : StackLang.HolProg 64 :=
.seq rawBody514_87 rawBody514_88

def rawBody514_90 : StackLang.HolProg 64 :=
.call (some (rawBody514_86, 0, 514, 4)) (Sum.inl 475) (some (rawBody514_89, 514, 5))

def rawBody514_91 : StackLang.HolProg 64 :=
.seq rawBody514_77 rawBody514_90

def rawBody514_92 : StackLang.HolProg 64 :=
.seq rawBody514_76 rawBody514_91

def rawBody514_93 : StackLang.HolProg 64 :=
.seq rawBody514_75 rawBody514_92

def rawBody514_94 : StackLang.HolProg 64 :=
.seq rawBody514_56 rawBody514_93

def rawBody514_95 : StackLang.HolProg 64 :=
.seq rawBody514_53 rawBody514_94

def rawBody514_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody514_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody514_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody514_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody514_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody514_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody514_102 : StackLang.HolProg 64 :=
.seq rawBody514_100 rawBody514_101

def rawBody514_103 : StackLang.HolProg 64 :=
.seq rawBody514_99 rawBody514_102

def rawBody514_104 : StackLang.HolProg 64 :=
.seq rawBody514_98 rawBody514_103

def rawBody514_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1651#64)

def rawBody514_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_108 : StackLang.HolProg 64 :=
.seq rawBody514_106 rawBody514_107

def rawBody514_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody514_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody514_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 7

def rawBody514_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody514_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody514_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody514_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody514_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_119 : StackLang.HolProg 64 :=
.seq rawBody514_117 rawBody514_118

def rawBody514_120 : StackLang.HolProg 64 :=
.seq rawBody514_116 rawBody514_119

def rawBody514_121 : StackLang.HolProg 64 :=
.seq rawBody514_115 rawBody514_120

def rawBody514_122 : StackLang.HolProg 64 :=
.seq rawBody514_114 rawBody514_121

def rawBody514_123 : StackLang.HolProg 64 :=
.seq rawBody514_113 rawBody514_122

def rawBody514_124 : StackLang.HolProg 64 :=
.seq rawBody514_112 rawBody514_123

def rawBody514_125 : StackLang.HolProg 64 :=
.seq rawBody514_111 rawBody514_124

def rawBody514_126 : StackLang.HolProg 64 :=
.seq rawBody514_110 rawBody514_125

def rawBody514_127 : StackLang.HolProg 64 :=
.seq rawBody514_109 rawBody514_126

def rawBody514_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody514_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody514_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody514_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody514_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody514_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody514_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody514_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody514_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody514_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody514_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody514_142 : StackLang.HolProg 64 :=
.seq rawBody514_140 rawBody514_141

def rawBody514_143 : StackLang.HolProg 64 :=
.seq rawBody514_139 rawBody514_142

def rawBody514_144 : StackLang.HolProg 64 :=
.seq rawBody514_138 rawBody514_143

def rawBody514_145 : StackLang.HolProg 64 :=
.seq rawBody514_137 rawBody514_144

def rawBody514_146 : StackLang.HolProg 64 :=
.seq rawBody514_136 rawBody514_145

def rawBody514_147 : StackLang.HolProg 64 :=
.seq rawBody514_135 rawBody514_146

def rawBody514_148 : StackLang.HolProg 64 :=
.seq rawBody514_134 rawBody514_147

def rawBody514_149 : StackLang.HolProg 64 :=
.seq rawBody514_133 rawBody514_148

def rawBody514_150 : StackLang.HolProg 64 :=
.seq rawBody514_132 rawBody514_149

def rawBody514_151 : StackLang.HolProg 64 :=
.seq rawBody514_131 rawBody514_150

def rawBody514_152 : StackLang.HolProg 64 :=
.seq rawBody514_130 rawBody514_151

def rawBody514_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody514_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody514_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody514_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody514_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody514_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody514_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody514_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody514_161 : StackLang.HolProg 64 :=
.seq rawBody514_159 rawBody514_160

def rawBody514_162 : StackLang.HolProg 64 :=
.seq rawBody514_158 rawBody514_161

def rawBody514_163 : StackLang.HolProg 64 :=
.seq rawBody514_157 rawBody514_162

def rawBody514_164 : StackLang.HolProg 64 :=
.seq rawBody514_156 rawBody514_163

def rawBody514_165 : StackLang.HolProg 64 :=
.seq rawBody514_155 rawBody514_164

def rawBody514_166 : StackLang.HolProg 64 :=
.seq rawBody514_154 rawBody514_165

def rawBody514_167 : StackLang.HolProg 64 :=
.seq rawBody514_153 rawBody514_166

def rawBody514_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody514_169 : StackLang.HolProg 64 :=
.seq rawBody514_167 rawBody514_168

def rawBody514_170 : StackLang.HolProg 64 :=
.call (some (rawBody514_152, 0, 514, 6)) (Sum.inl 470) (some (rawBody514_169, 514, 7))

def rawBody514_171 : StackLang.HolProg 64 :=
.seq rawBody514_129 rawBody514_170

def rawBody514_172 : StackLang.HolProg 64 :=
.seq rawBody514_128 rawBody514_171

def rawBody514_173 : StackLang.HolProg 64 :=
.seq rawBody514_127 rawBody514_172

def rawBody514_174 : StackLang.HolProg 64 :=
.seq rawBody514_108 rawBody514_173

def rawBody514_175 : StackLang.HolProg 64 :=
.seq rawBody514_105 rawBody514_174

def rawBody514_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody514_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody514_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody514_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody514_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody514_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1652#64)

def rawBody514_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_189 : StackLang.HolProg 64 :=
.seq rawBody514_187 rawBody514_188

def rawBody514_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody514_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody514_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 9

def rawBody514_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody514_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody514_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody514_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody514_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_200 : StackLang.HolProg 64 :=
.seq rawBody514_198 rawBody514_199

def rawBody514_201 : StackLang.HolProg 64 :=
.seq rawBody514_197 rawBody514_200

def rawBody514_202 : StackLang.HolProg 64 :=
.seq rawBody514_196 rawBody514_201

def rawBody514_203 : StackLang.HolProg 64 :=
.seq rawBody514_195 rawBody514_202

def rawBody514_204 : StackLang.HolProg 64 :=
.seq rawBody514_194 rawBody514_203

def rawBody514_205 : StackLang.HolProg 64 :=
.seq rawBody514_193 rawBody514_204

def rawBody514_206 : StackLang.HolProg 64 :=
.seq rawBody514_192 rawBody514_205

def rawBody514_207 : StackLang.HolProg 64 :=
.seq rawBody514_191 rawBody514_206

def rawBody514_208 : StackLang.HolProg 64 :=
.seq rawBody514_190 rawBody514_207

def rawBody514_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody514_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody514_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody514_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_216 : StackLang.HolProg 64 :=
.seq rawBody514_214 rawBody514_215

def rawBody514_217 : StackLang.HolProg 64 :=
.seq rawBody514_213 rawBody514_216

def rawBody514_218 : StackLang.HolProg 64 :=
.seq rawBody514_212 rawBody514_217

def rawBody514_219 : StackLang.HolProg 64 :=
.seq rawBody514_211 rawBody514_218

def rawBody514_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody514_222 : StackLang.HolProg 64 :=
.seq rawBody514_220 rawBody514_221

def rawBody514_223 : StackLang.HolProg 64 :=
.call (some (rawBody514_219, 0, 514, 8)) (Sum.inl 476) (some (rawBody514_222, 514, 9))

def rawBody514_224 : StackLang.HolProg 64 :=
.seq rawBody514_210 rawBody514_223

def rawBody514_225 : StackLang.HolProg 64 :=
.seq rawBody514_209 rawBody514_224

def rawBody514_226 : StackLang.HolProg 64 :=
.seq rawBody514_208 rawBody514_225

def rawBody514_227 : StackLang.HolProg 64 :=
.seq rawBody514_189 rawBody514_226

def rawBody514_228 : StackLang.HolProg 64 :=
.seq rawBody514_186 rawBody514_227

def rawBody514_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody514_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody514_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1653#64)

def rawBody514_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_235 : StackLang.HolProg 64 :=
.seq rawBody514_233 rawBody514_234

def rawBody514_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody514_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody514_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody514_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 11

def rawBody514_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody514_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody514_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody514_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody514_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_246 : StackLang.HolProg 64 :=
.seq rawBody514_244 rawBody514_245

def rawBody514_247 : StackLang.HolProg 64 :=
.seq rawBody514_243 rawBody514_246

def rawBody514_248 : StackLang.HolProg 64 :=
.seq rawBody514_242 rawBody514_247

def rawBody514_249 : StackLang.HolProg 64 :=
.seq rawBody514_241 rawBody514_248

def rawBody514_250 : StackLang.HolProg 64 :=
.seq rawBody514_240 rawBody514_249

def rawBody514_251 : StackLang.HolProg 64 :=
.seq rawBody514_239 rawBody514_250

def rawBody514_252 : StackLang.HolProg 64 :=
.seq rawBody514_238 rawBody514_251

def rawBody514_253 : StackLang.HolProg 64 :=
.seq rawBody514_237 rawBody514_252

def rawBody514_254 : StackLang.HolProg 64 :=
.seq rawBody514_236 rawBody514_253

def rawBody514_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody514_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody514_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody514_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody514_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody514_262 : StackLang.HolProg 64 :=
.seq rawBody514_260 rawBody514_261

def rawBody514_263 : StackLang.HolProg 64 :=
.seq rawBody514_259 rawBody514_262

def rawBody514_264 : StackLang.HolProg 64 :=
.seq rawBody514_258 rawBody514_263

def rawBody514_265 : StackLang.HolProg 64 :=
.seq rawBody514_257 rawBody514_264

def rawBody514_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody514_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody514_268 : StackLang.HolProg 64 :=
.seq rawBody514_266 rawBody514_267

def rawBody514_269 : StackLang.HolProg 64 :=
.call (some (rawBody514_265, 0, 514, 10)) (Sum.inl 490) (some (rawBody514_268, 514, 11))

def rawBody514_270 : StackLang.HolProg 64 :=
.seq rawBody514_256 rawBody514_269

def rawBody514_271 : StackLang.HolProg 64 :=
.seq rawBody514_255 rawBody514_270

def rawBody514_272 : StackLang.HolProg 64 :=
.seq rawBody514_254 rawBody514_271

def rawBody514_273 : StackLang.HolProg 64 :=
.seq rawBody514_235 rawBody514_272

def rawBody514_274 : StackLang.HolProg 64 :=
.seq rawBody514_232 rawBody514_273

def rawBody514_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody514_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody514_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody514_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody514_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody514_280 : StackLang.HolProg 64 :=
.seq rawBody514_278 rawBody514_279

def rawBody514_281 : StackLang.HolProg 64 :=
.seq rawBody514_277 rawBody514_280

def rawBody514_282 : StackLang.HolProg 64 :=
.seq rawBody514_276 rawBody514_281

def rawBody514_283 : StackLang.HolProg 64 :=
.seq rawBody514_275 rawBody514_282

def rawBody514_284 : StackLang.HolProg 64 :=
.seq rawBody514_274 rawBody514_283

def rawBody514_285 : StackLang.HolProg 64 :=
.seq rawBody514_231 rawBody514_284

def rawBody514_286 : StackLang.HolProg 64 :=
.seq rawBody514_230 rawBody514_285

def rawBody514_287 : StackLang.HolProg 64 :=
.seq rawBody514_229 rawBody514_286

def rawBody514_288 : StackLang.HolProg 64 :=
.seq rawBody514_228 rawBody514_287

def rawBody514_289 : StackLang.HolProg 64 :=
.seq rawBody514_185 rawBody514_288

def rawBody514_290 : StackLang.HolProg 64 :=
.seq rawBody514_184 rawBody514_289

def rawBody514_291 : StackLang.HolProg 64 :=
.seq rawBody514_183 rawBody514_290

def rawBody514_292 : StackLang.HolProg 64 :=
.seq rawBody514_182 rawBody514_291

def rawBody514_293 : StackLang.HolProg 64 :=
.seq rawBody514_181 rawBody514_292

def rawBody514_294 : StackLang.HolProg 64 :=
.seq rawBody514_180 rawBody514_293

def rawBody514_295 : StackLang.HolProg 64 :=
.seq rawBody514_179 rawBody514_294

def rawBody514_296 : StackLang.HolProg 64 :=
.seq rawBody514_178 rawBody514_295

def rawBody514_297 : StackLang.HolProg 64 :=
.seq rawBody514_177 rawBody514_296

def rawBody514_298 : StackLang.HolProg 64 :=
.seq rawBody514_176 rawBody514_297

def rawBody514_299 : StackLang.HolProg 64 :=
.seq rawBody514_175 rawBody514_298

def rawBody514_300 : StackLang.HolProg 64 :=
.seq rawBody514_104 rawBody514_299

def rawBody514_301 : StackLang.HolProg 64 :=
.seq rawBody514_97 rawBody514_300

def rawBody514_302 : StackLang.HolProg 64 :=
.seq rawBody514_96 rawBody514_301

def rawBody514_303 : StackLang.HolProg 64 :=
.seq rawBody514_95 rawBody514_302

def rawBody514_304 : StackLang.HolProg 64 :=
.seq rawBody514_52 rawBody514_303

def rawBody514_305 : StackLang.HolProg 64 :=
.seq rawBody514_45 rawBody514_304

def rawBody514_306 : StackLang.HolProg 64 :=
.seq rawBody514_44 rawBody514_305

def rawBody514_307 : StackLang.HolProg 64 :=
.seq rawBody514_1 rawBody514_306

def rawBody514_308 : StackLang.HolProg 64 :=
.seq rawBody514_0 rawBody514_307

def raw514 : StackLang.HolProg 64 := rawBody514_308
theorem raw514_eq : StackRawCall.compTop RawInfo.rawInfo (function514 (.list [])).1 = raw514 := by
  kernel_rfl
#print axioms raw514_eq
end InitECandidate.Proofs.BackendStages
