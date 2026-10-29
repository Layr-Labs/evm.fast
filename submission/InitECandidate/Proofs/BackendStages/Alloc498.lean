import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw498
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody498_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody498_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody498_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1550#64)

def AllocBody498_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_5 : StackLang.HolProg 64 :=
.seq AllocBody498_3 AllocBody498_4

def AllocBody498_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 3

def AllocBody498_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_16 : StackLang.HolProg 64 :=
.seq AllocBody498_14 AllocBody498_15

def AllocBody498_17 : StackLang.HolProg 64 :=
.seq AllocBody498_13 AllocBody498_16

def AllocBody498_18 : StackLang.HolProg 64 :=
.seq AllocBody498_12 AllocBody498_17

def AllocBody498_19 : StackLang.HolProg 64 :=
.seq AllocBody498_11 AllocBody498_18

def AllocBody498_20 : StackLang.HolProg 64 :=
.seq AllocBody498_10 AllocBody498_19

def AllocBody498_21 : StackLang.HolProg 64 :=
.seq AllocBody498_9 AllocBody498_20

def AllocBody498_22 : StackLang.HolProg 64 :=
.seq AllocBody498_8 AllocBody498_21

def AllocBody498_23 : StackLang.HolProg 64 :=
.seq AllocBody498_7 AllocBody498_22

def AllocBody498_24 : StackLang.HolProg 64 :=
.seq AllocBody498_6 AllocBody498_23

def AllocBody498_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody498_32 : StackLang.HolProg 64 :=
.seq AllocBody498_30 AllocBody498_31

def AllocBody498_33 : StackLang.HolProg 64 :=
.seq AllocBody498_29 AllocBody498_32

def AllocBody498_34 : StackLang.HolProg 64 :=
.seq AllocBody498_28 AllocBody498_33

def AllocBody498_35 : StackLang.HolProg 64 :=
.seq AllocBody498_27 AllocBody498_34

def AllocBody498_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_38 : StackLang.HolProg 64 :=
.seq AllocBody498_36 AllocBody498_37

def AllocBody498_39 : StackLang.HolProg 64 :=
.call (some (AllocBody498_35, 0, 498, 2)) (Sum.inl 475) (some (AllocBody498_38, 498, 3))

def AllocBody498_40 : StackLang.HolProg 64 :=
.seq AllocBody498_26 AllocBody498_39

def AllocBody498_41 : StackLang.HolProg 64 :=
.seq AllocBody498_25 AllocBody498_40

def AllocBody498_42 : StackLang.HolProg 64 :=
.seq AllocBody498_24 AllocBody498_41

def AllocBody498_43 : StackLang.HolProg 64 :=
.seq AllocBody498_5 AllocBody498_42

def AllocBody498_44 : StackLang.HolProg 64 :=
.seq AllocBody498_2 AllocBody498_43

def AllocBody498_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody498_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody498_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody498_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody498_50 : StackLang.HolProg 64 :=
.seq AllocBody498_48 AllocBody498_49

def AllocBody498_51 : StackLang.HolProg 64 :=
.seq AllocBody498_47 AllocBody498_50

def AllocBody498_52 : StackLang.HolProg 64 :=
.seq AllocBody498_46 AllocBody498_51

def AllocBody498_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1551#64)

def AllocBody498_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_56 : StackLang.HolProg 64 :=
.seq AllocBody498_54 AllocBody498_55

def AllocBody498_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 5

def AllocBody498_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_67 : StackLang.HolProg 64 :=
.seq AllocBody498_65 AllocBody498_66

def AllocBody498_68 : StackLang.HolProg 64 :=
.seq AllocBody498_64 AllocBody498_67

def AllocBody498_69 : StackLang.HolProg 64 :=
.seq AllocBody498_63 AllocBody498_68

def AllocBody498_70 : StackLang.HolProg 64 :=
.seq AllocBody498_62 AllocBody498_69

def AllocBody498_71 : StackLang.HolProg 64 :=
.seq AllocBody498_61 AllocBody498_70

def AllocBody498_72 : StackLang.HolProg 64 :=
.seq AllocBody498_60 AllocBody498_71

def AllocBody498_73 : StackLang.HolProg 64 :=
.seq AllocBody498_59 AllocBody498_72

def AllocBody498_74 : StackLang.HolProg 64 :=
.seq AllocBody498_58 AllocBody498_73

