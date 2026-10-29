import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function838
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody838_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody838_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody838_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody838_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody838_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody838_5 : StackLang.HolProg 64 :=
.seq rawBody838_3 rawBody838_4

def rawBody838_6 : StackLang.HolProg 64 :=
.seq rawBody838_2 rawBody838_5

def rawBody838_7 : StackLang.HolProg 64 :=
.seq rawBody838_1 rawBody838_6

def rawBody838_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4199#64)

def rawBody838_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_11 : StackLang.HolProg 64 :=
.seq rawBody838_9 rawBody838_10

def rawBody838_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody838_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody838_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 3

def rawBody838_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody838_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody838_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody838_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody838_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_22 : StackLang.HolProg 64 :=
.seq rawBody838_20 rawBody838_21

def rawBody838_23 : StackLang.HolProg 64 :=
.seq rawBody838_19 rawBody838_22

def rawBody838_24 : StackLang.HolProg 64 :=
.seq rawBody838_18 rawBody838_23

def rawBody838_25 : StackLang.HolProg 64 :=
.seq rawBody838_17 rawBody838_24

def rawBody838_26 : StackLang.HolProg 64 :=
.seq rawBody838_16 rawBody838_25

def rawBody838_27 : StackLang.HolProg 64 :=
.seq rawBody838_15 rawBody838_26

def rawBody838_28 : StackLang.HolProg 64 :=
.seq rawBody838_14 rawBody838_27

def rawBody838_29 : StackLang.HolProg 64 :=
.seq rawBody838_13 rawBody838_28

def rawBody838_30 : StackLang.HolProg 64 :=
.seq rawBody838_12 rawBody838_29

def rawBody838_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody838_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody838_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody838_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody838_38 : StackLang.HolProg 64 :=
.seq rawBody838_36 rawBody838_37

def rawBody838_39 : StackLang.HolProg 64 :=
.seq rawBody838_35 rawBody838_38

def rawBody838_40 : StackLang.HolProg 64 :=
.seq rawBody838_34 rawBody838_39

def rawBody838_41 : StackLang.HolProg 64 :=
.seq rawBody838_33 rawBody838_40

def rawBody838_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody838_44 : StackLang.HolProg 64 :=
.seq rawBody838_42 rawBody838_43

def rawBody838_45 : StackLang.HolProg 64 :=
.call (some (rawBody838_41, 0, 838, 2)) (Sum.inl 69) (some (rawBody838_44, 838, 3))

def rawBody838_46 : StackLang.HolProg 64 :=
.seq rawBody838_32 rawBody838_45

def rawBody838_47 : StackLang.HolProg 64 :=
.seq rawBody838_31 rawBody838_46

def rawBody838_48 : StackLang.HolProg 64 :=
.seq rawBody838_30 rawBody838_47

def rawBody838_49 : StackLang.HolProg 64 :=
.seq rawBody838_11 rawBody838_48

def rawBody838_50 : StackLang.HolProg 64 :=
.seq rawBody838_8 rawBody838_49

def rawBody838_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody838_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody838_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4200#64)

def rawBody838_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_57 : StackLang.HolProg 64 :=
.seq rawBody838_55 rawBody838_56

def rawBody838_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody838_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody838_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 5

def rawBody838_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody838_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody838_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody838_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody838_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_68 : StackLang.HolProg 64 :=
.seq rawBody838_66 rawBody838_67

def rawBody838_69 : StackLang.HolProg 64 :=
.seq rawBody838_65 rawBody838_68

def rawBody838_70 : StackLang.HolProg 64 :=
.seq rawBody838_64 rawBody838_69

def rawBody838_71 : StackLang.HolProg 64 :=
.seq rawBody838_63 rawBody838_70

def rawBody838_72 : StackLang.HolProg 64 :=
.seq rawBody838_62 rawBody838_71

def rawBody838_73 : StackLang.HolProg 64 :=
.seq rawBody838_61 rawBody838_72

