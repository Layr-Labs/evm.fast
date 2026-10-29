import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function784
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody784_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody784_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody784_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody784_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody784_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody784_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody784_6 : StackLang.HolProg 64 :=
.seq rawBody784_4 rawBody784_5

def rawBody784_7 : StackLang.HolProg 64 :=
.seq rawBody784_3 rawBody784_6

def rawBody784_8 : StackLang.HolProg 64 :=
.seq rawBody784_2 rawBody784_7

def rawBody784_9 : StackLang.HolProg 64 :=
.seq rawBody784_1 rawBody784_8

def rawBody784_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3618#64)

def rawBody784_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_13 : StackLang.HolProg 64 :=
.seq rawBody784_11 rawBody784_12

def rawBody784_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 3

def rawBody784_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_24 : StackLang.HolProg 64 :=
.seq rawBody784_22 rawBody784_23

def rawBody784_25 : StackLang.HolProg 64 :=
.seq rawBody784_21 rawBody784_24

def rawBody784_26 : StackLang.HolProg 64 :=
.seq rawBody784_20 rawBody784_25

def rawBody784_27 : StackLang.HolProg 64 :=
.seq rawBody784_19 rawBody784_26

def rawBody784_28 : StackLang.HolProg 64 :=
.seq rawBody784_18 rawBody784_27

def rawBody784_29 : StackLang.HolProg 64 :=
.seq rawBody784_17 rawBody784_28

def rawBody784_30 : StackLang.HolProg 64 :=
.seq rawBody784_16 rawBody784_29

def rawBody784_31 : StackLang.HolProg 64 :=
.seq rawBody784_15 rawBody784_30

def rawBody784_32 : StackLang.HolProg 64 :=
.seq rawBody784_14 rawBody784_31

def rawBody784_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody784_40 : StackLang.HolProg 64 :=
.seq rawBody784_38 rawBody784_39

def rawBody784_41 : StackLang.HolProg 64 :=
.seq rawBody784_37 rawBody784_40

def rawBody784_42 : StackLang.HolProg 64 :=
.seq rawBody784_36 rawBody784_41

def rawBody784_43 : StackLang.HolProg 64 :=
.seq rawBody784_35 rawBody784_42

def rawBody784_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_46 : StackLang.HolProg 64 :=
.seq rawBody784_44 rawBody784_45

def rawBody784_47 : StackLang.HolProg 64 :=
.call (some (rawBody784_43, 0, 784, 2)) (Sum.inl 69) (some (rawBody784_46, 784, 3))

def rawBody784_48 : StackLang.HolProg 64 :=
.seq rawBody784_34 rawBody784_47

def rawBody784_49 : StackLang.HolProg 64 :=
.seq rawBody784_33 rawBody784_48

def rawBody784_50 : StackLang.HolProg 64 :=
.seq rawBody784_32 rawBody784_49

def rawBody784_51 : StackLang.HolProg 64 :=
.seq rawBody784_13 rawBody784_50

def rawBody784_52 : StackLang.HolProg 64 :=
.seq rawBody784_10 rawBody784_51

def rawBody784_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def rawBody784_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody784_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3619#64)

def rawBody784_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_59 : StackLang.HolProg 64 :=
.seq rawBody784_57 rawBody784_58

def rawBody784_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 5

def rawBody784_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_70 : StackLang.HolProg 64 :=
.seq rawBody784_68 rawBody784_69

def rawBody784_71 : StackLang.HolProg 64 :=
.seq rawBody784_67 rawBody784_70

def rawBody784_72 : StackLang.HolProg 64 :=
.seq rawBody784_66 rawBody784_71

def rawBody784_73 : StackLang.HolProg 64 :=
.seq rawBody784_65 rawBody784_72

def rawBody784_74 : StackLang.HolProg 64 :=
.seq rawBody784_64 rawBody784_73

def rawBody784_75 : StackLang.HolProg 64 :=
.seq rawBody784_63 rawBody784_74

def rawBody784_76 : StackLang.HolProg 64 :=
.seq rawBody784_62 rawBody784_75

def rawBody784_77 : StackLang.HolProg 64 :=
.seq rawBody784_61 rawBody784_76

def rawBody784_78 : StackLang.HolProg 64 :=
.seq rawBody784_60 rawBody784_77

def rawBody784_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody784_86 : StackLang.HolProg 64 :=
.seq rawBody784_84 rawBody784_85

def rawBody784_87 : StackLang.HolProg 64 :=
.seq rawBody784_83 rawBody784_86