def AllocBody498_75 : StackLang.HolProg 64 :=
.seq AllocBody498_57 AllocBody498_74

def AllocBody498_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody498_83 : StackLang.HolProg 64 :=
.seq AllocBody498_81 AllocBody498_82

def AllocBody498_84 : StackLang.HolProg 64 :=
.seq AllocBody498_80 AllocBody498_83

def AllocBody498_85 : StackLang.HolProg 64 :=
.seq AllocBody498_79 AllocBody498_84

def AllocBody498_86 : StackLang.HolProg 64 :=
.seq AllocBody498_78 AllocBody498_85

def AllocBody498_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_89 : StackLang.HolProg 64 :=
.seq AllocBody498_87 AllocBody498_88

def AllocBody498_90 : StackLang.HolProg 64 :=
.call (some (AllocBody498_86, 0, 498, 4)) (Sum.inl 475) (some (AllocBody498_89, 498, 5))

def AllocBody498_91 : StackLang.HolProg 64 :=
.seq AllocBody498_77 AllocBody498_90

def AllocBody498_92 : StackLang.HolProg 64 :=
.seq AllocBody498_76 AllocBody498_91

def AllocBody498_93 : StackLang.HolProg 64 :=
.seq AllocBody498_75 AllocBody498_92

def AllocBody498_94 : StackLang.HolProg 64 :=
.seq AllocBody498_56 AllocBody498_93

def AllocBody498_95 : StackLang.HolProg 64 :=
.seq AllocBody498_53 AllocBody498_94

def AllocBody498_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody498_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody498_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody498_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody498_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody498_102 : StackLang.HolProg 64 :=
.seq AllocBody498_100 AllocBody498_101

def AllocBody498_103 : StackLang.HolProg 64 :=
.seq AllocBody498_99 AllocBody498_102

def AllocBody498_104 : StackLang.HolProg 64 :=
.seq AllocBody498_98 AllocBody498_103

def AllocBody498_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1552#64)

def AllocBody498_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_108 : StackLang.HolProg 64 :=
.seq AllocBody498_106 AllocBody498_107

def AllocBody498_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 7

def AllocBody498_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_119 : StackLang.HolProg 64 :=
.seq AllocBody498_117 AllocBody498_118

def AllocBody498_120 : StackLang.HolProg 64 :=
.seq AllocBody498_116 AllocBody498_119

def AllocBody498_121 : StackLang.HolProg 64 :=
.seq AllocBody498_115 AllocBody498_120

def AllocBody498_122 : StackLang.HolProg 64 :=
.seq AllocBody498_114 AllocBody498_121

def AllocBody498_123 : StackLang.HolProg 64 :=
.seq AllocBody498_113 AllocBody498_122

def AllocBody498_124 : StackLang.HolProg 64 :=
.seq AllocBody498_112 AllocBody498_123

def AllocBody498_125 : StackLang.HolProg 64 :=
.seq AllocBody498_111 AllocBody498_124

def AllocBody498_126 : StackLang.HolProg 64 :=
.seq AllocBody498_110 AllocBody498_125

def AllocBody498_127 : StackLang.HolProg 64 :=
.seq AllocBody498_109 AllocBody498_126

def AllocBody498_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody498_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody498_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody498_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody498_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody498_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody498_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody498_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody498_142 : StackLang.HolProg 64 :=
.seq AllocBody498_140 AllocBody498_141

def AllocBody498_143 : StackLang.HolProg 64 :=
.seq AllocBody498_139 AllocBody498_142

def AllocBody498_144 : StackLang.HolProg 64 :=
.seq AllocBody498_138 AllocBody498_143

def AllocBody498_145 : StackLang.HolProg 64 :=
.seq AllocBody498_137 AllocBody498_144

def AllocBody498_146 : StackLang.HolProg 64 :=
.seq AllocBody498_136 AllocBody498_145

def AllocBody498_147 : StackLang.HolProg 64 :=
.seq AllocBody498_135 AllocBody498_146

def AllocBody498_148 : StackLang.HolProg 64 :=
.seq AllocBody498_134 AllocBody498_147

def AllocBody498_149 : StackLang.HolProg 64 :=
.seq AllocBody498_133 AllocBody498_148

def AllocBody498_150 : StackLang.HolProg 64 :=
.seq AllocBody498_132 AllocBody498_149

def AllocBody498_151 : StackLang.HolProg 64 :=
.seq AllocBody498_131 AllocBody498_150