def rawBody838_74 : StackLang.HolProg 64 :=
.seq rawBody838_60 rawBody838_73

def rawBody838_75 : StackLang.HolProg 64 :=
.seq rawBody838_59 rawBody838_74

def rawBody838_76 : StackLang.HolProg 64 :=
.seq rawBody838_58 rawBody838_75

def rawBody838_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody838_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody838_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody838_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody838_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody838_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody838_86 : StackLang.HolProg 64 :=
.seq rawBody838_84 rawBody838_85

def rawBody838_87 : StackLang.HolProg 64 :=
.seq rawBody838_83 rawBody838_86

def rawBody838_88 : StackLang.HolProg 64 :=
.seq rawBody838_82 rawBody838_87

def rawBody838_89 : StackLang.HolProg 64 :=
.seq rawBody838_81 rawBody838_88

def rawBody838_90 : StackLang.HolProg 64 :=
.seq rawBody838_80 rawBody838_89

def rawBody838_91 : StackLang.HolProg 64 :=
.seq rawBody838_79 rawBody838_90

def rawBody838_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody838_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody838_94 : StackLang.HolProg 64 :=
.seq rawBody838_92 rawBody838_93

def rawBody838_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody838_96 : StackLang.HolProg 64 :=
.seq rawBody838_94 rawBody838_95

def rawBody838_97 : StackLang.HolProg 64 :=
.call (some (rawBody838_91, 0, 838, 4)) (Sum.inl 68) (some (rawBody838_96, 838, 5))

def rawBody838_98 : StackLang.HolProg 64 :=
.seq rawBody838_78 rawBody838_97

def rawBody838_99 : StackLang.HolProg 64 :=
.seq rawBody838_77 rawBody838_98

def rawBody838_100 : StackLang.HolProg 64 :=
.seq rawBody838_76 rawBody838_99

def rawBody838_101 : StackLang.HolProg 64 :=
.seq rawBody838_57 rawBody838_100

def rawBody838_102 : StackLang.HolProg 64 :=
.seq rawBody838_54 rawBody838_101

def rawBody838_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody838_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody838_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody838_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody838_108 : StackLang.HolProg 64 :=
.seq rawBody838_106 rawBody838_107

def rawBody838_109 : StackLang.HolProg 64 :=
.seq rawBody838_105 rawBody838_108

def rawBody838_110 : StackLang.HolProg 64 :=
.seq rawBody838_104 rawBody838_109

def rawBody838_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4201#64)

def rawBody838_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_114 : StackLang.HolProg 64 :=
.seq rawBody838_112 rawBody838_113

def rawBody838_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody838_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody838_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 7

def rawBody838_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody838_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody838_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody838_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody838_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_125 : StackLang.HolProg 64 :=
.seq rawBody838_123 rawBody838_124

def rawBody838_126 : StackLang.HolProg 64 :=
.seq rawBody838_122 rawBody838_125

def rawBody838_127 : StackLang.HolProg 64 :=
.seq rawBody838_121 rawBody838_126

def rawBody838_128 : StackLang.HolProg 64 :=
.seq rawBody838_120 rawBody838_127

def rawBody838_129 : StackLang.HolProg 64 :=
.seq rawBody838_119 rawBody838_128

def rawBody838_130 : StackLang.HolProg 64 :=
.seq rawBody838_118 rawBody838_129

def rawBody838_131 : StackLang.HolProg 64 :=
.seq rawBody838_117 rawBody838_130

def rawBody838_132 : StackLang.HolProg 64 :=
.seq rawBody838_116 rawBody838_131

def rawBody838_133 : StackLang.HolProg 64 :=
.seq rawBody838_115 rawBody838_132

def rawBody838_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody838_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody838_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody838_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody838_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody838_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody838_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody838_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody838_145 : StackLang.HolProg 64 :=
.seq rawBody838_143 rawBody838_144

def rawBody838_146 : StackLang.HolProg 64 :=
.seq rawBody838_142 rawBody838_145

