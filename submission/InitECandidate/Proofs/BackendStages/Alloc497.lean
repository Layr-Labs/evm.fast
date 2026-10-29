import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw497
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody497_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody497_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody497_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1544#64)

def AllocBody497_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_5 : StackLang.HolProg 64 :=
.seq AllocBody497_3 AllocBody497_4

def AllocBody497_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 3

def AllocBody497_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_16 : StackLang.HolProg 64 :=
.seq AllocBody497_14 AllocBody497_15

def AllocBody497_17 : StackLang.HolProg 64 :=
.seq AllocBody497_13 AllocBody497_16

def AllocBody497_18 : StackLang.HolProg 64 :=
.seq AllocBody497_12 AllocBody497_17

def AllocBody497_19 : StackLang.HolProg 64 :=
.seq AllocBody497_11 AllocBody497_18

def AllocBody497_20 : StackLang.HolProg 64 :=
.seq AllocBody497_10 AllocBody497_19

def AllocBody497_21 : StackLang.HolProg 64 :=
.seq AllocBody497_9 AllocBody497_20

def AllocBody497_22 : StackLang.HolProg 64 :=
.seq AllocBody497_8 AllocBody497_21

def AllocBody497_23 : StackLang.HolProg 64 :=
.seq AllocBody497_7 AllocBody497_22

def AllocBody497_24 : StackLang.HolProg 64 :=
.seq AllocBody497_6 AllocBody497_23

def AllocBody497_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody497_32 : StackLang.HolProg 64 :=
.seq AllocBody497_30 AllocBody497_31

def AllocBody497_33 : StackLang.HolProg 64 :=
.seq AllocBody497_29 AllocBody497_32

def AllocBody497_34 : StackLang.HolProg 64 :=
.seq AllocBody497_28 AllocBody497_33

def AllocBody497_35 : StackLang.HolProg 64 :=
.seq AllocBody497_27 AllocBody497_34

def AllocBody497_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_38 : StackLang.HolProg 64 :=
.seq AllocBody497_36 AllocBody497_37

def AllocBody497_39 : StackLang.HolProg 64 :=
.call (some (AllocBody497_35, 0, 497, 2)) (Sum.inl 475) (some (AllocBody497_38, 497, 3))

def AllocBody497_40 : StackLang.HolProg 64 :=
.seq AllocBody497_26 AllocBody497_39

def AllocBody497_41 : StackLang.HolProg 64 :=
.seq AllocBody497_25 AllocBody497_40

def AllocBody497_42 : StackLang.HolProg 64 :=
.seq AllocBody497_24 AllocBody497_41

def AllocBody497_43 : StackLang.HolProg 64 :=
.seq AllocBody497_5 AllocBody497_42

def AllocBody497_44 : StackLang.HolProg 64 :=
.seq AllocBody497_2 AllocBody497_43

def AllocBody497_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody497_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody497_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody497_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody497_50 : StackLang.HolProg 64 :=
.seq AllocBody497_48 AllocBody497_49

def AllocBody497_51 : StackLang.HolProg 64 :=
.seq AllocBody497_47 AllocBody497_50

def AllocBody497_52 : StackLang.HolProg 64 :=
.seq AllocBody497_46 AllocBody497_51

def AllocBody497_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1545#64)

def AllocBody497_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_56 : StackLang.HolProg 64 :=
.seq AllocBody497_54 AllocBody497_55

def AllocBody497_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 5

def AllocBody497_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_67 : StackLang.HolProg 64 :=
.seq AllocBody497_65 AllocBody497_66

def AllocBody497_68 : StackLang.HolProg 64 :=
.seq AllocBody497_64 AllocBody497_67

def AllocBody497_69 : StackLang.HolProg 64 :=
.seq AllocBody497_63 AllocBody497_68

def AllocBody497_70 : StackLang.HolProg 64 :=
.seq AllocBody497_62 AllocBody497_69

def AllocBody497_71 : StackLang.HolProg 64 :=
.seq AllocBody497_61 AllocBody497_70

def AllocBody497_72 : StackLang.HolProg 64 :=
.seq AllocBody497_60 AllocBody497_71

def AllocBody497_73 : StackLang.HolProg 64 :=
.seq AllocBody497_59 AllocBody497_72

def AllocBody497_74 : StackLang.HolProg 64 :=
.seq AllocBody497_58 AllocBody497_73