def rawBody784_88 : StackLang.HolProg 64 :=
.seq rawBody784_82 rawBody784_87

def rawBody784_89 : StackLang.HolProg 64 :=
.seq rawBody784_81 rawBody784_88

def rawBody784_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_92 : StackLang.HolProg 64 :=
.seq rawBody784_90 rawBody784_91

def rawBody784_93 : StackLang.HolProg 64 :=
.call (some (rawBody784_89, 0, 784, 4)) (Sum.inl 68) (some (rawBody784_92, 784, 5))

def rawBody784_94 : StackLang.HolProg 64 :=
.seq rawBody784_80 rawBody784_93

def rawBody784_95 : StackLang.HolProg 64 :=
.seq rawBody784_79 rawBody784_94

def rawBody784_96 : StackLang.HolProg 64 :=
.seq rawBody784_78 rawBody784_95

def rawBody784_97 : StackLang.HolProg 64 :=
.seq rawBody784_59 rawBody784_96

def rawBody784_98 : StackLang.HolProg 64 :=
.seq rawBody784_56 rawBody784_97

def rawBody784_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody784_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody784_102 : StackLang.HolProg 64 :=
.seq rawBody784_100 rawBody784_101

def rawBody784_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3620#64)

def rawBody784_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_106 : StackLang.HolProg 64 :=
.seq rawBody784_104 rawBody784_105

def rawBody784_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 7

def rawBody784_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_117 : StackLang.HolProg 64 :=
.seq rawBody784_115 rawBody784_116

def rawBody784_118 : StackLang.HolProg 64 :=
.seq rawBody784_114 rawBody784_117

def rawBody784_119 : StackLang.HolProg 64 :=
.seq rawBody784_113 rawBody784_118

def rawBody784_120 : StackLang.HolProg 64 :=
.seq rawBody784_112 rawBody784_119

def rawBody784_121 : StackLang.HolProg 64 :=
.seq rawBody784_111 rawBody784_120

def rawBody784_122 : StackLang.HolProg 64 :=
.seq rawBody784_110 rawBody784_121

def rawBody784_123 : StackLang.HolProg 64 :=
.seq rawBody784_109 rawBody784_122

def rawBody784_124 : StackLang.HolProg 64 :=
.seq rawBody784_108 rawBody784_123

def rawBody784_125 : StackLang.HolProg 64 :=
.seq rawBody784_107 rawBody784_124

def rawBody784_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody784_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_136 : StackLang.HolProg 64 :=
.seq rawBody784_134 rawBody784_135

def rawBody784_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody784_139 : StackLang.HolProg 64 :=
.seq rawBody784_137 rawBody784_138

def rawBody784_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody784_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody784_142 : StackLang.HolProg 64 :=
.seq rawBody784_140 rawBody784_141

def rawBody784_143 : StackLang.HolProg 64 :=
.seq rawBody784_139 rawBody784_142

def rawBody784_144 : StackLang.HolProg 64 :=
.seq rawBody784_136 rawBody784_143

def rawBody784_145 : StackLang.HolProg 64 :=
.seq rawBody784_133 rawBody784_144

def rawBody784_146 : StackLang.HolProg 64 :=
.seq rawBody784_132 rawBody784_145

def rawBody784_147 : StackLang.HolProg 64 :=
.seq rawBody784_131 rawBody784_146

def rawBody784_148 : StackLang.HolProg 64 :=
.seq rawBody784_130 rawBody784_147

def rawBody784_149 : StackLang.HolProg 64 :=
.seq rawBody784_129 rawBody784_148

def rawBody784_150 : StackLang.HolProg 64 :=
.seq rawBody784_128 rawBody784_149

def rawBody784_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody784_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_155 : StackLang.HolProg 64 :=
.seq rawBody784_153 rawBody784_154

def rawBody784_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody784_158 : StackLang.HolProg 64 :=
.seq rawBody784_156 rawBody784_157

def rawBody784_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody784_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody784_161 : StackLang.HolProg 64 :=
.seq rawBody784_159 rawBody784_160

def rawBody784_162 : StackLang.HolProg 64 :=
.seq rawBody784_158 rawBody784_161

def rawBody784_163 : StackLang.HolProg 64 :=
.seq rawBody784_155 rawBody784_162

def rawBody784_164 : StackLang.HolProg 64 :=
.seq rawBody784_152 rawBody784_163

def rawBody784_165 : StackLang.HolProg 64 :=
.seq rawBody784_151 rawBody784_164

