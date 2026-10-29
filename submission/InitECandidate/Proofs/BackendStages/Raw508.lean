import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function508
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody508_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody508_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody508_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1614#64)

def rawBody508_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_5 : StackLang.HolProg 64 :=
.seq rawBody508_3 rawBody508_4

def rawBody508_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 3

def rawBody508_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_16 : StackLang.HolProg 64 :=
.seq rawBody508_14 rawBody508_15

def rawBody508_17 : StackLang.HolProg 64 :=
.seq rawBody508_13 rawBody508_16

def rawBody508_18 : StackLang.HolProg 64 :=
.seq rawBody508_12 rawBody508_17

def rawBody508_19 : StackLang.HolProg 64 :=
.seq rawBody508_11 rawBody508_18

def rawBody508_20 : StackLang.HolProg 64 :=
.seq rawBody508_10 rawBody508_19

def rawBody508_21 : StackLang.HolProg 64 :=
.seq rawBody508_9 rawBody508_20

def rawBody508_22 : StackLang.HolProg 64 :=
.seq rawBody508_8 rawBody508_21

def rawBody508_23 : StackLang.HolProg 64 :=
.seq rawBody508_7 rawBody508_22

def rawBody508_24 : StackLang.HolProg 64 :=
.seq rawBody508_6 rawBody508_23

def rawBody508_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody508_32 : StackLang.HolProg 64 :=
.seq rawBody508_30 rawBody508_31

def rawBody508_33 : StackLang.HolProg 64 :=
.seq rawBody508_29 rawBody508_32

def rawBody508_34 : StackLang.HolProg 64 :=
.seq rawBody508_28 rawBody508_33

def rawBody508_35 : StackLang.HolProg 64 :=
.seq rawBody508_27 rawBody508_34

def rawBody508_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_38 : StackLang.HolProg 64 :=
.seq rawBody508_36 rawBody508_37

def rawBody508_39 : StackLang.HolProg 64 :=
.call (some (rawBody508_35, 0, 508, 2)) (Sum.inl 475) (some (rawBody508_38, 508, 3))

def rawBody508_40 : StackLang.HolProg 64 :=
.seq rawBody508_26 rawBody508_39

def rawBody508_41 : StackLang.HolProg 64 :=
.seq rawBody508_25 rawBody508_40

def rawBody508_42 : StackLang.HolProg 64 :=
.seq rawBody508_24 rawBody508_41

def rawBody508_43 : StackLang.HolProg 64 :=
.seq rawBody508_5 rawBody508_42

def rawBody508_44 : StackLang.HolProg 64 :=
.seq rawBody508_2 rawBody508_43

def rawBody508_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody508_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody508_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody508_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody508_50 : StackLang.HolProg 64 :=
.seq rawBody508_48 rawBody508_49

def rawBody508_51 : StackLang.HolProg 64 :=
.seq rawBody508_47 rawBody508_50

def rawBody508_52 : StackLang.HolProg 64 :=
.seq rawBody508_46 rawBody508_51

def rawBody508_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1615#64)

def rawBody508_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_56 : StackLang.HolProg 64 :=
.seq rawBody508_54 rawBody508_55

def rawBody508_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 5

def rawBody508_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_67 : StackLang.HolProg 64 :=
.seq rawBody508_65 rawBody508_66

def rawBody508_68 : StackLang.HolProg 64 :=
.seq rawBody508_64 rawBody508_67

def rawBody508_69 : StackLang.HolProg 64 :=
.seq rawBody508_63 rawBody508_68

def rawBody508_70 : StackLang.HolProg 64 :=
.seq rawBody508_62 rawBody508_69

def rawBody508_71 : StackLang.HolProg 64 :=
.seq rawBody508_61 rawBody508_70

def rawBody508_72 : StackLang.HolProg 64 :=
.seq rawBody508_60 rawBody508_71

def rawBody508_73 : StackLang.HolProg 64 :=
.seq rawBody508_59 rawBody508_72

def rawBody508_74 : StackLang.HolProg 64 :=
.seq rawBody508_58 rawBody508_73

def rawBody508_75 : StackLang.HolProg 64 :=
.seq rawBody508_57 rawBody508_74