def AllocBody498_152 : StackLang.HolProg 64 :=
.seq AllocBody498_130 AllocBody498_151

def AllocBody498_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody498_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody498_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody498_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody498_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody498_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody498_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody498_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody498_161 : StackLang.HolProg 64 :=
.seq AllocBody498_159 AllocBody498_160

def AllocBody498_162 : StackLang.HolProg 64 :=
.seq AllocBody498_158 AllocBody498_161

def AllocBody498_163 : StackLang.HolProg 64 :=
.seq AllocBody498_157 AllocBody498_162

def AllocBody498_164 : StackLang.HolProg 64 :=
.seq AllocBody498_156 AllocBody498_163

def AllocBody498_165 : StackLang.HolProg 64 :=
.seq AllocBody498_155 AllocBody498_164

def AllocBody498_166 : StackLang.HolProg 64 :=
.seq AllocBody498_154 AllocBody498_165

def AllocBody498_167 : StackLang.HolProg 64 :=
.seq AllocBody498_153 AllocBody498_166

def AllocBody498_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_169 : StackLang.HolProg 64 :=
.seq AllocBody498_167 AllocBody498_168

def AllocBody498_170 : StackLang.HolProg 64 :=
.call (some (AllocBody498_152, 0, 498, 6)) (Sum.inl 470) (some (AllocBody498_169, 498, 7))

def AllocBody498_171 : StackLang.HolProg 64 :=
.seq AllocBody498_129 AllocBody498_170

def AllocBody498_172 : StackLang.HolProg 64 :=
.seq AllocBody498_128 AllocBody498_171

def AllocBody498_173 : StackLang.HolProg 64 :=
.seq AllocBody498_127 AllocBody498_172

def AllocBody498_174 : StackLang.HolProg 64 :=
.seq AllocBody498_108 AllocBody498_173

def AllocBody498_175 : StackLang.HolProg 64 :=
.seq AllocBody498_105 AllocBody498_174

def AllocBody498_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody498_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1553#64)

def AllocBody498_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_181 : StackLang.HolProg 64 :=
.seq AllocBody498_179 AllocBody498_180

def AllocBody498_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 9

def AllocBody498_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_192 : StackLang.HolProg 64 :=
.seq AllocBody498_190 AllocBody498_191

def AllocBody498_193 : StackLang.HolProg 64 :=
.seq AllocBody498_189 AllocBody498_192

def AllocBody498_194 : StackLang.HolProg 64 :=
.seq AllocBody498_188 AllocBody498_193

def AllocBody498_195 : StackLang.HolProg 64 :=
.seq AllocBody498_187 AllocBody498_194

def AllocBody498_196 : StackLang.HolProg 64 :=
.seq AllocBody498_186 AllocBody498_195

def AllocBody498_197 : StackLang.HolProg 64 :=
.seq AllocBody498_185 AllocBody498_196

def AllocBody498_198 : StackLang.HolProg 64 :=
.seq AllocBody498_184 AllocBody498_197

def AllocBody498_199 : StackLang.HolProg 64 :=
.seq AllocBody498_183 AllocBody498_198

def AllocBody498_200 : StackLang.HolProg 64 :=
.seq AllocBody498_182 AllocBody498_199

def AllocBody498_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody498_208 : StackLang.HolProg 64 :=
.seq AllocBody498_206 AllocBody498_207

def AllocBody498_209 : StackLang.HolProg 64 :=
.seq AllocBody498_205 AllocBody498_208

def AllocBody498_210 : StackLang.HolProg 64 :=
.seq AllocBody498_204 AllocBody498_209

def AllocBody498_211 : StackLang.HolProg 64 :=
.seq AllocBody498_203 AllocBody498_210

def AllocBody498_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_214 : StackLang.HolProg 64 :=
.seq AllocBody498_212 AllocBody498_213

def AllocBody498_215 : StackLang.HolProg 64 :=
.call (some (AllocBody498_211, 0, 498, 8)) (Sum.inl 120) (some (AllocBody498_214, 498, 9))

def AllocBody498_216 : StackLang.HolProg 64 :=
.seq AllocBody498_202 AllocBody498_215

def AllocBody498_217 : StackLang.HolProg 64 :=
.seq AllocBody498_201 AllocBody498_216

def AllocBody498_218 : StackLang.HolProg 64 :=
.seq AllocBody498_200 AllocBody498_217