def rawBody784_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_167 : StackLang.HolProg 64 :=
.seq rawBody784_165 rawBody784_166

def rawBody784_168 : StackLang.HolProg 64 :=
.call (some (rawBody784_150, 0, 784, 6)) (Sum.inl 778) (some (rawBody784_167, 784, 7))

def rawBody784_169 : StackLang.HolProg 64 :=
.seq rawBody784_127 rawBody784_168

def rawBody784_170 : StackLang.HolProg 64 :=
.seq rawBody784_126 rawBody784_169

def rawBody784_171 : StackLang.HolProg 64 :=
.seq rawBody784_125 rawBody784_170

def rawBody784_172 : StackLang.HolProg 64 :=
.seq rawBody784_106 rawBody784_171

def rawBody784_173 : StackLang.HolProg 64 :=
.seq rawBody784_103 rawBody784_172

def rawBody784_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody784_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody784_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody784_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody784_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody784_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody784_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody784_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody784_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_191 : StackLang.HolProg 64 :=
.seq rawBody784_189 rawBody784_190

def rawBody784_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody784_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody784_194 : StackLang.HolProg 64 :=
.seq rawBody784_192 rawBody784_193

def rawBody784_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_197 : StackLang.HolProg 64 :=
.seq rawBody784_195 rawBody784_196

def rawBody784_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody784_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody784_200 : StackLang.HolProg 64 :=
.seq rawBody784_198 rawBody784_199

def rawBody784_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def rawBody784_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody784_203 : StackLang.HolProg 64 :=
.seq rawBody784_201 rawBody784_202

def rawBody784_204 : StackLang.HolProg 64 :=
.seq rawBody784_200 rawBody784_203

def rawBody784_205 : StackLang.HolProg 64 :=
.seq rawBody784_197 rawBody784_204

def rawBody784_206 : StackLang.HolProg 64 :=
.seq rawBody784_194 rawBody784_205

def rawBody784_207 : StackLang.HolProg 64 :=
.seq rawBody784_191 rawBody784_206

def rawBody784_208 : StackLang.HolProg 64 :=
.seq rawBody784_188 rawBody784_207

def rawBody784_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3621#64)

def rawBody784_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_212 : StackLang.HolProg 64 :=
.seq rawBody784_210 rawBody784_211

def rawBody784_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 9

def rawBody784_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_223 : StackLang.HolProg 64 :=
.seq rawBody784_221 rawBody784_222

def rawBody784_224 : StackLang.HolProg 64 :=
.seq rawBody784_220 rawBody784_223

def rawBody784_225 : StackLang.HolProg 64 :=
.seq rawBody784_219 rawBody784_224

def rawBody784_226 : StackLang.HolProg 64 :=
.seq rawBody784_218 rawBody784_225

def rawBody784_227 : StackLang.HolProg 64 :=
.seq rawBody784_217 rawBody784_226

def rawBody784_228 : StackLang.HolProg 64 :=
.seq rawBody784_216 rawBody784_227

def rawBody784_229 : StackLang.HolProg 64 :=
.seq rawBody784_215 rawBody784_228

def rawBody784_230 : StackLang.HolProg 64 :=
.seq rawBody784_214 rawBody784_229

def rawBody784_231 : StackLang.HolProg 64 :=
.seq rawBody784_213 rawBody784_230

def rawBody784_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody784_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody784_242 : StackLang.HolProg 64 :=
.seq rawBody784_240 rawBody784_241

def rawBody784_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody784_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody784_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody784_246 : StackLang.HolProg 64 :=
.seq rawBody784_244 rawBody784_245

def rawBody784_247 : StackLang.HolProg 64 :=
.seq rawBody784_243 rawBody784_246

def rawBody784_248 : StackLang.HolProg 64 :=
.seq rawBody784_242 rawBody784_247

def rawBody784_249 : StackLang.HolProg 64 :=
.seq rawBody784_239 rawBody784_248

def rawBody784_250 : StackLang.HolProg 64 :=
.seq rawBody784_238 rawBody784_249

def rawBody784_251 : StackLang.HolProg 64 :=
.seq rawBody784_237 rawBody784_250

def rawBody784_252 : StackLang.HolProg 64 :=
.seq rawBody784_236 rawBody784_251

def rawBody784_253 : StackLang.HolProg 64 :=
.seq rawBody784_235 rawBody784_252

def rawBody784_254 : StackLang.HolProg 64 :=
.seq rawBody784_234 rawBody784_253

