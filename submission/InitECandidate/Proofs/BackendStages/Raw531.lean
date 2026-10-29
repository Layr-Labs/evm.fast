import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function531
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody531_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody531_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody531_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1741#64)

def rawBody531_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_5 : StackLang.HolProg 64 :=
.seq rawBody531_3 rawBody531_4

def rawBody531_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody531_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody531_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 3

def rawBody531_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody531_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody531_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody531_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody531_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_16 : StackLang.HolProg 64 :=
.seq rawBody531_14 rawBody531_15

def rawBody531_17 : StackLang.HolProg 64 :=
.seq rawBody531_13 rawBody531_16

def rawBody531_18 : StackLang.HolProg 64 :=
.seq rawBody531_12 rawBody531_17

def rawBody531_19 : StackLang.HolProg 64 :=
.seq rawBody531_11 rawBody531_18

def rawBody531_20 : StackLang.HolProg 64 :=
.seq rawBody531_10 rawBody531_19

def rawBody531_21 : StackLang.HolProg 64 :=
.seq rawBody531_9 rawBody531_20

def rawBody531_22 : StackLang.HolProg 64 :=
.seq rawBody531_8 rawBody531_21

def rawBody531_23 : StackLang.HolProg 64 :=
.seq rawBody531_7 rawBody531_22

def rawBody531_24 : StackLang.HolProg 64 :=
.seq rawBody531_6 rawBody531_23

def rawBody531_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody531_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody531_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody531_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody531_32 : StackLang.HolProg 64 :=
.seq rawBody531_30 rawBody531_31

def rawBody531_33 : StackLang.HolProg 64 :=
.seq rawBody531_29 rawBody531_32

def rawBody531_34 : StackLang.HolProg 64 :=
.seq rawBody531_28 rawBody531_33

def rawBody531_35 : StackLang.HolProg 64 :=
.seq rawBody531_27 rawBody531_34

def rawBody531_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody531_38 : StackLang.HolProg 64 :=
.seq rawBody531_36 rawBody531_37

def rawBody531_39 : StackLang.HolProg 64 :=
.call (some (rawBody531_35, 0, 531, 2)) (Sum.inl 475) (some (rawBody531_38, 531, 3))

def rawBody531_40 : StackLang.HolProg 64 :=
.seq rawBody531_26 rawBody531_39

def rawBody531_41 : StackLang.HolProg 64 :=
.seq rawBody531_25 rawBody531_40

def rawBody531_42 : StackLang.HolProg 64 :=
.seq rawBody531_24 rawBody531_41

def rawBody531_43 : StackLang.HolProg 64 :=
.seq rawBody531_5 rawBody531_42

def rawBody531_44 : StackLang.HolProg 64 :=
.seq rawBody531_2 rawBody531_43

def rawBody531_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody531_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody531_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody531_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody531_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody531_50 : StackLang.HolProg 64 :=
.seq rawBody531_48 rawBody531_49

def rawBody531_51 : StackLang.HolProg 64 :=
.seq rawBody531_47 rawBody531_50

def rawBody531_52 : StackLang.HolProg 64 :=
.seq rawBody531_46 rawBody531_51

def rawBody531_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1742#64)

def rawBody531_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_56 : StackLang.HolProg 64 :=
.seq rawBody531_54 rawBody531_55

def rawBody531_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody531_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody531_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 5

def rawBody531_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody531_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody531_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody531_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody531_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_67 : StackLang.HolProg 64 :=
.seq rawBody531_65 rawBody531_66

def rawBody531_68 : StackLang.HolProg 64 :=
.seq rawBody531_64 rawBody531_67

def rawBody531_69 : StackLang.HolProg 64 :=
.seq rawBody531_63 rawBody531_68

def rawBody531_70 : StackLang.HolProg 64 :=
.seq rawBody531_62 rawBody531_69

def rawBody531_71 : StackLang.HolProg 64 :=
.seq rawBody531_61 rawBody531_70

def rawBody531_72 : StackLang.HolProg 64 :=
.seq rawBody531_60 rawBody531_71