def AllocBody497_75 : StackLang.HolProg 64 :=
.seq AllocBody497_57 AllocBody497_74

def AllocBody497_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody497_83 : StackLang.HolProg 64 :=
.seq AllocBody497_81 AllocBody497_82

def AllocBody497_84 : StackLang.HolProg 64 :=
.seq AllocBody497_80 AllocBody497_83

def AllocBody497_85 : StackLang.HolProg 64 :=
.seq AllocBody497_79 AllocBody497_84

def AllocBody497_86 : StackLang.HolProg 64 :=
.seq AllocBody497_78 AllocBody497_85

def AllocBody497_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_89 : StackLang.HolProg 64 :=
.seq AllocBody497_87 AllocBody497_88

def AllocBody497_90 : StackLang.HolProg 64 :=
.call (some (AllocBody497_86, 0, 497, 4)) (Sum.inl 475) (some (AllocBody497_89, 497, 5))

def AllocBody497_91 : StackLang.HolProg 64 :=
.seq AllocBody497_77 AllocBody497_90

def AllocBody497_92 : StackLang.HolProg 64 :=
.seq AllocBody497_76 AllocBody497_91

def AllocBody497_93 : StackLang.HolProg 64 :=
.seq AllocBody497_75 AllocBody497_92

def AllocBody497_94 : StackLang.HolProg 64 :=
.seq AllocBody497_56 AllocBody497_93

def AllocBody497_95 : StackLang.HolProg 64 :=
.seq AllocBody497_53 AllocBody497_94

def AllocBody497_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody497_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody497_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody497_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody497_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody497_102 : StackLang.HolProg 64 :=
.seq AllocBody497_100 AllocBody497_101

def AllocBody497_103 : StackLang.HolProg 64 :=
.seq AllocBody497_99 AllocBody497_102

def AllocBody497_104 : StackLang.HolProg 64 :=
.seq AllocBody497_98 AllocBody497_103

def AllocBody497_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1546#64)

def AllocBody497_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_108 : StackLang.HolProg 64 :=
.seq AllocBody497_106 AllocBody497_107

def AllocBody497_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 7

def AllocBody497_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_119 : StackLang.HolProg 64 :=
.seq AllocBody497_117 AllocBody497_118

def AllocBody497_120 : StackLang.HolProg 64 :=
.seq AllocBody497_116 AllocBody497_119

def AllocBody497_121 : StackLang.HolProg 64 :=
.seq AllocBody497_115 AllocBody497_120

def AllocBody497_122 : StackLang.HolProg 64 :=
.seq AllocBody497_114 AllocBody497_121

def AllocBody497_123 : StackLang.HolProg 64 :=
.seq AllocBody497_113 AllocBody497_122

def AllocBody497_124 : StackLang.HolProg 64 :=
.seq AllocBody497_112 AllocBody497_123

def AllocBody497_125 : StackLang.HolProg 64 :=
.seq AllocBody497_111 AllocBody497_124

def AllocBody497_126 : StackLang.HolProg 64 :=
.seq AllocBody497_110 AllocBody497_125

def AllocBody497_127 : StackLang.HolProg 64 :=
.seq AllocBody497_109 AllocBody497_126

def AllocBody497_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody497_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody497_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody497_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody497_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody497_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody497_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody497_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody497_142 : StackLang.HolProg 64 :=
.seq AllocBody497_140 AllocBody497_141

def AllocBody497_143 : StackLang.HolProg 64 :=
.seq AllocBody497_139 AllocBody497_142

def AllocBody497_144 : StackLang.HolProg 64 :=
.seq AllocBody497_138 AllocBody497_143

def AllocBody497_145 : StackLang.HolProg 64 :=
.seq AllocBody497_137 AllocBody497_144

def AllocBody497_146 : StackLang.HolProg 64 :=
.seq AllocBody497_136 AllocBody497_145

def AllocBody497_147 : StackLang.HolProg 64 :=
.seq AllocBody497_135 AllocBody497_146

def AllocBody497_148 : StackLang.HolProg 64 :=
.seq AllocBody497_134 AllocBody497_147

def AllocBody497_149 : StackLang.HolProg 64 :=
.seq AllocBody497_133 AllocBody497_148

def AllocBody497_150 : StackLang.HolProg 64 :=
.seq AllocBody497_132 AllocBody497_149

def AllocBody497_151 : StackLang.HolProg 64 :=
.seq AllocBody497_131 AllocBody497_150