def rawBody508_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody508_83 : StackLang.HolProg 64 :=
.seq rawBody508_81 rawBody508_82

def rawBody508_84 : StackLang.HolProg 64 :=
.seq rawBody508_80 rawBody508_83

def rawBody508_85 : StackLang.HolProg 64 :=
.seq rawBody508_79 rawBody508_84

def rawBody508_86 : StackLang.HolProg 64 :=
.seq rawBody508_78 rawBody508_85

def rawBody508_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_89 : StackLang.HolProg 64 :=
.seq rawBody508_87 rawBody508_88

def rawBody508_90 : StackLang.HolProg 64 :=
.call (some (rawBody508_86, 0, 508, 4)) (Sum.inl 475) (some (rawBody508_89, 508, 5))

def rawBody508_91 : StackLang.HolProg 64 :=
.seq rawBody508_77 rawBody508_90

def rawBody508_92 : StackLang.HolProg 64 :=
.seq rawBody508_76 rawBody508_91

def rawBody508_93 : StackLang.HolProg 64 :=
.seq rawBody508_75 rawBody508_92

def rawBody508_94 : StackLang.HolProg 64 :=
.seq rawBody508_56 rawBody508_93

def rawBody508_95 : StackLang.HolProg 64 :=
.seq rawBody508_53 rawBody508_94

def rawBody508_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody508_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody508_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody508_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody508_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody508_102 : StackLang.HolProg 64 :=
.seq rawBody508_100 rawBody508_101

def rawBody508_103 : StackLang.HolProg 64 :=
.seq rawBody508_99 rawBody508_102

def rawBody508_104 : StackLang.HolProg 64 :=
.seq rawBody508_98 rawBody508_103

def rawBody508_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1616#64)

def rawBody508_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_108 : StackLang.HolProg 64 :=
.seq rawBody508_106 rawBody508_107

def rawBody508_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 7

def rawBody508_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_119 : StackLang.HolProg 64 :=
.seq rawBody508_117 rawBody508_118

def rawBody508_120 : StackLang.HolProg 64 :=
.seq rawBody508_116 rawBody508_119

def rawBody508_121 : StackLang.HolProg 64 :=
.seq rawBody508_115 rawBody508_120

def rawBody508_122 : StackLang.HolProg 64 :=
.seq rawBody508_114 rawBody508_121

def rawBody508_123 : StackLang.HolProg 64 :=
.seq rawBody508_113 rawBody508_122

def rawBody508_124 : StackLang.HolProg 64 :=
.seq rawBody508_112 rawBody508_123

def rawBody508_125 : StackLang.HolProg 64 :=
.seq rawBody508_111 rawBody508_124

def rawBody508_126 : StackLang.HolProg 64 :=
.seq rawBody508_110 rawBody508_125

def rawBody508_127 : StackLang.HolProg 64 :=
.seq rawBody508_109 rawBody508_126

def rawBody508_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody508_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody508_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody508_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody508_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody508_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody508_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody508_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody508_142 : StackLang.HolProg 64 :=
.seq rawBody508_140 rawBody508_141

def rawBody508_143 : StackLang.HolProg 64 :=
.seq rawBody508_139 rawBody508_142

def rawBody508_144 : StackLang.HolProg 64 :=
.seq rawBody508_138 rawBody508_143

def rawBody508_145 : StackLang.HolProg 64 :=
.seq rawBody508_137 rawBody508_144

def rawBody508_146 : StackLang.HolProg 64 :=
.seq rawBody508_136 rawBody508_145

def rawBody508_147 : StackLang.HolProg 64 :=
.seq rawBody508_135 rawBody508_146

def rawBody508_148 : StackLang.HolProg 64 :=
.seq rawBody508_134 rawBody508_147

def rawBody508_149 : StackLang.HolProg 64 :=
.seq rawBody508_133 rawBody508_148

def rawBody508_150 : StackLang.HolProg 64 :=
.seq rawBody508_132 rawBody508_149

def rawBody508_151 : StackLang.HolProg 64 :=
.seq rawBody508_131 rawBody508_150