def rawBody838_147 : StackLang.HolProg 64 :=
.seq rawBody838_141 rawBody838_146

def rawBody838_148 : StackLang.HolProg 64 :=
.seq rawBody838_140 rawBody838_147

def rawBody838_149 : StackLang.HolProg 64 :=
.seq rawBody838_139 rawBody838_148

def rawBody838_150 : StackLang.HolProg 64 :=
.seq rawBody838_138 rawBody838_149

def rawBody838_151 : StackLang.HolProg 64 :=
.seq rawBody838_137 rawBody838_150

def rawBody838_152 : StackLang.HolProg 64 :=
.seq rawBody838_136 rawBody838_151

def rawBody838_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody838_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody838_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody838_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody838_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody838_158 : StackLang.HolProg 64 :=
.seq rawBody838_156 rawBody838_157

def rawBody838_159 : StackLang.HolProg 64 :=
.seq rawBody838_155 rawBody838_158

def rawBody838_160 : StackLang.HolProg 64 :=
.seq rawBody838_154 rawBody838_159

def rawBody838_161 : StackLang.HolProg 64 :=
.seq rawBody838_153 rawBody838_160

def rawBody838_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody838_163 : StackLang.HolProg 64 :=
.seq rawBody838_161 rawBody838_162

def rawBody838_164 : StackLang.HolProg 64 :=
.call (some (rawBody838_152, 0, 838, 6)) (Sum.inl 158) (some (rawBody838_163, 838, 7))

def rawBody838_165 : StackLang.HolProg 64 :=
.seq rawBody838_135 rawBody838_164

def rawBody838_166 : StackLang.HolProg 64 :=
.seq rawBody838_134 rawBody838_165

def rawBody838_167 : StackLang.HolProg 64 :=
.seq rawBody838_133 rawBody838_166

def rawBody838_168 : StackLang.HolProg 64 :=
.seq rawBody838_114 rawBody838_167

def rawBody838_169 : StackLang.HolProg 64 :=
.seq rawBody838_111 rawBody838_168

def rawBody838_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody838_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody838_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 6#64)

def rawBody838_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody838_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody838_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody838_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody838_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody838_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody838_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2047#64)))

def rawBody838_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2047#64)

def rawBody838_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody838_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody838_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody838_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7#64)

def rawBody838_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody838_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody838_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody838_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody838_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody838_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody838_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody838_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody838_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody838_209 : StackLang.HolProg 64 :=
.seq rawBody838_207 rawBody838_208

def rawBody838_210 : StackLang.HolProg 64 :=
.seq rawBody838_206 rawBody838_209

def rawBody838_211 : StackLang.HolProg 64 :=
.seq rawBody838_205 rawBody838_210

def rawBody838_212 : StackLang.HolProg 64 :=
.seq rawBody838_204 rawBody838_211

def rawBody838_213 : StackLang.HolProg 64 :=
.seq rawBody838_203 rawBody838_212

def rawBody838_214 : StackLang.HolProg 64 :=
.seq rawBody838_202 rawBody838_213

def rawBody838_215 : StackLang.HolProg 64 :=
.seq rawBody838_201 rawBody838_214

def rawBody838_216 : StackLang.HolProg 64 :=
.seq rawBody838_200 rawBody838_215

def rawBody838_217 : StackLang.HolProg 64 :=
.seq rawBody838_199 rawBody838_216

def rawBody838_218 : StackLang.HolProg 64 :=
.seq rawBody838_198 rawBody838_217

def rawBody838_219 : StackLang.HolProg 64 :=
.seq rawBody838_197 rawBody838_218

def rawBody838_220 : StackLang.HolProg 64 :=
.seq rawBody838_196 rawBody838_219

def rawBody838_221 : StackLang.HolProg 64 :=
.seq rawBody838_195 rawBody838_220

def rawBody838_222 : StackLang.HolProg 64 :=
.seq rawBody838_194 rawBody838_221

def rawBody838_223 : StackLang.HolProg 64 :=
.seq rawBody838_193 rawBody838_222

