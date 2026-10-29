import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function515
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody515_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody515_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody515_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1654#64)

def rawBody515_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_5 : StackLang.HolProg 64 :=
.seq rawBody515_3 rawBody515_4

def rawBody515_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody515_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody515_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 3

def rawBody515_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody515_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody515_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody515_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody515_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_16 : StackLang.HolProg 64 :=
.seq rawBody515_14 rawBody515_15

def rawBody515_17 : StackLang.HolProg 64 :=
.seq rawBody515_13 rawBody515_16

def rawBody515_18 : StackLang.HolProg 64 :=
.seq rawBody515_12 rawBody515_17

def rawBody515_19 : StackLang.HolProg 64 :=
.seq rawBody515_11 rawBody515_18

def rawBody515_20 : StackLang.HolProg 64 :=
.seq rawBody515_10 rawBody515_19

def rawBody515_21 : StackLang.HolProg 64 :=
.seq rawBody515_9 rawBody515_20

def rawBody515_22 : StackLang.HolProg 64 :=
.seq rawBody515_8 rawBody515_21

def rawBody515_23 : StackLang.HolProg 64 :=
.seq rawBody515_7 rawBody515_22

def rawBody515_24 : StackLang.HolProg 64 :=
.seq rawBody515_6 rawBody515_23

def rawBody515_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody515_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody515_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody515_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody515_32 : StackLang.HolProg 64 :=
.seq rawBody515_30 rawBody515_31

def rawBody515_33 : StackLang.HolProg 64 :=
.seq rawBody515_29 rawBody515_32

def rawBody515_34 : StackLang.HolProg 64 :=
.seq rawBody515_28 rawBody515_33

def rawBody515_35 : StackLang.HolProg 64 :=
.seq rawBody515_27 rawBody515_34

def rawBody515_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody515_38 : StackLang.HolProg 64 :=
.seq rawBody515_36 rawBody515_37

def rawBody515_39 : StackLang.HolProg 64 :=
.call (some (rawBody515_35, 0, 515, 2)) (Sum.inl 475) (some (rawBody515_38, 515, 3))

def rawBody515_40 : StackLang.HolProg 64 :=
.seq rawBody515_26 rawBody515_39

def rawBody515_41 : StackLang.HolProg 64 :=
.seq rawBody515_25 rawBody515_40

def rawBody515_42 : StackLang.HolProg 64 :=
.seq rawBody515_24 rawBody515_41

def rawBody515_43 : StackLang.HolProg 64 :=
.seq rawBody515_5 rawBody515_42

def rawBody515_44 : StackLang.HolProg 64 :=
.seq rawBody515_2 rawBody515_43

def rawBody515_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody515_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody515_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody515_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody515_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody515_50 : StackLang.HolProg 64 :=
.seq rawBody515_48 rawBody515_49

def rawBody515_51 : StackLang.HolProg 64 :=
.seq rawBody515_47 rawBody515_50

def rawBody515_52 : StackLang.HolProg 64 :=
.seq rawBody515_46 rawBody515_51

def rawBody515_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1655#64)

def rawBody515_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_56 : StackLang.HolProg 64 :=
.seq rawBody515_54 rawBody515_55

def rawBody515_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody515_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody515_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 5

def rawBody515_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody515_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody515_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody515_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody515_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_67 : StackLang.HolProg 64 :=
.seq rawBody515_65 rawBody515_66

def rawBody515_68 : StackLang.HolProg 64 :=
.seq rawBody515_64 rawBody515_67

def rawBody515_69 : StackLang.HolProg 64 :=
.seq rawBody515_63 rawBody515_68

def rawBody515_70 : StackLang.HolProg 64 :=
.seq rawBody515_62 rawBody515_69

def rawBody515_71 : StackLang.HolProg 64 :=
.seq rawBody515_61 rawBody515_70

def rawBody515_72 : StackLang.HolProg 64 :=
.seq rawBody515_60 rawBody515_71

def rawBody515_73 : StackLang.HolProg 64 :=
.seq rawBody515_59 rawBody515_72

def rawBody515_74 : StackLang.HolProg 64 :=
.seq rawBody515_58 rawBody515_73

def rawBody515_75 : StackLang.HolProg 64 :=
.seq rawBody515_57 rawBody515_74

def rawBody515_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody515_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody515_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody515_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody515_83 : StackLang.HolProg 64 :=
.seq rawBody515_81 rawBody515_82

def rawBody515_84 : StackLang.HolProg 64 :=
.seq rawBody515_80 rawBody515_83

def rawBody515_85 : StackLang.HolProg 64 :=
.seq rawBody515_79 rawBody515_84

def rawBody515_86 : StackLang.HolProg 64 :=
.seq rawBody515_78 rawBody515_85