def rawBody531_73 : StackLang.HolProg 64 :=
.seq rawBody531_59 rawBody531_72

def rawBody531_74 : StackLang.HolProg 64 :=
.seq rawBody531_58 rawBody531_73

def rawBody531_75 : StackLang.HolProg 64 :=
.seq rawBody531_57 rawBody531_74

def rawBody531_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody531_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody531_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody531_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody531_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody531_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody531_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody531_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody531_87 : StackLang.HolProg 64 :=
.seq rawBody531_85 rawBody531_86

def rawBody531_88 : StackLang.HolProg 64 :=
.seq rawBody531_84 rawBody531_87

def rawBody531_89 : StackLang.HolProg 64 :=
.seq rawBody531_83 rawBody531_88

def rawBody531_90 : StackLang.HolProg 64 :=
.seq rawBody531_82 rawBody531_89

def rawBody531_91 : StackLang.HolProg 64 :=
.seq rawBody531_81 rawBody531_90

def rawBody531_92 : StackLang.HolProg 64 :=
.seq rawBody531_80 rawBody531_91

def rawBody531_93 : StackLang.HolProg 64 :=
.seq rawBody531_79 rawBody531_92

def rawBody531_94 : StackLang.HolProg 64 :=
.seq rawBody531_78 rawBody531_93

def rawBody531_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody531_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody531_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody531_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody531_99 : StackLang.HolProg 64 :=
.seq rawBody531_97 rawBody531_98

def rawBody531_100 : StackLang.HolProg 64 :=
.seq rawBody531_96 rawBody531_99

def rawBody531_101 : StackLang.HolProg 64 :=
.seq rawBody531_95 rawBody531_100

def rawBody531_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody531_103 : StackLang.HolProg 64 :=
.seq rawBody531_101 rawBody531_102

def rawBody531_104 : StackLang.HolProg 64 :=
.call (some (rawBody531_94, 0, 531, 4)) (Sum.inl 475) (some (rawBody531_103, 531, 5))

def rawBody531_105 : StackLang.HolProg 64 :=
.seq rawBody531_77 rawBody531_104

def rawBody531_106 : StackLang.HolProg 64 :=
.seq rawBody531_76 rawBody531_105

def rawBody531_107 : StackLang.HolProg 64 :=
.seq rawBody531_75 rawBody531_106

def rawBody531_108 : StackLang.HolProg 64 :=
.seq rawBody531_56 rawBody531_107

def rawBody531_109 : StackLang.HolProg 64 :=
.seq rawBody531_53 rawBody531_108

def rawBody531_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody531_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody531_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody531_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody531_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody531_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody531_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody531_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody531_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody531_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody531_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody531_122 : StackLang.HolProg 64 :=
.seq rawBody531_120 rawBody531_121

def rawBody531_123 : StackLang.HolProg 64 :=
.seq rawBody531_119 rawBody531_122

def rawBody531_124 : StackLang.HolProg 64 :=
.seq rawBody531_118 rawBody531_123

def rawBody531_125 : StackLang.HolProg 64 :=
.seq rawBody531_117 rawBody531_124

def rawBody531_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1743#64)

def rawBody531_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_129 : StackLang.HolProg 64 :=
.seq rawBody531_127 rawBody531_128

def rawBody531_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody531_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody531_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 7

def rawBody531_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody531_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody531_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody531_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody531_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_140 : StackLang.HolProg 64 :=
.seq rawBody531_138 rawBody531_139

def rawBody531_141 : StackLang.HolProg 64 :=
.seq rawBody531_137 rawBody531_140

def rawBody531_142 : StackLang.HolProg 64 :=
.seq rawBody531_136 rawBody531_141

def rawBody531_143 : StackLang.HolProg 64 :=
.seq rawBody531_135 rawBody531_142

def rawBody531_144 : StackLang.HolProg 64 :=
.seq rawBody531_134 rawBody531_143

def rawBody531_145 : StackLang.HolProg 64 :=
.seq rawBody531_133 rawBody531_144