def rawBody784_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody784_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody784_259 : StackLang.HolProg 64 :=
.seq rawBody784_257 rawBody784_258

def rawBody784_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody784_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody784_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody784_263 : StackLang.HolProg 64 :=
.seq rawBody784_261 rawBody784_262

def rawBody784_264 : StackLang.HolProg 64 :=
.seq rawBody784_260 rawBody784_263

def rawBody784_265 : StackLang.HolProg 64 :=
.seq rawBody784_259 rawBody784_264

def rawBody784_266 : StackLang.HolProg 64 :=
.seq rawBody784_256 rawBody784_265

def rawBody784_267 : StackLang.HolProg 64 :=
.seq rawBody784_255 rawBody784_266

def rawBody784_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_269 : StackLang.HolProg 64 :=
.seq rawBody784_267 rawBody784_268

def rawBody784_270 : StackLang.HolProg 64 :=
.call (some (rawBody784_254, 0, 784, 8)) (Sum.inl 782) (some (rawBody784_269, 784, 9))

def rawBody784_271 : StackLang.HolProg 64 :=
.seq rawBody784_233 rawBody784_270

def rawBody784_272 : StackLang.HolProg 64 :=
.seq rawBody784_232 rawBody784_271

def rawBody784_273 : StackLang.HolProg 64 :=
.seq rawBody784_231 rawBody784_272

def rawBody784_274 : StackLang.HolProg 64 :=
.seq rawBody784_212 rawBody784_273

def rawBody784_275 : StackLang.HolProg 64 :=
.seq rawBody784_209 rawBody784_274

def rawBody784_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_278 : StackLang.HolProg 64 :=
.seq rawBody784_276 rawBody784_277

def rawBody784_279 : StackLang.HolProg 64 :=
.seq rawBody784_275 rawBody784_278

def rawBody784_280 : StackLang.HolProg 64 :=
.seq rawBody784_208 rawBody784_279

def rawBody784_281 : StackLang.HolProg 64 :=
.seq rawBody784_187 rawBody784_280

def rawBody784_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody784_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody784_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody784_286 : StackLang.HolProg 64 :=
.seq rawBody784_284 rawBody784_285

def rawBody784_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody784_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_289 : StackLang.HolProg 64 :=
.seq rawBody784_287 rawBody784_288

def rawBody784_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody784_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody784_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody784_293 : StackLang.HolProg 64 :=
.seq rawBody784_291 rawBody784_292

def rawBody784_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody784_295 : StackLang.HolProg 64 :=
.seq rawBody784_293 rawBody784_294

def rawBody784_296 : StackLang.HolProg 64 :=
.seq rawBody784_290 rawBody784_295

def rawBody784_297 : StackLang.HolProg 64 :=
.seq rawBody784_289 rawBody784_296

def rawBody784_298 : StackLang.HolProg 64 :=
.seq rawBody784_286 rawBody784_297

def rawBody784_299 : StackLang.HolProg 64 :=
.seq rawBody784_283 rawBody784_298

def rawBody784_300 : StackLang.HolProg 64 :=
.seq rawBody784_282 rawBody784_299

def rawBody784_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody784_281 rawBody784_300

def rawBody784_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody784_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody784_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody784_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody784_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody784_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody784_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody784_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody784_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody784_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def rawBody784_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody784_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody784_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody784_322 : StackLang.HolProg 64 :=
.seq rawBody784_320 rawBody784_321

def rawBody784_323 : StackLang.HolProg 64 :=
.seq rawBody784_319 rawBody784_322

def rawBody784_324 : StackLang.HolProg 64 :=
.seq rawBody784_318 rawBody784_323

def rawBody784_325 : StackLang.HolProg 64 :=
.seq rawBody784_317 rawBody784_324

def rawBody784_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3622#64)

def rawBody784_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_329 : StackLang.HolProg 64 :=
.seq rawBody784_327 rawBody784_328

def rawBody784_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 11

def rawBody784_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_340 : StackLang.HolProg 64 :=
.seq rawBody784_338 rawBody784_339

def rawBody784_341 : StackLang.HolProg 64 :=
.seq rawBody784_337 rawBody784_340

def rawBody784_342 : StackLang.HolProg 64 :=
.seq rawBody784_336 rawBody784_341

def rawBody784_343 : StackLang.HolProg 64 :=
.seq rawBody784_335 rawBody784_342