def rawBody515_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody515_89 : StackLang.HolProg 64 :=
.seq rawBody515_87 rawBody515_88

def rawBody515_90 : StackLang.HolProg 64 :=
.call (some (rawBody515_86, 0, 515, 4)) (Sum.inl 475) (some (rawBody515_89, 515, 5))

def rawBody515_91 : StackLang.HolProg 64 :=
.seq rawBody515_77 rawBody515_90

def rawBody515_92 : StackLang.HolProg 64 :=
.seq rawBody515_76 rawBody515_91

def rawBody515_93 : StackLang.HolProg 64 :=
.seq rawBody515_75 rawBody515_92

def rawBody515_94 : StackLang.HolProg 64 :=
.seq rawBody515_56 rawBody515_93

def rawBody515_95 : StackLang.HolProg 64 :=
.seq rawBody515_53 rawBody515_94

def rawBody515_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody515_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody515_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody515_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody515_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody515_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody515_102 : StackLang.HolProg 64 :=
.seq rawBody515_100 rawBody515_101

def rawBody515_103 : StackLang.HolProg 64 :=
.seq rawBody515_99 rawBody515_102

def rawBody515_104 : StackLang.HolProg 64 :=
.seq rawBody515_98 rawBody515_103

def rawBody515_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1656#64)

def rawBody515_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_108 : StackLang.HolProg 64 :=
.seq rawBody515_106 rawBody515_107

def rawBody515_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody515_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody515_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 7

def rawBody515_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody515_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody515_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody515_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody515_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_119 : StackLang.HolProg 64 :=
.seq rawBody515_117 rawBody515_118

def rawBody515_120 : StackLang.HolProg 64 :=
.seq rawBody515_116 rawBody515_119

def rawBody515_121 : StackLang.HolProg 64 :=
.seq rawBody515_115 rawBody515_120

def rawBody515_122 : StackLang.HolProg 64 :=
.seq rawBody515_114 rawBody515_121

def rawBody515_123 : StackLang.HolProg 64 :=
.seq rawBody515_113 rawBody515_122

def rawBody515_124 : StackLang.HolProg 64 :=
.seq rawBody515_112 rawBody515_123

def rawBody515_125 : StackLang.HolProg 64 :=
.seq rawBody515_111 rawBody515_124

def rawBody515_126 : StackLang.HolProg 64 :=
.seq rawBody515_110 rawBody515_125

def rawBody515_127 : StackLang.HolProg 64 :=
.seq rawBody515_109 rawBody515_126

def rawBody515_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody515_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody515_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody515_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody515_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody515_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody515_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody515_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody515_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody515_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody515_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody515_142 : StackLang.HolProg 64 :=
.seq rawBody515_140 rawBody515_141

def rawBody515_143 : StackLang.HolProg 64 :=
.seq rawBody515_139 rawBody515_142

def rawBody515_144 : StackLang.HolProg 64 :=
.seq rawBody515_138 rawBody515_143

def rawBody515_145 : StackLang.HolProg 64 :=
.seq rawBody515_137 rawBody515_144

def rawBody515_146 : StackLang.HolProg 64 :=
.seq rawBody515_136 rawBody515_145

def rawBody515_147 : StackLang.HolProg 64 :=
.seq rawBody515_135 rawBody515_146

def rawBody515_148 : StackLang.HolProg 64 :=
.seq rawBody515_134 rawBody515_147

def rawBody515_149 : StackLang.HolProg 64 :=
.seq rawBody515_133 rawBody515_148

def rawBody515_150 : StackLang.HolProg 64 :=
.seq rawBody515_132 rawBody515_149

def rawBody515_151 : StackLang.HolProg 64 :=
.seq rawBody515_131 rawBody515_150

def rawBody515_152 : StackLang.HolProg 64 :=
.seq rawBody515_130 rawBody515_151

def rawBody515_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody515_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody515_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody515_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody515_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody515_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody515_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody515_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody515_161 : StackLang.HolProg 64 :=
.seq rawBody515_159 rawBody515_160

def rawBody515_162 : StackLang.HolProg 64 :=
.seq rawBody515_158 rawBody515_161

def rawBody515_163 : StackLang.HolProg 64 :=
.seq rawBody515_157 rawBody515_162

def rawBody515_164 : StackLang.HolProg 64 :=
.seq rawBody515_156 rawBody515_163

def rawBody515_165 : StackLang.HolProg 64 :=
.seq rawBody515_155 rawBody515_164

def rawBody515_166 : StackLang.HolProg 64 :=
.seq rawBody515_154 rawBody515_165

def rawBody515_167 : StackLang.HolProg 64 :=
.seq rawBody515_153 rawBody515_166

def rawBody515_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody515_169 : StackLang.HolProg 64 :=
.seq rawBody515_167 rawBody515_168