def rawBody531_146 : StackLang.HolProg 64 :=
.seq rawBody531_132 rawBody531_145

def rawBody531_147 : StackLang.HolProg 64 :=
.seq rawBody531_131 rawBody531_146

def rawBody531_148 : StackLang.HolProg 64 :=
.seq rawBody531_130 rawBody531_147

def rawBody531_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody531_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody531_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody531_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody531_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody531_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody531_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody531_159 : StackLang.HolProg 64 :=
.seq rawBody531_157 rawBody531_158

def rawBody531_160 : StackLang.HolProg 64 :=
.seq rawBody531_156 rawBody531_159

def rawBody531_161 : StackLang.HolProg 64 :=
.seq rawBody531_155 rawBody531_160

def rawBody531_162 : StackLang.HolProg 64 :=
.seq rawBody531_154 rawBody531_161

def rawBody531_163 : StackLang.HolProg 64 :=
.seq rawBody531_153 rawBody531_162

def rawBody531_164 : StackLang.HolProg 64 :=
.seq rawBody531_152 rawBody531_163

def rawBody531_165 : StackLang.HolProg 64 :=
.seq rawBody531_151 rawBody531_164

def rawBody531_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody531_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody531_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody531_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody531_170 : StackLang.HolProg 64 :=
.seq rawBody531_168 rawBody531_169

def rawBody531_171 : StackLang.HolProg 64 :=
.seq rawBody531_167 rawBody531_170

def rawBody531_172 : StackLang.HolProg 64 :=
.seq rawBody531_166 rawBody531_171

def rawBody531_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody531_174 : StackLang.HolProg 64 :=
.seq rawBody531_172 rawBody531_173

def rawBody531_175 : StackLang.HolProg 64 :=
.call (some (rawBody531_165, 0, 531, 6)) (Sum.inl 483) (some (rawBody531_174, 531, 7))

def rawBody531_176 : StackLang.HolProg 64 :=
.seq rawBody531_150 rawBody531_175

def rawBody531_177 : StackLang.HolProg 64 :=
.seq rawBody531_149 rawBody531_176

def rawBody531_178 : StackLang.HolProg 64 :=
.seq rawBody531_148 rawBody531_177

def rawBody531_179 : StackLang.HolProg 64 :=
.seq rawBody531_129 rawBody531_178

def rawBody531_180 : StackLang.HolProg 64 :=
.seq rawBody531_126 rawBody531_179

def rawBody531_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody531_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody531_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1744#64)

def rawBody531_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_186 : StackLang.HolProg 64 :=
.seq rawBody531_184 rawBody531_185

def rawBody531_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody531_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody531_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 9

def rawBody531_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody531_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody531_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody531_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody531_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_197 : StackLang.HolProg 64 :=
.seq rawBody531_195 rawBody531_196

def rawBody531_198 : StackLang.HolProg 64 :=
.seq rawBody531_194 rawBody531_197

def rawBody531_199 : StackLang.HolProg 64 :=
.seq rawBody531_193 rawBody531_198

def rawBody531_200 : StackLang.HolProg 64 :=
.seq rawBody531_192 rawBody531_199

def rawBody531_201 : StackLang.HolProg 64 :=
.seq rawBody531_191 rawBody531_200

def rawBody531_202 : StackLang.HolProg 64 :=
.seq rawBody531_190 rawBody531_201

def rawBody531_203 : StackLang.HolProg 64 :=
.seq rawBody531_189 rawBody531_202

def rawBody531_204 : StackLang.HolProg 64 :=
.seq rawBody531_188 rawBody531_203

def rawBody531_205 : StackLang.HolProg 64 :=
.seq rawBody531_187 rawBody531_204

def rawBody531_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody531_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody531_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody531_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody531_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody531_214 : StackLang.HolProg 64 :=
.seq rawBody531_212 rawBody531_213

def rawBody531_215 : StackLang.HolProg 64 :=
.seq rawBody531_211 rawBody531_214

def rawBody531_216 : StackLang.HolProg 64 :=
.seq rawBody531_210 rawBody531_215