def rawBody784_344 : StackLang.HolProg 64 :=
.seq rawBody784_334 rawBody784_343

def rawBody784_345 : StackLang.HolProg 64 :=
.seq rawBody784_333 rawBody784_344

def rawBody784_346 : StackLang.HolProg 64 :=
.seq rawBody784_332 rawBody784_345

def rawBody784_347 : StackLang.HolProg 64 :=
.seq rawBody784_331 rawBody784_346

def rawBody784_348 : StackLang.HolProg 64 :=
.seq rawBody784_330 rawBody784_347

def rawBody784_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody784_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody784_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_360 : StackLang.HolProg 64 :=
.seq rawBody784_358 rawBody784_359

def rawBody784_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody784_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody784_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody784_364 : StackLang.HolProg 64 :=
.seq rawBody784_362 rawBody784_363

def rawBody784_365 : StackLang.HolProg 64 :=
.seq rawBody784_361 rawBody784_364

def rawBody784_366 : StackLang.HolProg 64 :=
.seq rawBody784_360 rawBody784_365

def rawBody784_367 : StackLang.HolProg 64 :=
.seq rawBody784_357 rawBody784_366

def rawBody784_368 : StackLang.HolProg 64 :=
.seq rawBody784_356 rawBody784_367

def rawBody784_369 : StackLang.HolProg 64 :=
.seq rawBody784_355 rawBody784_368

def rawBody784_370 : StackLang.HolProg 64 :=
.seq rawBody784_354 rawBody784_369

def rawBody784_371 : StackLang.HolProg 64 :=
.seq rawBody784_353 rawBody784_370

def rawBody784_372 : StackLang.HolProg 64 :=
.seq rawBody784_352 rawBody784_371

def rawBody784_373 : StackLang.HolProg 64 :=
.seq rawBody784_351 rawBody784_372

def rawBody784_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody784_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody784_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody784_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_379 : StackLang.HolProg 64 :=
.seq rawBody784_377 rawBody784_378

def rawBody784_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody784_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody784_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody784_383 : StackLang.HolProg 64 :=
.seq rawBody784_381 rawBody784_382

def rawBody784_384 : StackLang.HolProg 64 :=
.seq rawBody784_380 rawBody784_383

def rawBody784_385 : StackLang.HolProg 64 :=
.seq rawBody784_379 rawBody784_384

def rawBody784_386 : StackLang.HolProg 64 :=
.seq rawBody784_376 rawBody784_385

def rawBody784_387 : StackLang.HolProg 64 :=
.seq rawBody784_375 rawBody784_386

def rawBody784_388 : StackLang.HolProg 64 :=
.seq rawBody784_374 rawBody784_387

def rawBody784_389 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_390 : StackLang.HolProg 64 :=
.seq rawBody784_388 rawBody784_389

def rawBody784_391 : StackLang.HolProg 64 :=
.call (some (rawBody784_373, 0, 784, 10)) (Sum.inl 783) (some (rawBody784_390, 784, 11))

def rawBody784_392 : StackLang.HolProg 64 :=
.seq rawBody784_350 rawBody784_391

def rawBody784_393 : StackLang.HolProg 64 :=
.seq rawBody784_349 rawBody784_392

def rawBody784_394 : StackLang.HolProg 64 :=
.seq rawBody784_348 rawBody784_393

def rawBody784_395 : StackLang.HolProg 64 :=
.seq rawBody784_329 rawBody784_394

def rawBody784_396 : StackLang.HolProg 64 :=
.seq rawBody784_326 rawBody784_395

def rawBody784_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody784_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_400 : StackLang.HolProg 64 :=
.seq rawBody784_398 rawBody784_399

def rawBody784_401 : StackLang.HolProg 64 :=
.seq rawBody784_397 rawBody784_400

def rawBody784_402 : StackLang.HolProg 64 :=
.seq rawBody784_396 rawBody784_401

def rawBody784_403 : StackLang.HolProg 64 :=
.seq rawBody784_325 rawBody784_402

def rawBody784_404 : StackLang.HolProg 64 :=
.seq rawBody784_316 rawBody784_403

def rawBody784_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody784_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody784_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody784_409 : StackLang.HolProg 64 :=
.seq rawBody784_407 rawBody784_408

def rawBody784_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody784_411 : StackLang.HolProg 64 :=
.seq rawBody784_409 rawBody784_410

def rawBody784_412 : StackLang.HolProg 64 :=
.seq rawBody784_406 rawBody784_411