def rawBody515_170 : StackLang.HolProg 64 :=
.call (some (rawBody515_152, 0, 515, 6)) (Sum.inl 470) (some (rawBody515_169, 515, 7))

def rawBody515_171 : StackLang.HolProg 64 :=
.seq rawBody515_129 rawBody515_170

def rawBody515_172 : StackLang.HolProg 64 :=
.seq rawBody515_128 rawBody515_171

def rawBody515_173 : StackLang.HolProg 64 :=
.seq rawBody515_127 rawBody515_172

def rawBody515_174 : StackLang.HolProg 64 :=
.seq rawBody515_108 rawBody515_173

def rawBody515_175 : StackLang.HolProg 64 :=
.seq rawBody515_105 rawBody515_174

def rawBody515_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody515_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody515_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody515_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody515_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody515_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1657#64)

def rawBody515_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_189 : StackLang.HolProg 64 :=
.seq rawBody515_187 rawBody515_188

def rawBody515_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody515_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody515_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 9

def rawBody515_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody515_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody515_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody515_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody515_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_200 : StackLang.HolProg 64 :=
.seq rawBody515_198 rawBody515_199

def rawBody515_201 : StackLang.HolProg 64 :=
.seq rawBody515_197 rawBody515_200

def rawBody515_202 : StackLang.HolProg 64 :=
.seq rawBody515_196 rawBody515_201

def rawBody515_203 : StackLang.HolProg 64 :=
.seq rawBody515_195 rawBody515_202

def rawBody515_204 : StackLang.HolProg 64 :=
.seq rawBody515_194 rawBody515_203

def rawBody515_205 : StackLang.HolProg 64 :=
.seq rawBody515_193 rawBody515_204

def rawBody515_206 : StackLang.HolProg 64 :=
.seq rawBody515_192 rawBody515_205

def rawBody515_207 : StackLang.HolProg 64 :=
.seq rawBody515_191 rawBody515_206

def rawBody515_208 : StackLang.HolProg 64 :=
.seq rawBody515_190 rawBody515_207

def rawBody515_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody515_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody515_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody515_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_216 : StackLang.HolProg 64 :=
.seq rawBody515_214 rawBody515_215

def rawBody515_217 : StackLang.HolProg 64 :=
.seq rawBody515_213 rawBody515_216

def rawBody515_218 : StackLang.HolProg 64 :=
.seq rawBody515_212 rawBody515_217

def rawBody515_219 : StackLang.HolProg 64 :=
.seq rawBody515_211 rawBody515_218

def rawBody515_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody515_222 : StackLang.HolProg 64 :=
.seq rawBody515_220 rawBody515_221

def rawBody515_223 : StackLang.HolProg 64 :=
.call (some (rawBody515_219, 0, 515, 8)) (Sum.inl 476) (some (rawBody515_222, 515, 9))

def rawBody515_224 : StackLang.HolProg 64 :=
.seq rawBody515_210 rawBody515_223

def rawBody515_225 : StackLang.HolProg 64 :=
.seq rawBody515_209 rawBody515_224

def rawBody515_226 : StackLang.HolProg 64 :=
.seq rawBody515_208 rawBody515_225

def rawBody515_227 : StackLang.HolProg 64 :=
.seq rawBody515_189 rawBody515_226

def rawBody515_228 : StackLang.HolProg 64 :=
.seq rawBody515_186 rawBody515_227

def rawBody515_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody515_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody515_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1658#64)

def rawBody515_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_235 : StackLang.HolProg 64 :=
.seq rawBody515_233 rawBody515_234

def rawBody515_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody515_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody515_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody515_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 11

def rawBody515_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody515_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody515_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody515_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody515_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_246 : StackLang.HolProg 64 :=
.seq rawBody515_244 rawBody515_245

def rawBody515_247 : StackLang.HolProg 64 :=
.seq rawBody515_243 rawBody515_246

def rawBody515_248 : StackLang.HolProg 64 :=
.seq rawBody515_242 rawBody515_247

def rawBody515_249 : StackLang.HolProg 64 :=
.seq rawBody515_241 rawBody515_248

def rawBody515_250 : StackLang.HolProg 64 :=
.seq rawBody515_240 rawBody515_249

def rawBody515_251 : StackLang.HolProg 64 :=
.seq rawBody515_239 rawBody515_250

def rawBody515_252 : StackLang.HolProg 64 :=
.seq rawBody515_238 rawBody515_251

def rawBody515_253 : StackLang.HolProg 64 :=
.seq rawBody515_237 rawBody515_252

def rawBody515_254 : StackLang.HolProg 64 :=
.seq rawBody515_236 rawBody515_253

def rawBody515_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody515_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody515_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody515_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody515_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody515_262 : StackLang.HolProg 64 :=
.seq rawBody515_260 rawBody515_261