def rawBody838_224 : StackLang.HolProg 64 :=
.seq rawBody838_192 rawBody838_223

def rawBody838_225 : StackLang.HolProg 64 :=
.seq rawBody838_191 rawBody838_224

def rawBody838_226 : StackLang.HolProg 64 :=
.seq rawBody838_190 rawBody838_225

def rawBody838_227 : StackLang.HolProg 64 :=
.seq rawBody838_189 rawBody838_226

def rawBody838_228 : StackLang.HolProg 64 :=
.seq rawBody838_188 rawBody838_227

def rawBody838_229 : StackLang.HolProg 64 :=
.seq rawBody838_187 rawBody838_228

def rawBody838_230 : StackLang.HolProg 64 :=
.seq rawBody838_186 rawBody838_229

def rawBody838_231 : StackLang.HolProg 64 :=
.seq rawBody838_185 rawBody838_230

def rawBody838_232 : StackLang.HolProg 64 :=
.seq rawBody838_184 rawBody838_231

def rawBody838_233 : StackLang.HolProg 64 :=
.seq rawBody838_183 rawBody838_232

def rawBody838_234 : StackLang.HolProg 64 :=
.seq rawBody838_182 rawBody838_233

def rawBody838_235 : StackLang.HolProg 64 :=
.seq rawBody838_181 rawBody838_234

def rawBody838_236 : StackLang.HolProg 64 :=
.seq rawBody838_180 rawBody838_235

def rawBody838_237 : StackLang.HolProg 64 :=
.seq rawBody838_179 rawBody838_236

def rawBody838_238 : StackLang.HolProg 64 :=
.seq rawBody838_178 rawBody838_237

def rawBody838_239 : StackLang.HolProg 64 :=
.seq rawBody838_177 rawBody838_238

def rawBody838_240 : StackLang.HolProg 64 :=
.seq rawBody838_176 rawBody838_239

def rawBody838_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody838_243 : StackLang.HolProg 64 :=
.seq rawBody838_241 rawBody838_242

def rawBody838_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody838_240 rawBody838_243

def rawBody838_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_247 : StackLang.HolProg 64 :=
.seq rawBody838_245 rawBody838_246

def rawBody838_248 : StackLang.HolProg 64 :=
.seq rawBody838_244 rawBody838_247

def rawBody838_249 : StackLang.HolProg 64 :=
.seq rawBody838_175 rawBody838_248

def rawBody838_250 : StackLang.HolProg 64 :=
.seq rawBody838_174 rawBody838_249

def rawBody838_251 : StackLang.HolProg 64 :=
.loop rawBody838_250

def rawBody838_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4202#64)

def rawBody838_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_257 : StackLang.HolProg 64 :=
.seq rawBody838_255 rawBody838_256

def rawBody838_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody838_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody838_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody838_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 9

def rawBody838_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody838_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody838_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody838_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody838_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_268 : StackLang.HolProg 64 :=
.seq rawBody838_266 rawBody838_267

def rawBody838_269 : StackLang.HolProg 64 :=
.seq rawBody838_265 rawBody838_268

def rawBody838_270 : StackLang.HolProg 64 :=
.seq rawBody838_264 rawBody838_269

def rawBody838_271 : StackLang.HolProg 64 :=
.seq rawBody838_263 rawBody838_270

def rawBody838_272 : StackLang.HolProg 64 :=
.seq rawBody838_262 rawBody838_271

def rawBody838_273 : StackLang.HolProg 64 :=
.seq rawBody838_261 rawBody838_272

def rawBody838_274 : StackLang.HolProg 64 :=
.seq rawBody838_260 rawBody838_273

def rawBody838_275 : StackLang.HolProg 64 :=
.seq rawBody838_259 rawBody838_274

def rawBody838_276 : StackLang.HolProg 64 :=
.seq rawBody838_258 rawBody838_275

def rawBody838_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody838_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody838_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody838_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody838_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody838_284 : StackLang.HolProg 64 :=
.seq rawBody838_282 rawBody838_283