def rawBody531_217 : StackLang.HolProg 64 :=
.seq rawBody531_209 rawBody531_216

def rawBody531_218 : StackLang.HolProg 64 :=
.seq rawBody531_208 rawBody531_217

def rawBody531_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody531_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody531_221 : StackLang.HolProg 64 :=
.seq rawBody531_219 rawBody531_220

def rawBody531_222 : StackLang.HolProg 64 :=
.call (some (rawBody531_218, 0, 531, 8)) (Sum.inl 462) (some (rawBody531_221, 531, 9))

def rawBody531_223 : StackLang.HolProg 64 :=
.seq rawBody531_207 rawBody531_222

def rawBody531_224 : StackLang.HolProg 64 :=
.seq rawBody531_206 rawBody531_223

def rawBody531_225 : StackLang.HolProg 64 :=
.seq rawBody531_205 rawBody531_224

def rawBody531_226 : StackLang.HolProg 64 :=
.seq rawBody531_186 rawBody531_225

def rawBody531_227 : StackLang.HolProg 64 :=
.seq rawBody531_183 rawBody531_226

def rawBody531_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody531_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody531_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody531_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody531_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody531_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody531_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody531_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody531_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody531_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody531_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1745#64)

def rawBody531_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_244 : StackLang.HolProg 64 :=
.seq rawBody531_242 rawBody531_243

def rawBody531_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody531_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody531_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody531_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 11

def rawBody531_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody531_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody531_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody531_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody531_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_255 : StackLang.HolProg 64 :=
.seq rawBody531_253 rawBody531_254

def rawBody531_256 : StackLang.HolProg 64 :=
.seq rawBody531_252 rawBody531_255

def rawBody531_257 : StackLang.HolProg 64 :=
.seq rawBody531_251 rawBody531_256

def rawBody531_258 : StackLang.HolProg 64 :=
.seq rawBody531_250 rawBody531_257

def rawBody531_259 : StackLang.HolProg 64 :=
.seq rawBody531_249 rawBody531_258

def rawBody531_260 : StackLang.HolProg 64 :=
.seq rawBody531_248 rawBody531_259

def rawBody531_261 : StackLang.HolProg 64 :=
.seq rawBody531_247 rawBody531_260

def rawBody531_262 : StackLang.HolProg 64 :=
.seq rawBody531_246 rawBody531_261

def rawBody531_263 : StackLang.HolProg 64 :=
.seq rawBody531_245 rawBody531_262

def rawBody531_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody531_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody531_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody531_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody531_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody531_271 : StackLang.HolProg 64 :=
.seq rawBody531_269 rawBody531_270

def rawBody531_272 : StackLang.HolProg 64 :=
.seq rawBody531_268 rawBody531_271

def rawBody531_273 : StackLang.HolProg 64 :=
.seq rawBody531_267 rawBody531_272

def rawBody531_274 : StackLang.HolProg 64 :=
.seq rawBody531_266 rawBody531_273

def rawBody531_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody531_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody531_277 : StackLang.HolProg 64 :=
.seq rawBody531_275 rawBody531_276

def rawBody531_278 : StackLang.HolProg 64 :=
.call (some (rawBody531_274, 0, 531, 10)) (Sum.inl 490) (some (rawBody531_277, 531, 11))

def rawBody531_279 : StackLang.HolProg 64 :=
.seq rawBody531_265 rawBody531_278

def rawBody531_280 : StackLang.HolProg 64 :=
.seq rawBody531_264 rawBody531_279

def rawBody531_281 : StackLang.HolProg 64 :=
.seq rawBody531_263 rawBody531_280

def rawBody531_282 : StackLang.HolProg 64 :=
.seq rawBody531_244 rawBody531_281

def rawBody531_283 : StackLang.HolProg 64 :=
.seq rawBody531_241 rawBody531_282

def rawBody531_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody531_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody531_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody531_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody531_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody531_289 : StackLang.HolProg 64 :=
.seq rawBody531_287 rawBody531_288

def rawBody531_290 : StackLang.HolProg 64 :=
.seq rawBody531_286 rawBody531_289