def rawBody784_413 : StackLang.HolProg 64 :=
.seq rawBody784_405 rawBody784_412

def rawBody784_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody784_404 rawBody784_413

def rawBody784_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody784_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody784_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def rawBody784_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody784_420 : StackLang.HolProg 64 :=
.seq rawBody784_418 rawBody784_419

def rawBody784_421 : StackLang.HolProg 64 :=
.seq rawBody784_417 rawBody784_420

def rawBody784_422 : StackLang.HolProg 64 :=
.seq rawBody784_416 rawBody784_421

def rawBody784_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody784_424 : StackLang.HolProg 64 :=
.seq rawBody784_422 rawBody784_423

def rawBody784_425 : StackLang.HolProg 64 :=
.seq rawBody784_415 rawBody784_424

def rawBody784_426 : StackLang.HolProg 64 :=
.seq rawBody784_414 rawBody784_425

def rawBody784_427 : StackLang.HolProg 64 :=
.seq rawBody784_315 rawBody784_426

def rawBody784_428 : StackLang.HolProg 64 :=
.seq rawBody784_314 rawBody784_427

def rawBody784_429 : StackLang.HolProg 64 :=
.seq rawBody784_313 rawBody784_428

def rawBody784_430 : StackLang.HolProg 64 :=
.seq rawBody784_312 rawBody784_429

def rawBody784_431 : StackLang.HolProg 64 :=
.seq rawBody784_311 rawBody784_430

def rawBody784_432 : StackLang.HolProg 64 :=
.seq rawBody784_310 rawBody784_431

def rawBody784_433 : StackLang.HolProg 64 :=
.seq rawBody784_309 rawBody784_432

def rawBody784_434 : StackLang.HolProg 64 :=
.seq rawBody784_308 rawBody784_433

def rawBody784_435 : StackLang.HolProg 64 :=
.seq rawBody784_307 rawBody784_434

def rawBody784_436 : StackLang.HolProg 64 :=
.seq rawBody784_306 rawBody784_435

def rawBody784_437 : StackLang.HolProg 64 :=
.seq rawBody784_305 rawBody784_436

def rawBody784_438 : StackLang.HolProg 64 :=
.seq rawBody784_304 rawBody784_437

def rawBody784_439 : StackLang.HolProg 64 :=
.seq rawBody784_303 rawBody784_438

def rawBody784_440 : StackLang.HolProg 64 :=
.seq rawBody784_302 rawBody784_439

def rawBody784_441 : StackLang.HolProg 64 :=
.seq rawBody784_301 rawBody784_440

def rawBody784_442 : StackLang.HolProg 64 :=
.seq rawBody784_186 rawBody784_441

def rawBody784_443 : StackLang.HolProg 64 :=
.seq rawBody784_185 rawBody784_442

def rawBody784_444 : StackLang.HolProg 64 :=
.seq rawBody784_184 rawBody784_443

def rawBody784_445 : StackLang.HolProg 64 :=
.seq rawBody784_183 rawBody784_444

def rawBody784_446 : StackLang.HolProg 64 :=
.seq rawBody784_182 rawBody784_445

def rawBody784_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody784_449 : StackLang.HolProg 64 :=
.seq rawBody784_447 rawBody784_448

def rawBody784_450 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody784_446 rawBody784_449

def rawBody784_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody784_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody784_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody784_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody784_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def rawBody784_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def rawBody784_458 : StackLang.HolProg 64 :=
.seq rawBody784_456 rawBody784_457

def rawBody784_459 : StackLang.HolProg 64 :=
.seq rawBody784_455 rawBody784_458

def rawBody784_460 : StackLang.HolProg 64 :=
.seq rawBody784_454 rawBody784_459

def rawBody784_461 : StackLang.HolProg 64 :=
.seq rawBody784_453 rawBody784_460

def rawBody784_462 : StackLang.HolProg 64 :=
.seq rawBody784_452 rawBody784_461

def rawBody784_463 : StackLang.HolProg 64 :=
.seq rawBody784_451 rawBody784_462

def rawBody784_464 : StackLang.HolProg 64 :=
.seq rawBody784_450 rawBody784_463

def rawBody784_465 : StackLang.HolProg 64 :=
.seq rawBody784_181 rawBody784_464

def rawBody784_466 : StackLang.HolProg 64 :=
.seq rawBody784_180 rawBody784_465

def rawBody784_467 : StackLang.HolProg 64 :=
.loop rawBody784_466

def rawBody784_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 9