def rawBody838_285 : StackLang.HolProg 64 :=
.seq rawBody838_281 rawBody838_284

def rawBody838_286 : StackLang.HolProg 64 :=
.seq rawBody838_280 rawBody838_285

def rawBody838_287 : StackLang.HolProg 64 :=
.seq rawBody838_279 rawBody838_286

def rawBody838_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody838_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody838_290 : StackLang.HolProg 64 :=
.seq rawBody838_288 rawBody838_289

def rawBody838_291 : StackLang.HolProg 64 :=
.call (some (rawBody838_287, 0, 838, 8)) (Sum.inl 70) (some (rawBody838_290, 838, 9))

def rawBody838_292 : StackLang.HolProg 64 :=
.seq rawBody838_278 rawBody838_291

def rawBody838_293 : StackLang.HolProg 64 :=
.seq rawBody838_277 rawBody838_292

def rawBody838_294 : StackLang.HolProg 64 :=
.seq rawBody838_276 rawBody838_293

def rawBody838_295 : StackLang.HolProg 64 :=
.seq rawBody838_257 rawBody838_294

def rawBody838_296 : StackLang.HolProg 64 :=
.seq rawBody838_254 rawBody838_295

def rawBody838_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody838_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody838_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody838_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody838_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody838_302 : StackLang.HolProg 64 :=
.seq rawBody838_300 rawBody838_301

def rawBody838_303 : StackLang.HolProg 64 :=
.seq rawBody838_299 rawBody838_302

def rawBody838_304 : StackLang.HolProg 64 :=
.seq rawBody838_298 rawBody838_303

def rawBody838_305 : StackLang.HolProg 64 :=
.seq rawBody838_297 rawBody838_304

def rawBody838_306 : StackLang.HolProg 64 :=
.seq rawBody838_296 rawBody838_305

def rawBody838_307 : StackLang.HolProg 64 :=
.seq rawBody838_253 rawBody838_306

def rawBody838_308 : StackLang.HolProg 64 :=
.seq rawBody838_252 rawBody838_307

def rawBody838_309 : StackLang.HolProg 64 :=
.seq rawBody838_251 rawBody838_308

def rawBody838_310 : StackLang.HolProg 64 :=
.seq rawBody838_173 rawBody838_309

def rawBody838_311 : StackLang.HolProg 64 :=
.seq rawBody838_172 rawBody838_310

def rawBody838_312 : StackLang.HolProg 64 :=
.seq rawBody838_171 rawBody838_311

def rawBody838_313 : StackLang.HolProg 64 :=
.seq rawBody838_170 rawBody838_312

def rawBody838_314 : StackLang.HolProg 64 :=
.seq rawBody838_169 rawBody838_313

def rawBody838_315 : StackLang.HolProg 64 :=
.seq rawBody838_110 rawBody838_314

def rawBody838_316 : StackLang.HolProg 64 :=
.seq rawBody838_103 rawBody838_315

def rawBody838_317 : StackLang.HolProg 64 :=
.seq rawBody838_102 rawBody838_316

def rawBody838_318 : StackLang.HolProg 64 :=
.seq rawBody838_53 rawBody838_317

def rawBody838_319 : StackLang.HolProg 64 :=
.seq rawBody838_52 rawBody838_318

def rawBody838_320 : StackLang.HolProg 64 :=
.seq rawBody838_51 rawBody838_319

def rawBody838_321 : StackLang.HolProg 64 :=
.seq rawBody838_50 rawBody838_320

def rawBody838_322 : StackLang.HolProg 64 :=
.seq rawBody838_7 rawBody838_321

def rawBody838_323 : StackLang.HolProg 64 :=
.seq rawBody838_0 rawBody838_322

def raw838 : StackLang.HolProg 64 := rawBody838_323
theorem raw838_eq : StackRawCall.compTop RawInfo.rawInfo (function838 (.list [])).1 = raw838 := by
  kernel_rfl
#print axioms raw838_eq
end InitECandidate.Proofs.BackendStages
