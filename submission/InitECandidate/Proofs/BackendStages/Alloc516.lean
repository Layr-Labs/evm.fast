import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw516
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody516_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody516_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody516_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1659#64)

def AllocBody516_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_5 : StackLang.HolProg 64 :=
.seq AllocBody516_3 AllocBody516_4

def AllocBody516_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody516_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody516_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 3

def AllocBody516_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody516_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody516_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody516_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody516_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_16 : StackLang.HolProg 64 :=
.seq AllocBody516_14 AllocBody516_15

def AllocBody516_17 : StackLang.HolProg 64 :=
.seq AllocBody516_13 AllocBody516_16

def AllocBody516_18 : StackLang.HolProg 64 :=
.seq AllocBody516_12 AllocBody516_17

def AllocBody516_19 : StackLang.HolProg 64 :=
.seq AllocBody516_11 AllocBody516_18

def AllocBody516_20 : StackLang.HolProg 64 :=
.seq AllocBody516_10 AllocBody516_19

def AllocBody516_21 : StackLang.HolProg 64 :=
.seq AllocBody516_9 AllocBody516_20

def AllocBody516_22 : StackLang.HolProg 64 :=
.seq AllocBody516_8 AllocBody516_21

def AllocBody516_23 : StackLang.HolProg 64 :=
.seq AllocBody516_7 AllocBody516_22

def AllocBody516_24 : StackLang.HolProg 64 :=
.seq AllocBody516_6 AllocBody516_23

def AllocBody516_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody516_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody516_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody516_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody516_32 : StackLang.HolProg 64 :=
.seq AllocBody516_30 AllocBody516_31

def AllocBody516_33 : StackLang.HolProg 64 :=
.seq AllocBody516_29 AllocBody516_32

def AllocBody516_34 : StackLang.HolProg 64 :=
.seq AllocBody516_28 AllocBody516_33

def AllocBody516_35 : StackLang.HolProg 64 :=
.seq AllocBody516_27 AllocBody516_34

def AllocBody516_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody516_38 : StackLang.HolProg 64 :=
.seq AllocBody516_36 AllocBody516_37

def AllocBody516_39 : StackLang.HolProg 64 :=
.call (some (AllocBody516_35, 0, 516, 2)) (Sum.inl 475) (some (AllocBody516_38, 516, 3))

def AllocBody516_40 : StackLang.HolProg 64 :=
.seq AllocBody516_26 AllocBody516_39

def AllocBody516_41 : StackLang.HolProg 64 :=
.seq AllocBody516_25 AllocBody516_40

def AllocBody516_42 : StackLang.HolProg 64 :=
.seq AllocBody516_24 AllocBody516_41

def AllocBody516_43 : StackLang.HolProg 64 :=
.seq AllocBody516_5 AllocBody516_42

def AllocBody516_44 : StackLang.HolProg 64 :=
.seq AllocBody516_2 AllocBody516_43

def AllocBody516_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody516_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody516_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody516_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody516_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody516_50 : StackLang.HolProg 64 :=
.seq AllocBody516_48 AllocBody516_49

def AllocBody516_51 : StackLang.HolProg 64 :=
.seq AllocBody516_47 AllocBody516_50

def AllocBody516_52 : StackLang.HolProg 64 :=
.seq AllocBody516_46 AllocBody516_51

def AllocBody516_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1660#64)

def AllocBody516_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_56 : StackLang.HolProg 64 :=
.seq AllocBody516_54 AllocBody516_55

def AllocBody516_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody516_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody516_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 5

def AllocBody516_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody516_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody516_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody516_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody516_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_67 : StackLang.HolProg 64 :=
.seq AllocBody516_65 AllocBody516_66

def AllocBody516_68 : StackLang.HolProg 64 :=
.seq AllocBody516_64 AllocBody516_67

def AllocBody516_69 : StackLang.HolProg 64 :=
.seq AllocBody516_63 AllocBody516_68

def AllocBody516_70 : StackLang.HolProg 64 :=
.seq AllocBody516_62 AllocBody516_69