def rawBody508_152 : StackLang.HolProg 64 :=
.seq rawBody508_130 rawBody508_151

def rawBody508_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody508_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody508_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody508_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody508_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody508_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody508_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody508_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody508_161 : StackLang.HolProg 64 :=
.seq rawBody508_159 rawBody508_160

def rawBody508_162 : StackLang.HolProg 64 :=
.seq rawBody508_158 rawBody508_161

def rawBody508_163 : StackLang.HolProg 64 :=
.seq rawBody508_157 rawBody508_162

def rawBody508_164 : StackLang.HolProg 64 :=
.seq rawBody508_156 rawBody508_163

def rawBody508_165 : StackLang.HolProg 64 :=
.seq rawBody508_155 rawBody508_164

def rawBody508_166 : StackLang.HolProg 64 :=
.seq rawBody508_154 rawBody508_165

def rawBody508_167 : StackLang.HolProg 64 :=
.seq rawBody508_153 rawBody508_166

def rawBody508_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_169 : StackLang.HolProg 64 :=
.seq rawBody508_167 rawBody508_168

def rawBody508_170 : StackLang.HolProg 64 :=
.call (some (rawBody508_152, 0, 508, 6)) (Sum.inl 470) (some (rawBody508_169, 508, 7))

def rawBody508_171 : StackLang.HolProg 64 :=
.seq rawBody508_129 rawBody508_170

def rawBody508_172 : StackLang.HolProg 64 :=
.seq rawBody508_128 rawBody508_171

def rawBody508_173 : StackLang.HolProg 64 :=
.seq rawBody508_127 rawBody508_172

def rawBody508_174 : StackLang.HolProg 64 :=
.seq rawBody508_108 rawBody508_173

def rawBody508_175 : StackLang.HolProg 64 :=
.seq rawBody508_105 rawBody508_174

def rawBody508_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody508_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1617#64)

def rawBody508_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_181 : StackLang.HolProg 64 :=
.seq rawBody508_179 rawBody508_180

def rawBody508_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 9

def rawBody508_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_192 : StackLang.HolProg 64 :=
.seq rawBody508_190 rawBody508_191

def rawBody508_193 : StackLang.HolProg 64 :=
.seq rawBody508_189 rawBody508_192

def rawBody508_194 : StackLang.HolProg 64 :=
.seq rawBody508_188 rawBody508_193

def rawBody508_195 : StackLang.HolProg 64 :=
.seq rawBody508_187 rawBody508_194

def rawBody508_196 : StackLang.HolProg 64 :=
.seq rawBody508_186 rawBody508_195

def rawBody508_197 : StackLang.HolProg 64 :=
.seq rawBody508_185 rawBody508_196

def rawBody508_198 : StackLang.HolProg 64 :=
.seq rawBody508_184 rawBody508_197

def rawBody508_199 : StackLang.HolProg 64 :=
.seq rawBody508_183 rawBody508_198

def rawBody508_200 : StackLang.HolProg 64 :=
.seq rawBody508_182 rawBody508_199

def rawBody508_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody508_208 : StackLang.HolProg 64 :=
.seq rawBody508_206 rawBody508_207

def rawBody508_209 : StackLang.HolProg 64 :=
.seq rawBody508_205 rawBody508_208

def rawBody508_210 : StackLang.HolProg 64 :=
.seq rawBody508_204 rawBody508_209

def rawBody508_211 : StackLang.HolProg 64 :=
.seq rawBody508_203 rawBody508_210

def rawBody508_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_214 : StackLang.HolProg 64 :=
.seq rawBody508_212 rawBody508_213

def rawBody508_215 : StackLang.HolProg 64 :=
.call (some (rawBody508_211, 0, 508, 8)) (Sum.inl 106) (some (rawBody508_214, 508, 9))

def rawBody508_216 : StackLang.HolProg 64 :=
.seq rawBody508_202 rawBody508_215

def rawBody508_217 : StackLang.HolProg 64 :=
.seq rawBody508_201 rawBody508_216

def rawBody508_218 : StackLang.HolProg 64 :=
.seq rawBody508_200 rawBody508_217

def rawBody508_219 : StackLang.HolProg 64 :=
.seq rawBody508_181 rawBody508_218