def rawBody515_263 : StackLang.HolProg 64 :=
.seq rawBody515_259 rawBody515_262

def rawBody515_264 : StackLang.HolProg 64 :=
.seq rawBody515_258 rawBody515_263

def rawBody515_265 : StackLang.HolProg 64 :=
.seq rawBody515_257 rawBody515_264

def rawBody515_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody515_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody515_268 : StackLang.HolProg 64 :=
.seq rawBody515_266 rawBody515_267

def rawBody515_269 : StackLang.HolProg 64 :=
.call (some (rawBody515_265, 0, 515, 10)) (Sum.inl 490) (some (rawBody515_268, 515, 11))

def rawBody515_270 : StackLang.HolProg 64 :=
.seq rawBody515_256 rawBody515_269

def rawBody515_271 : StackLang.HolProg 64 :=
.seq rawBody515_255 rawBody515_270

def rawBody515_272 : StackLang.HolProg 64 :=
.seq rawBody515_254 rawBody515_271

def rawBody515_273 : StackLang.HolProg 64 :=
.seq rawBody515_235 rawBody515_272

def rawBody515_274 : StackLang.HolProg 64 :=
.seq rawBody515_232 rawBody515_273

def rawBody515_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody515_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody515_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody515_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody515_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody515_280 : StackLang.HolProg 64 :=
.seq rawBody515_278 rawBody515_279

def rawBody515_281 : StackLang.HolProg 64 :=
.seq rawBody515_277 rawBody515_280

def rawBody515_282 : StackLang.HolProg 64 :=
.seq rawBody515_276 rawBody515_281

def rawBody515_283 : StackLang.HolProg 64 :=
.seq rawBody515_275 rawBody515_282

def rawBody515_284 : StackLang.HolProg 64 :=
.seq rawBody515_274 rawBody515_283

def rawBody515_285 : StackLang.HolProg 64 :=
.seq rawBody515_231 rawBody515_284

def rawBody515_286 : StackLang.HolProg 64 :=
.seq rawBody515_230 rawBody515_285

def rawBody515_287 : StackLang.HolProg 64 :=
.seq rawBody515_229 rawBody515_286

def rawBody515_288 : StackLang.HolProg 64 :=
.seq rawBody515_228 rawBody515_287

def rawBody515_289 : StackLang.HolProg 64 :=
.seq rawBody515_185 rawBody515_288

def rawBody515_290 : StackLang.HolProg 64 :=
.seq rawBody515_184 rawBody515_289

def rawBody515_291 : StackLang.HolProg 64 :=
.seq rawBody515_183 rawBody515_290

def rawBody515_292 : StackLang.HolProg 64 :=
.seq rawBody515_182 rawBody515_291

def rawBody515_293 : StackLang.HolProg 64 :=
.seq rawBody515_181 rawBody515_292

def rawBody515_294 : StackLang.HolProg 64 :=
.seq rawBody515_180 rawBody515_293

def rawBody515_295 : StackLang.HolProg 64 :=
.seq rawBody515_179 rawBody515_294

def rawBody515_296 : StackLang.HolProg 64 :=
.seq rawBody515_178 rawBody515_295

def rawBody515_297 : StackLang.HolProg 64 :=
.seq rawBody515_177 rawBody515_296

def rawBody515_298 : StackLang.HolProg 64 :=
.seq rawBody515_176 rawBody515_297

def rawBody515_299 : StackLang.HolProg 64 :=
.seq rawBody515_175 rawBody515_298

def rawBody515_300 : StackLang.HolProg 64 :=
.seq rawBody515_104 rawBody515_299

def rawBody515_301 : StackLang.HolProg 64 :=
.seq rawBody515_97 rawBody515_300

def rawBody515_302 : StackLang.HolProg 64 :=
.seq rawBody515_96 rawBody515_301

def rawBody515_303 : StackLang.HolProg 64 :=
.seq rawBody515_95 rawBody515_302

def rawBody515_304 : StackLang.HolProg 64 :=
.seq rawBody515_52 rawBody515_303

def rawBody515_305 : StackLang.HolProg 64 :=
.seq rawBody515_45 rawBody515_304

def rawBody515_306 : StackLang.HolProg 64 :=
.seq rawBody515_44 rawBody515_305

def rawBody515_307 : StackLang.HolProg 64 :=
.seq rawBody515_1 rawBody515_306

def rawBody515_308 : StackLang.HolProg 64 :=
.seq rawBody515_0 rawBody515_307

def raw515 : StackLang.HolProg 64 := rawBody515_308
theorem raw515_eq : StackRawCall.compTop RawInfo.rawInfo (function515 (.list [])).1 = raw515 := by
  kernel_rfl
#print axioms raw515_eq
end InitECandidate.Proofs.BackendStages