def AllocBody516_71 : StackLang.HolProg 64 :=
.seq AllocBody516_61 AllocBody516_70

def AllocBody516_72 : StackLang.HolProg 64 :=
.seq AllocBody516_60 AllocBody516_71

def AllocBody516_73 : StackLang.HolProg 64 :=
.seq AllocBody516_59 AllocBody516_72

def AllocBody516_74 : StackLang.HolProg 64 :=
.seq AllocBody516_58 AllocBody516_73

def AllocBody516_75 : StackLang.HolProg 64 :=
.seq AllocBody516_57 AllocBody516_74

def AllocBody516_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody516_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody516_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody516_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody516_83 : StackLang.HolProg 64 :=
.seq AllocBody516_81 AllocBody516_82

def AllocBody516_84 : StackLang.HolProg 64 :=
.seq AllocBody516_80 AllocBody516_83

def AllocBody516_85 : StackLang.HolProg 64 :=
.seq AllocBody516_79 AllocBody516_84

def AllocBody516_86 : StackLang.HolProg 64 :=
.seq AllocBody516_78 AllocBody516_85

def AllocBody516_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody516_89 : StackLang.HolProg 64 :=
.seq AllocBody516_87 AllocBody516_88

def AllocBody516_90 : StackLang.HolProg 64 :=
.call (some (AllocBody516_86, 0, 516, 4)) (Sum.inl 475) (some (AllocBody516_89, 516, 5))

def AllocBody516_91 : StackLang.HolProg 64 :=
.seq AllocBody516_77 AllocBody516_90

def AllocBody516_92 : StackLang.HolProg 64 :=
.seq AllocBody516_76 AllocBody516_91

def AllocBody516_93 : StackLang.HolProg 64 :=
.seq AllocBody516_75 AllocBody516_92

def AllocBody516_94 : StackLang.HolProg 64 :=
.seq AllocBody516_56 AllocBody516_93

def AllocBody516_95 : StackLang.HolProg 64 :=
.seq AllocBody516_53 AllocBody516_94

def AllocBody516_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody516_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody516_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody516_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody516_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody516_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody516_102 : StackLang.HolProg 64 :=
.seq AllocBody516_100 AllocBody516_101

def AllocBody516_103 : StackLang.HolProg 64 :=
.seq AllocBody516_99 AllocBody516_102

def AllocBody516_104 : StackLang.HolProg 64 :=
.seq AllocBody516_98 AllocBody516_103

def AllocBody516_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1661#64)

def AllocBody516_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_108 : StackLang.HolProg 64 :=
.seq AllocBody516_106 AllocBody516_107

def AllocBody516_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody516_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody516_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 7

def AllocBody516_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody516_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody516_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody516_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody516_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_119 : StackLang.HolProg 64 :=
.seq AllocBody516_117 AllocBody516_118

def AllocBody516_120 : StackLang.HolProg 64 :=
.seq AllocBody516_116 AllocBody516_119

def AllocBody516_121 : StackLang.HolProg 64 :=
.seq AllocBody516_115 AllocBody516_120

def AllocBody516_122 : StackLang.HolProg 64 :=
.seq AllocBody516_114 AllocBody516_121

def AllocBody516_123 : StackLang.HolProg 64 :=
.seq AllocBody516_113 AllocBody516_122

def AllocBody516_124 : StackLang.HolProg 64 :=
.seq AllocBody516_112 AllocBody516_123

def AllocBody516_125 : StackLang.HolProg 64 :=
.seq AllocBody516_111 AllocBody516_124

def AllocBody516_126 : StackLang.HolProg 64 :=
.seq AllocBody516_110 AllocBody516_125

def AllocBody516_127 : StackLang.HolProg 64 :=
.seq AllocBody516_109 AllocBody516_126

def AllocBody516_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody516_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody516_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody516_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody516_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody516_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody516_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody516_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody516_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody516_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody516_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody516_142 : StackLang.HolProg 64 :=
.seq AllocBody516_140 AllocBody516_141

def AllocBody516_143 : StackLang.HolProg 64 :=
.seq AllocBody516_139 AllocBody516_142