def AllocBody498_219 : StackLang.HolProg 64 :=
.seq AllocBody498_181 AllocBody498_218

def AllocBody498_220 : StackLang.HolProg 64 :=
.seq AllocBody498_178 AllocBody498_219

def AllocBody498_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody498_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1554#64)

def AllocBody498_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_226 : StackLang.HolProg 64 :=
.seq AllocBody498_224 AllocBody498_225

def AllocBody498_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 11

def AllocBody498_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_237 : StackLang.HolProg 64 :=
.seq AllocBody498_235 AllocBody498_236

def AllocBody498_238 : StackLang.HolProg 64 :=
.seq AllocBody498_234 AllocBody498_237

def AllocBody498_239 : StackLang.HolProg 64 :=
.seq AllocBody498_233 AllocBody498_238

def AllocBody498_240 : StackLang.HolProg 64 :=
.seq AllocBody498_232 AllocBody498_239

def AllocBody498_241 : StackLang.HolProg 64 :=
.seq AllocBody498_231 AllocBody498_240

def AllocBody498_242 : StackLang.HolProg 64 :=
.seq AllocBody498_230 AllocBody498_241

def AllocBody498_243 : StackLang.HolProg 64 :=
.seq AllocBody498_229 AllocBody498_242

def AllocBody498_244 : StackLang.HolProg 64 :=
.seq AllocBody498_228 AllocBody498_243

def AllocBody498_245 : StackLang.HolProg 64 :=
.seq AllocBody498_227 AllocBody498_244

def AllocBody498_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_253 : StackLang.HolProg 64 :=
.seq AllocBody498_251 AllocBody498_252

def AllocBody498_254 : StackLang.HolProg 64 :=
.seq AllocBody498_250 AllocBody498_253

def AllocBody498_255 : StackLang.HolProg 64 :=
.seq AllocBody498_249 AllocBody498_254

def AllocBody498_256 : StackLang.HolProg 64 :=
.seq AllocBody498_248 AllocBody498_255

def AllocBody498_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_259 : StackLang.HolProg 64 :=
.seq AllocBody498_257 AllocBody498_258

def AllocBody498_260 : StackLang.HolProg 64 :=
.call (some (AllocBody498_256, 0, 498, 10)) (Sum.inl 476) (some (AllocBody498_259, 498, 11))

def AllocBody498_261 : StackLang.HolProg 64 :=
.seq AllocBody498_247 AllocBody498_260

def AllocBody498_262 : StackLang.HolProg 64 :=
.seq AllocBody498_246 AllocBody498_261

def AllocBody498_263 : StackLang.HolProg 64 :=
.seq AllocBody498_245 AllocBody498_262

def AllocBody498_264 : StackLang.HolProg 64 :=
.seq AllocBody498_226 AllocBody498_263

def AllocBody498_265 : StackLang.HolProg 64 :=
.seq AllocBody498_223 AllocBody498_264

def AllocBody498_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody498_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1555#64)

def AllocBody498_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_272 : StackLang.HolProg 64 :=
.seq AllocBody498_270 AllocBody498_271

def AllocBody498_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody498_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody498_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody498_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 13

def AllocBody498_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody498_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody498_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody498_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody498_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_283 : StackLang.HolProg 64 :=
.seq AllocBody498_281 AllocBody498_282

def AllocBody498_284 : StackLang.HolProg 64 :=
.seq AllocBody498_280 AllocBody498_283

def AllocBody498_285 : StackLang.HolProg 64 :=
.seq AllocBody498_279 AllocBody498_284

def AllocBody498_286 : StackLang.HolProg 64 :=
.seq AllocBody498_278 AllocBody498_285

def AllocBody498_287 : StackLang.HolProg 64 :=
.seq AllocBody498_277 AllocBody498_286

def AllocBody498_288 : StackLang.HolProg 64 :=
.seq AllocBody498_276 AllocBody498_287

def AllocBody498_289 : StackLang.HolProg 64 :=
.seq AllocBody498_275 AllocBody498_288

def AllocBody498_290 : StackLang.HolProg 64 :=
.seq AllocBody498_274 AllocBody498_289

def AllocBody498_291 : StackLang.HolProg 64 :=
.seq AllocBody498_273 AllocBody498_290

def AllocBody498_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody498_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody498_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody498_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody498_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody498_299 : StackLang.HolProg 64 :=
.seq AllocBody498_297 AllocBody498_298