def rawBody784_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody784_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody784_472 : StackLang.HolProg 64 :=
.seq rawBody784_470 rawBody784_471

def rawBody784_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody784_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody784_475 : StackLang.HolProg 64 :=
.seq rawBody784_473 rawBody784_474

def rawBody784_476 : StackLang.HolProg 64 :=
.seq rawBody784_472 rawBody784_475

def rawBody784_477 : StackLang.HolProg 64 :=
.seq rawBody784_469 rawBody784_476

def rawBody784_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3623#64)

def rawBody784_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_481 : StackLang.HolProg 64 :=
.seq rawBody784_479 rawBody784_480

def rawBody784_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 13

def rawBody784_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_492 : StackLang.HolProg 64 :=
.seq rawBody784_490 rawBody784_491

def rawBody784_493 : StackLang.HolProg 64 :=
.seq rawBody784_489 rawBody784_492

def rawBody784_494 : StackLang.HolProg 64 :=
.seq rawBody784_488 rawBody784_493

def rawBody784_495 : StackLang.HolProg 64 :=
.seq rawBody784_487 rawBody784_494

def rawBody784_496 : StackLang.HolProg 64 :=
.seq rawBody784_486 rawBody784_495

def rawBody784_497 : StackLang.HolProg 64 :=
.seq rawBody784_485 rawBody784_496

def rawBody784_498 : StackLang.HolProg 64 :=
.seq rawBody784_484 rawBody784_497

def rawBody784_499 : StackLang.HolProg 64 :=
.seq rawBody784_483 rawBody784_498

def rawBody784_500 : StackLang.HolProg 64 :=
.seq rawBody784_482 rawBody784_499

def rawBody784_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody784_508 : StackLang.HolProg 64 :=
.seq rawBody784_506 rawBody784_507

def rawBody784_509 : StackLang.HolProg 64 :=
.seq rawBody784_505 rawBody784_508

def rawBody784_510 : StackLang.HolProg 64 :=
.seq rawBody784_504 rawBody784_509

def rawBody784_511 : StackLang.HolProg 64 :=
.seq rawBody784_503 rawBody784_510

def rawBody784_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody784_513 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_514 : StackLang.HolProg 64 :=
.seq rawBody784_512 rawBody784_513

def rawBody784_515 : StackLang.HolProg 64 :=
.call (some (rawBody784_511, 0, 784, 12)) (Sum.inl 780) (some (rawBody784_514, 784, 13))

def rawBody784_516 : StackLang.HolProg 64 :=
.seq rawBody784_502 rawBody784_515

def rawBody784_517 : StackLang.HolProg 64 :=
.seq rawBody784_501 rawBody784_516

def rawBody784_518 : StackLang.HolProg 64 :=
.seq rawBody784_500 rawBody784_517

def rawBody784_519 : StackLang.HolProg 64 :=
.seq rawBody784_481 rawBody784_518

def rawBody784_520 : StackLang.HolProg 64 :=
.seq rawBody784_478 rawBody784_519

def rawBody784_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody784_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3624#64)

def rawBody784_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_526 : StackLang.HolProg 64 :=
.seq rawBody784_524 rawBody784_525

def rawBody784_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody784_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody784_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody784_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 15

def rawBody784_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody784_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody784_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody784_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody784_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_537 : StackLang.HolProg 64 :=
.seq rawBody784_535 rawBody784_536

def rawBody784_538 : StackLang.HolProg 64 :=
.seq rawBody784_534 rawBody784_537

def rawBody784_539 : StackLang.HolProg 64 :=
.seq rawBody784_533 rawBody784_538

def rawBody784_540 : StackLang.HolProg 64 :=
.seq rawBody784_532 rawBody784_539

def rawBody784_541 : StackLang.HolProg 64 :=
.seq rawBody784_531 rawBody784_540

def rawBody784_542 : StackLang.HolProg 64 :=
.seq rawBody784_530 rawBody784_541

def rawBody784_543 : StackLang.HolProg 64 :=
.seq rawBody784_529 rawBody784_542

def rawBody784_544 : StackLang.HolProg 64 :=
.seq rawBody784_528 rawBody784_543

def rawBody784_545 : StackLang.HolProg 64 :=
.seq rawBody784_527 rawBody784_544

def rawBody784_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody784_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody784_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody784_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody784_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody784_553 : StackLang.HolProg 64 :=
.seq rawBody784_551 rawBody784_552

def rawBody784_554 : StackLang.HolProg 64 :=
.seq rawBody784_550 rawBody784_553