def AllocBody516_144 : StackLang.HolProg 64 :=
.seq AllocBody516_138 AllocBody516_143

def AllocBody516_145 : StackLang.HolProg 64 :=
.seq AllocBody516_137 AllocBody516_144

def AllocBody516_146 : StackLang.HolProg 64 :=
.seq AllocBody516_136 AllocBody516_145

def AllocBody516_147 : StackLang.HolProg 64 :=
.seq AllocBody516_135 AllocBody516_146

def AllocBody516_148 : StackLang.HolProg 64 :=
.seq AllocBody516_134 AllocBody516_147

def AllocBody516_149 : StackLang.HolProg 64 :=
.seq AllocBody516_133 AllocBody516_148

def AllocBody516_150 : StackLang.HolProg 64 :=
.seq AllocBody516_132 AllocBody516_149

def AllocBody516_151 : StackLang.HolProg 64 :=
.seq AllocBody516_131 AllocBody516_150

def AllocBody516_152 : StackLang.HolProg 64 :=
.seq AllocBody516_130 AllocBody516_151

def AllocBody516_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody516_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody516_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody516_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody516_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody516_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody516_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody516_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody516_161 : StackLang.HolProg 64 :=
.seq AllocBody516_159 AllocBody516_160

def AllocBody516_162 : StackLang.HolProg 64 :=
.seq AllocBody516_158 AllocBody516_161

def AllocBody516_163 : StackLang.HolProg 64 :=
.seq AllocBody516_157 AllocBody516_162

def AllocBody516_164 : StackLang.HolProg 64 :=
.seq AllocBody516_156 AllocBody516_163

def AllocBody516_165 : StackLang.HolProg 64 :=
.seq AllocBody516_155 AllocBody516_164

def AllocBody516_166 : StackLang.HolProg 64 :=
.seq AllocBody516_154 AllocBody516_165

def AllocBody516_167 : StackLang.HolProg 64 :=
.seq AllocBody516_153 AllocBody516_166

def AllocBody516_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody516_169 : StackLang.HolProg 64 :=
.seq AllocBody516_167 AllocBody516_168

def AllocBody516_170 : StackLang.HolProg 64 :=
.call (some (AllocBody516_152, 0, 516, 6)) (Sum.inl 470) (some (AllocBody516_169, 516, 7))

def AllocBody516_171 : StackLang.HolProg 64 :=
.seq AllocBody516_129 AllocBody516_170

def AllocBody516_172 : StackLang.HolProg 64 :=
.seq AllocBody516_128 AllocBody516_171

def AllocBody516_173 : StackLang.HolProg 64 :=
.seq AllocBody516_127 AllocBody516_172

def AllocBody516_174 : StackLang.HolProg 64 :=
.seq AllocBody516_108 AllocBody516_173

def AllocBody516_175 : StackLang.HolProg 64 :=
.seq AllocBody516_105 AllocBody516_174

def AllocBody516_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody516_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody516_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody516_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody516_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody516_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1662#64)

def AllocBody516_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_189 : StackLang.HolProg 64 :=
.seq AllocBody516_187 AllocBody516_188

def AllocBody516_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody516_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody516_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 9

def AllocBody516_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody516_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody516_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody516_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody516_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_200 : StackLang.HolProg 64 :=
.seq AllocBody516_198 AllocBody516_199

def AllocBody516_201 : StackLang.HolProg 64 :=
.seq AllocBody516_197 AllocBody516_200

def AllocBody516_202 : StackLang.HolProg 64 :=
.seq AllocBody516_196 AllocBody516_201

def AllocBody516_203 : StackLang.HolProg 64 :=
.seq AllocBody516_195 AllocBody516_202

def AllocBody516_204 : StackLang.HolProg 64 :=
.seq AllocBody516_194 AllocBody516_203

def AllocBody516_205 : StackLang.HolProg 64 :=
.seq AllocBody516_193 AllocBody516_204

def AllocBody516_206 : StackLang.HolProg 64 :=
.seq AllocBody516_192 AllocBody516_205