def rawBody508_220 : StackLang.HolProg 64 :=
.seq rawBody508_178 rawBody508_219

def rawBody508_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody508_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1618#64)

def rawBody508_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_226 : StackLang.HolProg 64 :=
.seq rawBody508_224 rawBody508_225

def rawBody508_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 11

def rawBody508_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_237 : StackLang.HolProg 64 :=
.seq rawBody508_235 rawBody508_236

def rawBody508_238 : StackLang.HolProg 64 :=
.seq rawBody508_234 rawBody508_237

def rawBody508_239 : StackLang.HolProg 64 :=
.seq rawBody508_233 rawBody508_238

def rawBody508_240 : StackLang.HolProg 64 :=
.seq rawBody508_232 rawBody508_239

def rawBody508_241 : StackLang.HolProg 64 :=
.seq rawBody508_231 rawBody508_240

def rawBody508_242 : StackLang.HolProg 64 :=
.seq rawBody508_230 rawBody508_241

def rawBody508_243 : StackLang.HolProg 64 :=
.seq rawBody508_229 rawBody508_242

def rawBody508_244 : StackLang.HolProg 64 :=
.seq rawBody508_228 rawBody508_243

def rawBody508_245 : StackLang.HolProg 64 :=
.seq rawBody508_227 rawBody508_244

def rawBody508_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_253 : StackLang.HolProg 64 :=
.seq rawBody508_251 rawBody508_252

def rawBody508_254 : StackLang.HolProg 64 :=
.seq rawBody508_250 rawBody508_253

def rawBody508_255 : StackLang.HolProg 64 :=
.seq rawBody508_249 rawBody508_254

def rawBody508_256 : StackLang.HolProg 64 :=
.seq rawBody508_248 rawBody508_255

def rawBody508_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_259 : StackLang.HolProg 64 :=
.seq rawBody508_257 rawBody508_258

def rawBody508_260 : StackLang.HolProg 64 :=
.call (some (rawBody508_256, 0, 508, 10)) (Sum.inl 478) (some (rawBody508_259, 508, 11))

def rawBody508_261 : StackLang.HolProg 64 :=
.seq rawBody508_247 rawBody508_260

def rawBody508_262 : StackLang.HolProg 64 :=
.seq rawBody508_246 rawBody508_261

def rawBody508_263 : StackLang.HolProg 64 :=
.seq rawBody508_245 rawBody508_262

def rawBody508_264 : StackLang.HolProg 64 :=
.seq rawBody508_226 rawBody508_263

def rawBody508_265 : StackLang.HolProg 64 :=
.seq rawBody508_223 rawBody508_264

def rawBody508_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody508_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1619#64)

def rawBody508_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_272 : StackLang.HolProg 64 :=
.seq rawBody508_270 rawBody508_271

def rawBody508_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody508_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody508_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody508_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 13

def rawBody508_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody508_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody508_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody508_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody508_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_283 : StackLang.HolProg 64 :=
.seq rawBody508_281 rawBody508_282

def rawBody508_284 : StackLang.HolProg 64 :=
.seq rawBody508_280 rawBody508_283

def rawBody508_285 : StackLang.HolProg 64 :=
.seq rawBody508_279 rawBody508_284

def rawBody508_286 : StackLang.HolProg 64 :=
.seq rawBody508_278 rawBody508_285

def rawBody508_287 : StackLang.HolProg 64 :=
.seq rawBody508_277 rawBody508_286

def rawBody508_288 : StackLang.HolProg 64 :=
.seq rawBody508_276 rawBody508_287

def rawBody508_289 : StackLang.HolProg 64 :=
.seq rawBody508_275 rawBody508_288

def rawBody508_290 : StackLang.HolProg 64 :=
.seq rawBody508_274 rawBody508_289

def rawBody508_291 : StackLang.HolProg 64 :=
.seq rawBody508_273 rawBody508_290

def rawBody508_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody508_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody508_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody508_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody508_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody508_299 : StackLang.HolProg 64 :=
.seq rawBody508_297 rawBody508_298

def rawBody508_300 : StackLang.HolProg 64 :=
.seq rawBody508_296 rawBody508_299