def rawBody784_555 : StackLang.HolProg 64 :=
.seq rawBody784_549 rawBody784_554

def rawBody784_556 : StackLang.HolProg 64 :=
.seq rawBody784_548 rawBody784_555

def rawBody784_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody784_558 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody784_559 : StackLang.HolProg 64 :=
.seq rawBody784_557 rawBody784_558

def rawBody784_560 : StackLang.HolProg 64 :=
.call (some (rawBody784_556, 0, 784, 14)) (Sum.inl 70) (some (rawBody784_559, 784, 15))

def rawBody784_561 : StackLang.HolProg 64 :=
.seq rawBody784_547 rawBody784_560

def rawBody784_562 : StackLang.HolProg 64 :=
.seq rawBody784_546 rawBody784_561

def rawBody784_563 : StackLang.HolProg 64 :=
.seq rawBody784_545 rawBody784_562

def rawBody784_564 : StackLang.HolProg 64 :=
.seq rawBody784_526 rawBody784_563

def rawBody784_565 : StackLang.HolProg 64 :=
.seq rawBody784_523 rawBody784_564

def rawBody784_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody784_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody784_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody784_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody784_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody784_571 : StackLang.HolProg 64 :=
.seq rawBody784_569 rawBody784_570

def rawBody784_572 : StackLang.HolProg 64 :=
.seq rawBody784_568 rawBody784_571

def rawBody784_573 : StackLang.HolProg 64 :=
.seq rawBody784_567 rawBody784_572

def rawBody784_574 : StackLang.HolProg 64 :=
.seq rawBody784_566 rawBody784_573

def rawBody784_575 : StackLang.HolProg 64 :=
.seq rawBody784_565 rawBody784_574

def rawBody784_576 : StackLang.HolProg 64 :=
.seq rawBody784_522 rawBody784_575

def rawBody784_577 : StackLang.HolProg 64 :=
.seq rawBody784_521 rawBody784_576

def rawBody784_578 : StackLang.HolProg 64 :=
.seq rawBody784_520 rawBody784_577

def rawBody784_579 : StackLang.HolProg 64 :=
.seq rawBody784_477 rawBody784_578

def rawBody784_580 : StackLang.HolProg 64 :=
.seq rawBody784_468 rawBody784_579

def rawBody784_581 : StackLang.HolProg 64 :=
.seq rawBody784_467 rawBody784_580

def rawBody784_582 : StackLang.HolProg 64 :=
.seq rawBody784_179 rawBody784_581

def rawBody784_583 : StackLang.HolProg 64 :=
.seq rawBody784_178 rawBody784_582

def rawBody784_584 : StackLang.HolProg 64 :=
.seq rawBody784_177 rawBody784_583

def rawBody784_585 : StackLang.HolProg 64 :=
.seq rawBody784_176 rawBody784_584

def rawBody784_586 : StackLang.HolProg 64 :=
.seq rawBody784_175 rawBody784_585

def rawBody784_587 : StackLang.HolProg 64 :=
.seq rawBody784_174 rawBody784_586

def rawBody784_588 : StackLang.HolProg 64 :=
.seq rawBody784_173 rawBody784_587

def rawBody784_589 : StackLang.HolProg 64 :=
.seq rawBody784_102 rawBody784_588

def rawBody784_590 : StackLang.HolProg 64 :=
.seq rawBody784_99 rawBody784_589

def rawBody784_591 : StackLang.HolProg 64 :=
.seq rawBody784_98 rawBody784_590

def rawBody784_592 : StackLang.HolProg 64 :=
.seq rawBody784_55 rawBody784_591

def rawBody784_593 : StackLang.HolProg 64 :=
.seq rawBody784_54 rawBody784_592

def rawBody784_594 : StackLang.HolProg 64 :=
.seq rawBody784_53 rawBody784_593

def rawBody784_595 : StackLang.HolProg 64 :=
.seq rawBody784_52 rawBody784_594

def rawBody784_596 : StackLang.HolProg 64 :=
.seq rawBody784_9 rawBody784_595

def rawBody784_597 : StackLang.HolProg 64 :=
.seq rawBody784_0 rawBody784_596

def raw784 : StackLang.HolProg 64 := rawBody784_597
theorem raw784_eq : StackRawCall.compTop RawInfo.rawInfo (function784 (.list [])).1 = raw784 := by
  kernel_rfl
#print axioms raw784_eq
end InitECandidate.Proofs.BackendStages