def AllocBody497_152 : StackLang.HolProg 64 :=
.seq AllocBody497_130 AllocBody497_151

def AllocBody497_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody497_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody497_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody497_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody497_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody497_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody497_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody497_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody497_161 : StackLang.HolProg 64 :=
.seq AllocBody497_159 AllocBody497_160

def AllocBody497_162 : StackLang.HolProg 64 :=
.seq AllocBody497_158 AllocBody497_161

def AllocBody497_163 : StackLang.HolProg 64 :=
.seq AllocBody497_157 AllocBody497_162

def AllocBody497_164 : StackLang.HolProg 64 :=
.seq AllocBody497_156 AllocBody497_163

def AllocBody497_165 : StackLang.HolProg 64 :=
.seq AllocBody497_155 AllocBody497_164

def AllocBody497_166 : StackLang.HolProg 64 :=
.seq AllocBody497_154 AllocBody497_165

def AllocBody497_167 : StackLang.HolProg 64 :=
.seq AllocBody497_153 AllocBody497_166

def AllocBody497_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_169 : StackLang.HolProg 64 :=
.seq AllocBody497_167 AllocBody497_168

def AllocBody497_170 : StackLang.HolProg 64 :=
.call (some (AllocBody497_152, 0, 497, 6)) (Sum.inl 470) (some (AllocBody497_169, 497, 7))

def AllocBody497_171 : StackLang.HolProg 64 :=
.seq AllocBody497_129 AllocBody497_170

def AllocBody497_172 : StackLang.HolProg 64 :=
.seq AllocBody497_128 AllocBody497_171

def AllocBody497_173 : StackLang.HolProg 64 :=
.seq AllocBody497_127 AllocBody497_172

def AllocBody497_174 : StackLang.HolProg 64 :=
.seq AllocBody497_108 AllocBody497_173

def AllocBody497_175 : StackLang.HolProg 64 :=
.seq AllocBody497_105 AllocBody497_174

def AllocBody497_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody497_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1547#64)

def AllocBody497_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_181 : StackLang.HolProg 64 :=
.seq AllocBody497_179 AllocBody497_180

def AllocBody497_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 9

def AllocBody497_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_192 : StackLang.HolProg 64 :=
.seq AllocBody497_190 AllocBody497_191

def AllocBody497_193 : StackLang.HolProg 64 :=
.seq AllocBody497_189 AllocBody497_192

def AllocBody497_194 : StackLang.HolProg 64 :=
.seq AllocBody497_188 AllocBody497_193

def AllocBody497_195 : StackLang.HolProg 64 :=
.seq AllocBody497_187 AllocBody497_194

def AllocBody497_196 : StackLang.HolProg 64 :=
.seq AllocBody497_186 AllocBody497_195

def AllocBody497_197 : StackLang.HolProg 64 :=
.seq AllocBody497_185 AllocBody497_196

def AllocBody497_198 : StackLang.HolProg 64 :=
.seq AllocBody497_184 AllocBody497_197

def AllocBody497_199 : StackLang.HolProg 64 :=
.seq AllocBody497_183 AllocBody497_198

def AllocBody497_200 : StackLang.HolProg 64 :=
.seq AllocBody497_182 AllocBody497_199

def AllocBody497_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody497_208 : StackLang.HolProg 64 :=
.seq AllocBody497_206 AllocBody497_207

def AllocBody497_209 : StackLang.HolProg 64 :=
.seq AllocBody497_205 AllocBody497_208

def AllocBody497_210 : StackLang.HolProg 64 :=
.seq AllocBody497_204 AllocBody497_209

def AllocBody497_211 : StackLang.HolProg 64 :=
.seq AllocBody497_203 AllocBody497_210

def AllocBody497_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_214 : StackLang.HolProg 64 :=
.seq AllocBody497_212 AllocBody497_213

def AllocBody497_215 : StackLang.HolProg 64 :=
.call (some (AllocBody497_211, 0, 497, 8)) (Sum.inl 116) (some (AllocBody497_214, 497, 9))

def AllocBody497_216 : StackLang.HolProg 64 :=
.seq AllocBody497_202 AllocBody497_215

def AllocBody497_217 : StackLang.HolProg 64 :=
.seq AllocBody497_201 AllocBody497_216

def AllocBody497_218 : StackLang.HolProg 64 :=
.seq AllocBody497_200 AllocBody497_217