def AllocBody516_207 : StackLang.HolProg 64 :=
.seq AllocBody516_191 AllocBody516_206

def AllocBody516_208 : StackLang.HolProg 64 :=
.seq AllocBody516_190 AllocBody516_207

def AllocBody516_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody516_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody516_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody516_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_216 : StackLang.HolProg 64 :=
.seq AllocBody516_214 AllocBody516_215

def AllocBody516_217 : StackLang.HolProg 64 :=
.seq AllocBody516_213 AllocBody516_216

def AllocBody516_218 : StackLang.HolProg 64 :=
.seq AllocBody516_212 AllocBody516_217

def AllocBody516_219 : StackLang.HolProg 64 :=
.seq AllocBody516_211 AllocBody516_218

def AllocBody516_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody516_222 : StackLang.HolProg 64 :=
.seq AllocBody516_220 AllocBody516_221

def AllocBody516_223 : StackLang.HolProg 64 :=
.call (some (AllocBody516_219, 0, 516, 8)) (Sum.inl 476) (some (AllocBody516_222, 516, 9))

def AllocBody516_224 : StackLang.HolProg 64 :=
.seq AllocBody516_210 AllocBody516_223

def AllocBody516_225 : StackLang.HolProg 64 :=
.seq AllocBody516_209 AllocBody516_224

def AllocBody516_226 : StackLang.HolProg 64 :=
.seq AllocBody516_208 AllocBody516_225

def AllocBody516_227 : StackLang.HolProg 64 :=
.seq AllocBody516_189 AllocBody516_226

def AllocBody516_228 : StackLang.HolProg 64 :=
.seq AllocBody516_186 AllocBody516_227

def AllocBody516_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody516_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody516_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1663#64)

def AllocBody516_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_235 : StackLang.HolProg 64 :=
.seq AllocBody516_233 AllocBody516_234

def AllocBody516_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody516_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody516_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody516_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 11

def AllocBody516_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody516_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody516_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody516_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody516_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_246 : StackLang.HolProg 64 :=
.seq AllocBody516_244 AllocBody516_245

def AllocBody516_247 : StackLang.HolProg 64 :=
.seq AllocBody516_243 AllocBody516_246

def AllocBody516_248 : StackLang.HolProg 64 :=
.seq AllocBody516_242 AllocBody516_247

def AllocBody516_249 : StackLang.HolProg 64 :=
.seq AllocBody516_241 AllocBody516_248

def AllocBody516_250 : StackLang.HolProg 64 :=
.seq AllocBody516_240 AllocBody516_249

def AllocBody516_251 : StackLang.HolProg 64 :=
.seq AllocBody516_239 AllocBody516_250

def AllocBody516_252 : StackLang.HolProg 64 :=
.seq AllocBody516_238 AllocBody516_251

def AllocBody516_253 : StackLang.HolProg 64 :=
.seq AllocBody516_237 AllocBody516_252

def AllocBody516_254 : StackLang.HolProg 64 :=
.seq AllocBody516_236 AllocBody516_253

def AllocBody516_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody516_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody516_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody516_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody516_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody516_262 : StackLang.HolProg 64 :=
.seq AllocBody516_260 AllocBody516_261

def AllocBody516_263 : StackLang.HolProg 64 :=
.seq AllocBody516_259 AllocBody516_262

def AllocBody516_264 : StackLang.HolProg 64 :=
.seq AllocBody516_258 AllocBody516_263

def AllocBody516_265 : StackLang.HolProg 64 :=
.seq AllocBody516_257 AllocBody516_264

def AllocBody516_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody516_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody516_268 : StackLang.HolProg 64 :=
.seq AllocBody516_266 AllocBody516_267

def AllocBody516_269 : StackLang.HolProg 64 :=
.call (some (AllocBody516_265, 0, 516, 10)) (Sum.inl 490) (some (AllocBody516_268, 516, 11))

def AllocBody516_270 : StackLang.HolProg 64 :=
.seq AllocBody516_256 AllocBody516_269

def AllocBody516_271 : StackLang.HolProg 64 :=
.seq AllocBody516_255 AllocBody516_270