def AllocBody498_300 : StackLang.HolProg 64 :=
.seq AllocBody498_296 AllocBody498_299

def AllocBody498_301 : StackLang.HolProg 64 :=
.seq AllocBody498_295 AllocBody498_300

def AllocBody498_302 : StackLang.HolProg 64 :=
.seq AllocBody498_294 AllocBody498_301

def AllocBody498_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody498_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody498_305 : StackLang.HolProg 64 :=
.seq AllocBody498_303 AllocBody498_304

def AllocBody498_306 : StackLang.HolProg 64 :=
.call (some (AllocBody498_302, 0, 498, 12)) (Sum.inl 490) (some (AllocBody498_305, 498, 13))

def AllocBody498_307 : StackLang.HolProg 64 :=
.seq AllocBody498_293 AllocBody498_306

def AllocBody498_308 : StackLang.HolProg 64 :=
.seq AllocBody498_292 AllocBody498_307

def AllocBody498_309 : StackLang.HolProg 64 :=
.seq AllocBody498_291 AllocBody498_308

def AllocBody498_310 : StackLang.HolProg 64 :=
.seq AllocBody498_272 AllocBody498_309

def AllocBody498_311 : StackLang.HolProg 64 :=
.seq AllocBody498_269 AllocBody498_310

def AllocBody498_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody498_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody498_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody498_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody498_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody498_317 : StackLang.HolProg 64 :=
.seq AllocBody498_315 AllocBody498_316

def AllocBody498_318 : StackLang.HolProg 64 :=
.seq AllocBody498_314 AllocBody498_317

def AllocBody498_319 : StackLang.HolProg 64 :=
.seq AllocBody498_313 AllocBody498_318

def AllocBody498_320 : StackLang.HolProg 64 :=
.seq AllocBody498_312 AllocBody498_319

def AllocBody498_321 : StackLang.HolProg 64 :=
.seq AllocBody498_311 AllocBody498_320

def AllocBody498_322 : StackLang.HolProg 64 :=
.seq AllocBody498_268 AllocBody498_321

def AllocBody498_323 : StackLang.HolProg 64 :=
.seq AllocBody498_267 AllocBody498_322

def AllocBody498_324 : StackLang.HolProg 64 :=
.seq AllocBody498_266 AllocBody498_323

def AllocBody498_325 : StackLang.HolProg 64 :=
.seq AllocBody498_265 AllocBody498_324

def AllocBody498_326 : StackLang.HolProg 64 :=
.seq AllocBody498_222 AllocBody498_325

def AllocBody498_327 : StackLang.HolProg 64 :=
.seq AllocBody498_221 AllocBody498_326

def AllocBody498_328 : StackLang.HolProg 64 :=
.seq AllocBody498_220 AllocBody498_327

def AllocBody498_329 : StackLang.HolProg 64 :=
.seq AllocBody498_177 AllocBody498_328

def AllocBody498_330 : StackLang.HolProg 64 :=
.seq AllocBody498_176 AllocBody498_329

def AllocBody498_331 : StackLang.HolProg 64 :=
.seq AllocBody498_175 AllocBody498_330

def AllocBody498_332 : StackLang.HolProg 64 :=
.seq AllocBody498_104 AllocBody498_331

def AllocBody498_333 : StackLang.HolProg 64 :=
.seq AllocBody498_97 AllocBody498_332

def AllocBody498_334 : StackLang.HolProg 64 :=
.seq AllocBody498_96 AllocBody498_333

def AllocBody498_335 : StackLang.HolProg 64 :=
.seq AllocBody498_95 AllocBody498_334

def AllocBody498_336 : StackLang.HolProg 64 :=
.seq AllocBody498_52 AllocBody498_335

def AllocBody498_337 : StackLang.HolProg 64 :=
.seq AllocBody498_45 AllocBody498_336

def AllocBody498_338 : StackLang.HolProg 64 :=
.seq AllocBody498_44 AllocBody498_337

def AllocBody498_339 : StackLang.HolProg 64 :=
.seq AllocBody498_1 AllocBody498_338

def AllocBody498_340 : StackLang.HolProg 64 :=
.seq AllocBody498_0 AllocBody498_339

def Alloc498 : Nat × StackLang.HolProg 64 := (498, AllocBody498_340)
theorem Alloc498_eq : StackAlloc.progComp (498, raw498) = Alloc498 := by
  kernel_rfl
#print axioms Alloc498_eq
end InitECandidate.Proofs.BackendStages