def AllocBody497_219 : StackLang.HolProg 64 :=
.seq AllocBody497_181 AllocBody497_218

def AllocBody497_220 : StackLang.HolProg 64 :=
.seq AllocBody497_178 AllocBody497_219

def AllocBody497_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody497_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1548#64)

def AllocBody497_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_226 : StackLang.HolProg 64 :=
.seq AllocBody497_224 AllocBody497_225

def AllocBody497_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 11

def AllocBody497_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_237 : StackLang.HolProg 64 :=
.seq AllocBody497_235 AllocBody497_236

def AllocBody497_238 : StackLang.HolProg 64 :=
.seq AllocBody497_234 AllocBody497_237

def AllocBody497_239 : StackLang.HolProg 64 :=
.seq AllocBody497_233 AllocBody497_238

def AllocBody497_240 : StackLang.HolProg 64 :=
.seq AllocBody497_232 AllocBody497_239

def AllocBody497_241 : StackLang.HolProg 64 :=
.seq AllocBody497_231 AllocBody497_240

def AllocBody497_242 : StackLang.HolProg 64 :=
.seq AllocBody497_230 AllocBody497_241

def AllocBody497_243 : StackLang.HolProg 64 :=
.seq AllocBody497_229 AllocBody497_242

def AllocBody497_244 : StackLang.HolProg 64 :=
.seq AllocBody497_228 AllocBody497_243

def AllocBody497_245 : StackLang.HolProg 64 :=
.seq AllocBody497_227 AllocBody497_244

def AllocBody497_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_253 : StackLang.HolProg 64 :=
.seq AllocBody497_251 AllocBody497_252

def AllocBody497_254 : StackLang.HolProg 64 :=
.seq AllocBody497_250 AllocBody497_253

def AllocBody497_255 : StackLang.HolProg 64 :=
.seq AllocBody497_249 AllocBody497_254

def AllocBody497_256 : StackLang.HolProg 64 :=
.seq AllocBody497_248 AllocBody497_255

def AllocBody497_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_259 : StackLang.HolProg 64 :=
.seq AllocBody497_257 AllocBody497_258

def AllocBody497_260 : StackLang.HolProg 64 :=
.call (some (AllocBody497_256, 0, 497, 10)) (Sum.inl 476) (some (AllocBody497_259, 497, 11))

def AllocBody497_261 : StackLang.HolProg 64 :=
.seq AllocBody497_247 AllocBody497_260

def AllocBody497_262 : StackLang.HolProg 64 :=
.seq AllocBody497_246 AllocBody497_261

def AllocBody497_263 : StackLang.HolProg 64 :=
.seq AllocBody497_245 AllocBody497_262

def AllocBody497_264 : StackLang.HolProg 64 :=
.seq AllocBody497_226 AllocBody497_263

def AllocBody497_265 : StackLang.HolProg 64 :=
.seq AllocBody497_223 AllocBody497_264

def AllocBody497_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody497_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1549#64)

def AllocBody497_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_272 : StackLang.HolProg 64 :=
.seq AllocBody497_270 AllocBody497_271

def AllocBody497_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody497_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody497_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody497_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 13

def AllocBody497_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody497_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody497_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody497_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody497_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_283 : StackLang.HolProg 64 :=
.seq AllocBody497_281 AllocBody497_282

def AllocBody497_284 : StackLang.HolProg 64 :=
.seq AllocBody497_280 AllocBody497_283

def AllocBody497_285 : StackLang.HolProg 64 :=
.seq AllocBody497_279 AllocBody497_284

def AllocBody497_286 : StackLang.HolProg 64 :=
.seq AllocBody497_278 AllocBody497_285

def AllocBody497_287 : StackLang.HolProg 64 :=
.seq AllocBody497_277 AllocBody497_286

def AllocBody497_288 : StackLang.HolProg 64 :=
.seq AllocBody497_276 AllocBody497_287

def AllocBody497_289 : StackLang.HolProg 64 :=
.seq AllocBody497_275 AllocBody497_288

def AllocBody497_290 : StackLang.HolProg 64 :=
.seq AllocBody497_274 AllocBody497_289

def AllocBody497_291 : StackLang.HolProg 64 :=
.seq AllocBody497_273 AllocBody497_290

def AllocBody497_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody497_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody497_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody497_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody497_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody497_299 : StackLang.HolProg 64 :=
.seq AllocBody497_297 AllocBody497_298