def AllocBody516_272 : StackLang.HolProg 64 :=
.seq AllocBody516_254 AllocBody516_271

def AllocBody516_273 : StackLang.HolProg 64 :=
.seq AllocBody516_235 AllocBody516_272

def AllocBody516_274 : StackLang.HolProg 64 :=
.seq AllocBody516_232 AllocBody516_273

def AllocBody516_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody516_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody516_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody516_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody516_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody516_280 : StackLang.HolProg 64 :=
.seq AllocBody516_278 AllocBody516_279

def AllocBody516_281 : StackLang.HolProg 64 :=
.seq AllocBody516_277 AllocBody516_280

def AllocBody516_282 : StackLang.HolProg 64 :=
.seq AllocBody516_276 AllocBody516_281

def AllocBody516_283 : StackLang.HolProg 64 :=
.seq AllocBody516_275 AllocBody516_282

def AllocBody516_284 : StackLang.HolProg 64 :=
.seq AllocBody516_274 AllocBody516_283

def AllocBody516_285 : StackLang.HolProg 64 :=
.seq AllocBody516_231 AllocBody516_284

def AllocBody516_286 : StackLang.HolProg 64 :=
.seq AllocBody516_230 AllocBody516_285

def AllocBody516_287 : StackLang.HolProg 64 :=
.seq AllocBody516_229 AllocBody516_286

def AllocBody516_288 : StackLang.HolProg 64 :=
.seq AllocBody516_228 AllocBody516_287

def AllocBody516_289 : StackLang.HolProg 64 :=
.seq AllocBody516_185 AllocBody516_288

def AllocBody516_290 : StackLang.HolProg 64 :=
.seq AllocBody516_184 AllocBody516_289

def AllocBody516_291 : StackLang.HolProg 64 :=
.seq AllocBody516_183 AllocBody516_290

def AllocBody516_292 : StackLang.HolProg 64 :=
.seq AllocBody516_182 AllocBody516_291

def AllocBody516_293 : StackLang.HolProg 64 :=
.seq AllocBody516_181 AllocBody516_292

def AllocBody516_294 : StackLang.HolProg 64 :=
.seq AllocBody516_180 AllocBody516_293

def AllocBody516_295 : StackLang.HolProg 64 :=
.seq AllocBody516_179 AllocBody516_294

def AllocBody516_296 : StackLang.HolProg 64 :=
.seq AllocBody516_178 AllocBody516_295

def AllocBody516_297 : StackLang.HolProg 64 :=
.seq AllocBody516_177 AllocBody516_296

def AllocBody516_298 : StackLang.HolProg 64 :=
.seq AllocBody516_176 AllocBody516_297

def AllocBody516_299 : StackLang.HolProg 64 :=
.seq AllocBody516_175 AllocBody516_298

def AllocBody516_300 : StackLang.HolProg 64 :=
.seq AllocBody516_104 AllocBody516_299

def AllocBody516_301 : StackLang.HolProg 64 :=
.seq AllocBody516_97 AllocBody516_300

def AllocBody516_302 : StackLang.HolProg 64 :=
.seq AllocBody516_96 AllocBody516_301

def AllocBody516_303 : StackLang.HolProg 64 :=
.seq AllocBody516_95 AllocBody516_302

def AllocBody516_304 : StackLang.HolProg 64 :=
.seq AllocBody516_52 AllocBody516_303

def AllocBody516_305 : StackLang.HolProg 64 :=
.seq AllocBody516_45 AllocBody516_304

def AllocBody516_306 : StackLang.HolProg 64 :=
.seq AllocBody516_44 AllocBody516_305

def AllocBody516_307 : StackLang.HolProg 64 :=
.seq AllocBody516_1 AllocBody516_306

def AllocBody516_308 : StackLang.HolProg 64 :=
.seq AllocBody516_0 AllocBody516_307

def Alloc516 : Nat × StackLang.HolProg 64 := (516, AllocBody516_308)
theorem Alloc516_eq : StackAlloc.progComp (516, raw516) = Alloc516 := by
  kernel_rfl
#print axioms Alloc516_eq
end InitECandidate.Proofs.BackendStages