def rawBody508_301 : StackLang.HolProg 64 :=
.seq rawBody508_295 rawBody508_300

def rawBody508_302 : StackLang.HolProg 64 :=
.seq rawBody508_294 rawBody508_301

def rawBody508_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody508_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody508_305 : StackLang.HolProg 64 :=
.seq rawBody508_303 rawBody508_304

def rawBody508_306 : StackLang.HolProg 64 :=
.call (some (rawBody508_302, 0, 508, 12)) (Sum.inl 490) (some (rawBody508_305, 508, 13))

def rawBody508_307 : StackLang.HolProg 64 :=
.seq rawBody508_293 rawBody508_306

def rawBody508_308 : StackLang.HolProg 64 :=
.seq rawBody508_292 rawBody508_307

def rawBody508_309 : StackLang.HolProg 64 :=
.seq rawBody508_291 rawBody508_308

def rawBody508_310 : StackLang.HolProg 64 :=
.seq rawBody508_272 rawBody508_309

def rawBody508_311 : StackLang.HolProg 64 :=
.seq rawBody508_269 rawBody508_310

def rawBody508_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody508_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody508_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody508_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody508_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody508_317 : StackLang.HolProg 64 :=
.seq rawBody508_315 rawBody508_316

def rawBody508_318 : StackLang.HolProg 64 :=
.seq rawBody508_314 rawBody508_317

def rawBody508_319 : StackLang.HolProg 64 :=
.seq rawBody508_313 rawBody508_318

def rawBody508_320 : StackLang.HolProg 64 :=
.seq rawBody508_312 rawBody508_319

def rawBody508_321 : StackLang.HolProg 64 :=
.seq rawBody508_311 rawBody508_320

def rawBody508_322 : StackLang.HolProg 64 :=
.seq rawBody508_268 rawBody508_321

def rawBody508_323 : StackLang.HolProg 64 :=
.seq rawBody508_267 rawBody508_322

def rawBody508_324 : StackLang.HolProg 64 :=
.seq rawBody508_266 rawBody508_323

def rawBody508_325 : StackLang.HolProg 64 :=
.seq rawBody508_265 rawBody508_324

def rawBody508_326 : StackLang.HolProg 64 :=
.seq rawBody508_222 rawBody508_325

def rawBody508_327 : StackLang.HolProg 64 :=
.seq rawBody508_221 rawBody508_326

def rawBody508_328 : StackLang.HolProg 64 :=
.seq rawBody508_220 rawBody508_327

def rawBody508_329 : StackLang.HolProg 64 :=
.seq rawBody508_177 rawBody508_328

def rawBody508_330 : StackLang.HolProg 64 :=
.seq rawBody508_176 rawBody508_329

def rawBody508_331 : StackLang.HolProg 64 :=
.seq rawBody508_175 rawBody508_330

def rawBody508_332 : StackLang.HolProg 64 :=
.seq rawBody508_104 rawBody508_331

def rawBody508_333 : StackLang.HolProg 64 :=
.seq rawBody508_97 rawBody508_332

def rawBody508_334 : StackLang.HolProg 64 :=
.seq rawBody508_96 rawBody508_333

def rawBody508_335 : StackLang.HolProg 64 :=
.seq rawBody508_95 rawBody508_334

def rawBody508_336 : StackLang.HolProg 64 :=
.seq rawBody508_52 rawBody508_335

def rawBody508_337 : StackLang.HolProg 64 :=
.seq rawBody508_45 rawBody508_336

def rawBody508_338 : StackLang.HolProg 64 :=
.seq rawBody508_44 rawBody508_337

def rawBody508_339 : StackLang.HolProg 64 :=
.seq rawBody508_1 rawBody508_338

def rawBody508_340 : StackLang.HolProg 64 :=
.seq rawBody508_0 rawBody508_339

def raw508 : StackLang.HolProg 64 := rawBody508_340
theorem raw508_eq : StackRawCall.compTop RawInfo.rawInfo (function508 (.list [])).1 = raw508 := by
  kernel_rfl
#print axioms raw508_eq
end InitECandidate.Proofs.BackendStages