def AllocBody497_300 : StackLang.HolProg 64 :=
.seq AllocBody497_296 AllocBody497_299

def AllocBody497_301 : StackLang.HolProg 64 :=
.seq AllocBody497_295 AllocBody497_300

def AllocBody497_302 : StackLang.HolProg 64 :=
.seq AllocBody497_294 AllocBody497_301

def AllocBody497_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody497_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody497_305 : StackLang.HolProg 64 :=
.seq AllocBody497_303 AllocBody497_304

def AllocBody497_306 : StackLang.HolProg 64 :=
.call (some (AllocBody497_302, 0, 497, 12)) (Sum.inl 490) (some (AllocBody497_305, 497, 13))

def AllocBody497_307 : StackLang.HolProg 64 :=
.seq AllocBody497_293 AllocBody497_306

def AllocBody497_308 : StackLang.HolProg 64 :=
.seq AllocBody497_292 AllocBody497_307

def AllocBody497_309 : StackLang.HolProg 64 :=
.seq AllocBody497_291 AllocBody497_308

def AllocBody497_310 : StackLang.HolProg 64 :=
.seq AllocBody497_272 AllocBody497_309

def AllocBody497_311 : StackLang.HolProg 64 :=
.seq AllocBody497_269 AllocBody497_310

def AllocBody497_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody497_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody497_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody497_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody497_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody497_317 : StackLang.HolProg 64 :=
.seq AllocBody497_315 AllocBody497_316

def AllocBody497_318 : StackLang.HolProg 64 :=
.seq AllocBody497_314 AllocBody497_317

def AllocBody497_319 : StackLang.HolProg 64 :=
.seq AllocBody497_313 AllocBody497_318

def AllocBody497_320 : StackLang.HolProg 64 :=
.seq AllocBody497_312 AllocBody497_319

def AllocBody497_321 : StackLang.HolProg 64 :=
.seq AllocBody497_311 AllocBody497_320

def AllocBody497_322 : StackLang.HolProg 64 :=
.seq AllocBody497_268 AllocBody497_321

def AllocBody497_323 : StackLang.HolProg 64 :=
.seq AllocBody497_267 AllocBody497_322

def AllocBody497_324 : StackLang.HolProg 64 :=
.seq AllocBody497_266 AllocBody497_323

def AllocBody497_325 : StackLang.HolProg 64 :=
.seq AllocBody497_265 AllocBody497_324

def AllocBody497_326 : StackLang.HolProg 64 :=
.seq AllocBody497_222 AllocBody497_325

def AllocBody497_327 : StackLang.HolProg 64 :=
.seq AllocBody497_221 AllocBody497_326

def AllocBody497_328 : StackLang.HolProg 64 :=
.seq AllocBody497_220 AllocBody497_327

def AllocBody497_329 : StackLang.HolProg 64 :=
.seq AllocBody497_177 AllocBody497_328

def AllocBody497_330 : StackLang.HolProg 64 :=
.seq AllocBody497_176 AllocBody497_329

def AllocBody497_331 : StackLang.HolProg 64 :=
.seq AllocBody497_175 AllocBody497_330

def AllocBody497_332 : StackLang.HolProg 64 :=
.seq AllocBody497_104 AllocBody497_331

def AllocBody497_333 : StackLang.HolProg 64 :=
.seq AllocBody497_97 AllocBody497_332

def AllocBody497_334 : StackLang.HolProg 64 :=
.seq AllocBody497_96 AllocBody497_333

def AllocBody497_335 : StackLang.HolProg 64 :=
.seq AllocBody497_95 AllocBody497_334

def AllocBody497_336 : StackLang.HolProg 64 :=
.seq AllocBody497_52 AllocBody497_335

def AllocBody497_337 : StackLang.HolProg 64 :=
.seq AllocBody497_45 AllocBody497_336

def AllocBody497_338 : StackLang.HolProg 64 :=
.seq AllocBody497_44 AllocBody497_337

def AllocBody497_339 : StackLang.HolProg 64 :=
.seq AllocBody497_1 AllocBody497_338

def AllocBody497_340 : StackLang.HolProg 64 :=
.seq AllocBody497_0 AllocBody497_339

def Alloc497 : Nat × StackLang.HolProg 64 := (497, AllocBody497_340)
theorem Alloc497_eq : StackAlloc.progComp (497, raw497) = Alloc497 := by
  kernel_rfl
#print axioms Alloc497_eq
end InitECandidate.Proofs.BackendStages