def rawBody531_291 : StackLang.HolProg 64 :=
.seq rawBody531_285 rawBody531_290

def rawBody531_292 : StackLang.HolProg 64 :=
.seq rawBody531_284 rawBody531_291

def rawBody531_293 : StackLang.HolProg 64 :=
.seq rawBody531_283 rawBody531_292

def rawBody531_294 : StackLang.HolProg 64 :=
.seq rawBody531_240 rawBody531_293

def rawBody531_295 : StackLang.HolProg 64 :=
.seq rawBody531_239 rawBody531_294

def rawBody531_296 : StackLang.HolProg 64 :=
.seq rawBody531_238 rawBody531_295

def rawBody531_297 : StackLang.HolProg 64 :=
.seq rawBody531_237 rawBody531_296

def rawBody531_298 : StackLang.HolProg 64 :=
.seq rawBody531_236 rawBody531_297

def rawBody531_299 : StackLang.HolProg 64 :=
.seq rawBody531_235 rawBody531_298

def rawBody531_300 : StackLang.HolProg 64 :=
.seq rawBody531_234 rawBody531_299

def rawBody531_301 : StackLang.HolProg 64 :=
.seq rawBody531_233 rawBody531_300

def rawBody531_302 : StackLang.HolProg 64 :=
.seq rawBody531_232 rawBody531_301

def rawBody531_303 : StackLang.HolProg 64 :=
.seq rawBody531_231 rawBody531_302

def rawBody531_304 : StackLang.HolProg 64 :=
.seq rawBody531_230 rawBody531_303

def rawBody531_305 : StackLang.HolProg 64 :=
.seq rawBody531_229 rawBody531_304

def rawBody531_306 : StackLang.HolProg 64 :=
.seq rawBody531_228 rawBody531_305

def rawBody531_307 : StackLang.HolProg 64 :=
.seq rawBody531_227 rawBody531_306

def rawBody531_308 : StackLang.HolProg 64 :=
.seq rawBody531_182 rawBody531_307

def rawBody531_309 : StackLang.HolProg 64 :=
.seq rawBody531_181 rawBody531_308

def rawBody531_310 : StackLang.HolProg 64 :=
.seq rawBody531_180 rawBody531_309

def rawBody531_311 : StackLang.HolProg 64 :=
.seq rawBody531_125 rawBody531_310

def rawBody531_312 : StackLang.HolProg 64 :=
.seq rawBody531_116 rawBody531_311

def rawBody531_313 : StackLang.HolProg 64 :=
.seq rawBody531_115 rawBody531_312

def rawBody531_314 : StackLang.HolProg 64 :=
.seq rawBody531_114 rawBody531_313

def rawBody531_315 : StackLang.HolProg 64 :=
.seq rawBody531_113 rawBody531_314

def rawBody531_316 : StackLang.HolProg 64 :=
.seq rawBody531_112 rawBody531_315

def rawBody531_317 : StackLang.HolProg 64 :=
.seq rawBody531_111 rawBody531_316

def rawBody531_318 : StackLang.HolProg 64 :=
.seq rawBody531_110 rawBody531_317

def rawBody531_319 : StackLang.HolProg 64 :=
.seq rawBody531_109 rawBody531_318

def rawBody531_320 : StackLang.HolProg 64 :=
.seq rawBody531_52 rawBody531_319

def rawBody531_321 : StackLang.HolProg 64 :=
.seq rawBody531_45 rawBody531_320

def rawBody531_322 : StackLang.HolProg 64 :=
.seq rawBody531_44 rawBody531_321

def rawBody531_323 : StackLang.HolProg 64 :=
.seq rawBody531_1 rawBody531_322

def rawBody531_324 : StackLang.HolProg 64 :=
.seq rawBody531_0 rawBody531_323

def raw531 : StackLang.HolProg 64 := rawBody531_324
theorem raw531_eq : StackRawCall.compTop RawInfo.rawInfo (function531 (.list [])).1 = raw531 := by
  kernel_rfl
#print axioms raw531_eq
end InitECandidate.Proofs.BackendStages
