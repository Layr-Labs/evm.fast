import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw499
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody499_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody499_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody499_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1556#64)

def AllocBody499_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_5 : StackLang.HolProg 64 :=
.seq AllocBody499_3 AllocBody499_4

def AllocBody499_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 3

def AllocBody499_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_16 : StackLang.HolProg 64 :=
.seq AllocBody499_14 AllocBody499_15

def AllocBody499_17 : StackLang.HolProg 64 :=
.seq AllocBody499_13 AllocBody499_16

def AllocBody499_18 : StackLang.HolProg 64 :=
.seq AllocBody499_12 AllocBody499_17

def AllocBody499_19 : StackLang.HolProg 64 :=
.seq AllocBody499_11 AllocBody499_18

def AllocBody499_20 : StackLang.HolProg 64 :=
.seq AllocBody499_10 AllocBody499_19

def AllocBody499_21 : StackLang.HolProg 64 :=
.seq AllocBody499_9 AllocBody499_20

def AllocBody499_22 : StackLang.HolProg 64 :=
.seq AllocBody499_8 AllocBody499_21

def AllocBody499_23 : StackLang.HolProg 64 :=
.seq AllocBody499_7 AllocBody499_22

def AllocBody499_24 : StackLang.HolProg 64 :=
.seq AllocBody499_6 AllocBody499_23

def AllocBody499_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody499_32 : StackLang.HolProg 64 :=
.seq AllocBody499_30 AllocBody499_31

def AllocBody499_33 : StackLang.HolProg 64 :=
.seq AllocBody499_29 AllocBody499_32

def AllocBody499_34 : StackLang.HolProg 64 :=
.seq AllocBody499_28 AllocBody499_33

def AllocBody499_35 : StackLang.HolProg 64 :=
.seq AllocBody499_27 AllocBody499_34

def AllocBody499_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_38 : StackLang.HolProg 64 :=
.seq AllocBody499_36 AllocBody499_37

def AllocBody499_39 : StackLang.HolProg 64 :=
.call (some (AllocBody499_35, 0, 499, 2)) (Sum.inl 475) (some (AllocBody499_38, 499, 3))

def AllocBody499_40 : StackLang.HolProg 64 :=
.seq AllocBody499_26 AllocBody499_39

def AllocBody499_41 : StackLang.HolProg 64 :=
.seq AllocBody499_25 AllocBody499_40

def AllocBody499_42 : StackLang.HolProg 64 :=
.seq AllocBody499_24 AllocBody499_41

def AllocBody499_43 : StackLang.HolProg 64 :=
.seq AllocBody499_5 AllocBody499_42

def AllocBody499_44 : StackLang.HolProg 64 :=
.seq AllocBody499_2 AllocBody499_43

def AllocBody499_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody499_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody499_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody499_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody499_50 : StackLang.HolProg 64 :=
.seq AllocBody499_48 AllocBody499_49

def AllocBody499_51 : StackLang.HolProg 64 :=
.seq AllocBody499_47 AllocBody499_50

def AllocBody499_52 : StackLang.HolProg 64 :=
.seq AllocBody499_46 AllocBody499_51

def AllocBody499_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1557#64)

def AllocBody499_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_56 : StackLang.HolProg 64 :=
.seq AllocBody499_54 AllocBody499_55

def AllocBody499_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 5

def AllocBody499_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_67 : StackLang.HolProg 64 :=
.seq AllocBody499_65 AllocBody499_66

def AllocBody499_68 : StackLang.HolProg 64 :=
.seq AllocBody499_64 AllocBody499_67

def AllocBody499_69 : StackLang.HolProg 64 :=
.seq AllocBody499_63 AllocBody499_68

def AllocBody499_70 : StackLang.HolProg 64 :=
.seq AllocBody499_62 AllocBody499_69

def AllocBody499_71 : StackLang.HolProg 64 :=
.seq AllocBody499_61 AllocBody499_70

def AllocBody499_72 : StackLang.HolProg 64 :=
.seq AllocBody499_60 AllocBody499_71

def AllocBody499_73 : StackLang.HolProg 64 :=
.seq AllocBody499_59 AllocBody499_72

def AllocBody499_74 : StackLang.HolProg 64 :=
.seq AllocBody499_58 AllocBody499_73

def AllocBody499_75 : StackLang.HolProg 64 :=
.seq AllocBody499_57 AllocBody499_74

def AllocBody499_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody499_83 : StackLang.HolProg 64 :=
.seq AllocBody499_81 AllocBody499_82

def AllocBody499_84 : StackLang.HolProg 64 :=
.seq AllocBody499_80 AllocBody499_83

def AllocBody499_85 : StackLang.HolProg 64 :=
.seq AllocBody499_79 AllocBody499_84

def AllocBody499_86 : StackLang.HolProg 64 :=
.seq AllocBody499_78 AllocBody499_85

def AllocBody499_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_89 : StackLang.HolProg 64 :=
.seq AllocBody499_87 AllocBody499_88

def AllocBody499_90 : StackLang.HolProg 64 :=
.call (some (AllocBody499_86, 0, 499, 4)) (Sum.inl 475) (some (AllocBody499_89, 499, 5))

def AllocBody499_91 : StackLang.HolProg 64 :=
.seq AllocBody499_77 AllocBody499_90

def AllocBody499_92 : StackLang.HolProg 64 :=
.seq AllocBody499_76 AllocBody499_91

def AllocBody499_93 : StackLang.HolProg 64 :=
.seq AllocBody499_75 AllocBody499_92

def AllocBody499_94 : StackLang.HolProg 64 :=
.seq AllocBody499_56 AllocBody499_93

def AllocBody499_95 : StackLang.HolProg 64 :=
.seq AllocBody499_53 AllocBody499_94

def AllocBody499_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody499_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody499_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody499_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody499_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody499_102 : StackLang.HolProg 64 :=
.seq AllocBody499_100 AllocBody499_101

def AllocBody499_103 : StackLang.HolProg 64 :=
.seq AllocBody499_99 AllocBody499_102

def AllocBody499_104 : StackLang.HolProg 64 :=
.seq AllocBody499_98 AllocBody499_103

def AllocBody499_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1558#64)

def AllocBody499_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_108 : StackLang.HolProg 64 :=
.seq AllocBody499_106 AllocBody499_107

def AllocBody499_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 7

def AllocBody499_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_119 : StackLang.HolProg 64 :=
.seq AllocBody499_117 AllocBody499_118

def AllocBody499_120 : StackLang.HolProg 64 :=
.seq AllocBody499_116 AllocBody499_119

def AllocBody499_121 : StackLang.HolProg 64 :=
.seq AllocBody499_115 AllocBody499_120

def AllocBody499_122 : StackLang.HolProg 64 :=
.seq AllocBody499_114 AllocBody499_121

def AllocBody499_123 : StackLang.HolProg 64 :=
.seq AllocBody499_113 AllocBody499_122

def AllocBody499_124 : StackLang.HolProg 64 :=
.seq AllocBody499_112 AllocBody499_123

def AllocBody499_125 : StackLang.HolProg 64 :=
.seq AllocBody499_111 AllocBody499_124

def AllocBody499_126 : StackLang.HolProg 64 :=
.seq AllocBody499_110 AllocBody499_125

def AllocBody499_127 : StackLang.HolProg 64 :=
.seq AllocBody499_109 AllocBody499_126

def AllocBody499_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody499_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody499_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody499_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody499_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody499_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody499_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody499_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody499_142 : StackLang.HolProg 64 :=
.seq AllocBody499_140 AllocBody499_141

def AllocBody499_143 : StackLang.HolProg 64 :=
.seq AllocBody499_139 AllocBody499_142

def AllocBody499_144 : StackLang.HolProg 64 :=
.seq AllocBody499_138 AllocBody499_143

def AllocBody499_145 : StackLang.HolProg 64 :=
.seq AllocBody499_137 AllocBody499_144

def AllocBody499_146 : StackLang.HolProg 64 :=
.seq AllocBody499_136 AllocBody499_145

def AllocBody499_147 : StackLang.HolProg 64 :=
.seq AllocBody499_135 AllocBody499_146

def AllocBody499_148 : StackLang.HolProg 64 :=
.seq AllocBody499_134 AllocBody499_147

def AllocBody499_149 : StackLang.HolProg 64 :=
.seq AllocBody499_133 AllocBody499_148

def AllocBody499_150 : StackLang.HolProg 64 :=
.seq AllocBody499_132 AllocBody499_149

def AllocBody499_151 : StackLang.HolProg 64 :=
.seq AllocBody499_131 AllocBody499_150

def AllocBody499_152 : StackLang.HolProg 64 :=
.seq AllocBody499_130 AllocBody499_151

def AllocBody499_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody499_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody499_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody499_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody499_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody499_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody499_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody499_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody499_161 : StackLang.HolProg 64 :=
.seq AllocBody499_159 AllocBody499_160

def AllocBody499_162 : StackLang.HolProg 64 :=
.seq AllocBody499_158 AllocBody499_161

def AllocBody499_163 : StackLang.HolProg 64 :=
.seq AllocBody499_157 AllocBody499_162

def AllocBody499_164 : StackLang.HolProg 64 :=
.seq AllocBody499_156 AllocBody499_163

def AllocBody499_165 : StackLang.HolProg 64 :=
.seq AllocBody499_155 AllocBody499_164

def AllocBody499_166 : StackLang.HolProg 64 :=
.seq AllocBody499_154 AllocBody499_165

def AllocBody499_167 : StackLang.HolProg 64 :=
.seq AllocBody499_153 AllocBody499_166

def AllocBody499_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_169 : StackLang.HolProg 64 :=
.seq AllocBody499_167 AllocBody499_168

def AllocBody499_170 : StackLang.HolProg 64 :=
.call (some (AllocBody499_152, 0, 499, 6)) (Sum.inl 470) (some (AllocBody499_169, 499, 7))

def AllocBody499_171 : StackLang.HolProg 64 :=
.seq AllocBody499_129 AllocBody499_170

def AllocBody499_172 : StackLang.HolProg 64 :=
.seq AllocBody499_128 AllocBody499_171

def AllocBody499_173 : StackLang.HolProg 64 :=
.seq AllocBody499_127 AllocBody499_172

def AllocBody499_174 : StackLang.HolProg 64 :=
.seq AllocBody499_108 AllocBody499_173

def AllocBody499_175 : StackLang.HolProg 64 :=
.seq AllocBody499_105 AllocBody499_174

def AllocBody499_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody499_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1559#64)

def AllocBody499_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_181 : StackLang.HolProg 64 :=
.seq AllocBody499_179 AllocBody499_180

def AllocBody499_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 9

def AllocBody499_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_192 : StackLang.HolProg 64 :=
.seq AllocBody499_190 AllocBody499_191

def AllocBody499_193 : StackLang.HolProg 64 :=
.seq AllocBody499_189 AllocBody499_192

def AllocBody499_194 : StackLang.HolProg 64 :=
.seq AllocBody499_188 AllocBody499_193

def AllocBody499_195 : StackLang.HolProg 64 :=
.seq AllocBody499_187 AllocBody499_194

def AllocBody499_196 : StackLang.HolProg 64 :=
.seq AllocBody499_186 AllocBody499_195

def AllocBody499_197 : StackLang.HolProg 64 :=
.seq AllocBody499_185 AllocBody499_196

def AllocBody499_198 : StackLang.HolProg 64 :=
.seq AllocBody499_184 AllocBody499_197

def AllocBody499_199 : StackLang.HolProg 64 :=
.seq AllocBody499_183 AllocBody499_198

def AllocBody499_200 : StackLang.HolProg 64 :=
.seq AllocBody499_182 AllocBody499_199

def AllocBody499_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody499_208 : StackLang.HolProg 64 :=
.seq AllocBody499_206 AllocBody499_207

def AllocBody499_209 : StackLang.HolProg 64 :=
.seq AllocBody499_205 AllocBody499_208

def AllocBody499_210 : StackLang.HolProg 64 :=
.seq AllocBody499_204 AllocBody499_209

def AllocBody499_211 : StackLang.HolProg 64 :=
.seq AllocBody499_203 AllocBody499_210

def AllocBody499_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_214 : StackLang.HolProg 64 :=
.seq AllocBody499_212 AllocBody499_213

def AllocBody499_215 : StackLang.HolProg 64 :=
.call (some (AllocBody499_211, 0, 499, 8)) (Sum.inl 117) (some (AllocBody499_214, 499, 9))

def AllocBody499_216 : StackLang.HolProg 64 :=
.seq AllocBody499_202 AllocBody499_215

def AllocBody499_217 : StackLang.HolProg 64 :=
.seq AllocBody499_201 AllocBody499_216

def AllocBody499_218 : StackLang.HolProg 64 :=
.seq AllocBody499_200 AllocBody499_217

def AllocBody499_219 : StackLang.HolProg 64 :=
.seq AllocBody499_181 AllocBody499_218

def AllocBody499_220 : StackLang.HolProg 64 :=
.seq AllocBody499_178 AllocBody499_219

def AllocBody499_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody499_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1560#64)

def AllocBody499_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_226 : StackLang.HolProg 64 :=
.seq AllocBody499_224 AllocBody499_225

def AllocBody499_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 11

def AllocBody499_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_237 : StackLang.HolProg 64 :=
.seq AllocBody499_235 AllocBody499_236

def AllocBody499_238 : StackLang.HolProg 64 :=
.seq AllocBody499_234 AllocBody499_237

def AllocBody499_239 : StackLang.HolProg 64 :=
.seq AllocBody499_233 AllocBody499_238

def AllocBody499_240 : StackLang.HolProg 64 :=
.seq AllocBody499_232 AllocBody499_239

def AllocBody499_241 : StackLang.HolProg 64 :=
.seq AllocBody499_231 AllocBody499_240

def AllocBody499_242 : StackLang.HolProg 64 :=
.seq AllocBody499_230 AllocBody499_241

def AllocBody499_243 : StackLang.HolProg 64 :=
.seq AllocBody499_229 AllocBody499_242

def AllocBody499_244 : StackLang.HolProg 64 :=
.seq AllocBody499_228 AllocBody499_243

def AllocBody499_245 : StackLang.HolProg 64 :=
.seq AllocBody499_227 AllocBody499_244

def AllocBody499_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_253 : StackLang.HolProg 64 :=
.seq AllocBody499_251 AllocBody499_252

def AllocBody499_254 : StackLang.HolProg 64 :=
.seq AllocBody499_250 AllocBody499_253

def AllocBody499_255 : StackLang.HolProg 64 :=
.seq AllocBody499_249 AllocBody499_254

def AllocBody499_256 : StackLang.HolProg 64 :=
.seq AllocBody499_248 AllocBody499_255

def AllocBody499_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_259 : StackLang.HolProg 64 :=
.seq AllocBody499_257 AllocBody499_258

def AllocBody499_260 : StackLang.HolProg 64 :=
.call (some (AllocBody499_256, 0, 499, 10)) (Sum.inl 476) (some (AllocBody499_259, 499, 11))

def AllocBody499_261 : StackLang.HolProg 64 :=
.seq AllocBody499_247 AllocBody499_260

def AllocBody499_262 : StackLang.HolProg 64 :=
.seq AllocBody499_246 AllocBody499_261

def AllocBody499_263 : StackLang.HolProg 64 :=
.seq AllocBody499_245 AllocBody499_262

def AllocBody499_264 : StackLang.HolProg 64 :=
.seq AllocBody499_226 AllocBody499_263

def AllocBody499_265 : StackLang.HolProg 64 :=
.seq AllocBody499_223 AllocBody499_264

def AllocBody499_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody499_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1561#64)

def AllocBody499_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_272 : StackLang.HolProg 64 :=
.seq AllocBody499_270 AllocBody499_271

def AllocBody499_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody499_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody499_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody499_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 13

def AllocBody499_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody499_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody499_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody499_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody499_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_283 : StackLang.HolProg 64 :=
.seq AllocBody499_281 AllocBody499_282

def AllocBody499_284 : StackLang.HolProg 64 :=
.seq AllocBody499_280 AllocBody499_283

def AllocBody499_285 : StackLang.HolProg 64 :=
.seq AllocBody499_279 AllocBody499_284

def AllocBody499_286 : StackLang.HolProg 64 :=
.seq AllocBody499_278 AllocBody499_285

def AllocBody499_287 : StackLang.HolProg 64 :=
.seq AllocBody499_277 AllocBody499_286

def AllocBody499_288 : StackLang.HolProg 64 :=
.seq AllocBody499_276 AllocBody499_287

def AllocBody499_289 : StackLang.HolProg 64 :=
.seq AllocBody499_275 AllocBody499_288

def AllocBody499_290 : StackLang.HolProg 64 :=
.seq AllocBody499_274 AllocBody499_289

def AllocBody499_291 : StackLang.HolProg 64 :=
.seq AllocBody499_273 AllocBody499_290

def AllocBody499_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody499_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody499_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody499_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody499_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody499_299 : StackLang.HolProg 64 :=
.seq AllocBody499_297 AllocBody499_298

def AllocBody499_300 : StackLang.HolProg 64 :=
.seq AllocBody499_296 AllocBody499_299

def AllocBody499_301 : StackLang.HolProg 64 :=
.seq AllocBody499_295 AllocBody499_300

def AllocBody499_302 : StackLang.HolProg 64 :=
.seq AllocBody499_294 AllocBody499_301

def AllocBody499_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody499_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody499_305 : StackLang.HolProg 64 :=
.seq AllocBody499_303 AllocBody499_304

def AllocBody499_306 : StackLang.HolProg 64 :=
.call (some (AllocBody499_302, 0, 499, 12)) (Sum.inl 490) (some (AllocBody499_305, 499, 13))

def AllocBody499_307 : StackLang.HolProg 64 :=
.seq AllocBody499_293 AllocBody499_306

def AllocBody499_308 : StackLang.HolProg 64 :=
.seq AllocBody499_292 AllocBody499_307

def AllocBody499_309 : StackLang.HolProg 64 :=
.seq AllocBody499_291 AllocBody499_308

def AllocBody499_310 : StackLang.HolProg 64 :=
.seq AllocBody499_272 AllocBody499_309

def AllocBody499_311 : StackLang.HolProg 64 :=
.seq AllocBody499_269 AllocBody499_310

def AllocBody499_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody499_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody499_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody499_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody499_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody499_317 : StackLang.HolProg 64 :=
.seq AllocBody499_315 AllocBody499_316

def AllocBody499_318 : StackLang.HolProg 64 :=
.seq AllocBody499_314 AllocBody499_317

def AllocBody499_319 : StackLang.HolProg 64 :=
.seq AllocBody499_313 AllocBody499_318

def AllocBody499_320 : StackLang.HolProg 64 :=
.seq AllocBody499_312 AllocBody499_319

def AllocBody499_321 : StackLang.HolProg 64 :=
.seq AllocBody499_311 AllocBody499_320

def AllocBody499_322 : StackLang.HolProg 64 :=
.seq AllocBody499_268 AllocBody499_321

def AllocBody499_323 : StackLang.HolProg 64 :=
.seq AllocBody499_267 AllocBody499_322

def AllocBody499_324 : StackLang.HolProg 64 :=
.seq AllocBody499_266 AllocBody499_323

def AllocBody499_325 : StackLang.HolProg 64 :=
.seq AllocBody499_265 AllocBody499_324

def AllocBody499_326 : StackLang.HolProg 64 :=
.seq AllocBody499_222 AllocBody499_325

def AllocBody499_327 : StackLang.HolProg 64 :=
.seq AllocBody499_221 AllocBody499_326

def AllocBody499_328 : StackLang.HolProg 64 :=
.seq AllocBody499_220 AllocBody499_327

def AllocBody499_329 : StackLang.HolProg 64 :=
.seq AllocBody499_177 AllocBody499_328

def AllocBody499_330 : StackLang.HolProg 64 :=
.seq AllocBody499_176 AllocBody499_329

def AllocBody499_331 : StackLang.HolProg 64 :=
.seq AllocBody499_175 AllocBody499_330

def AllocBody499_332 : StackLang.HolProg 64 :=
.seq AllocBody499_104 AllocBody499_331

def AllocBody499_333 : StackLang.HolProg 64 :=
.seq AllocBody499_97 AllocBody499_332

def AllocBody499_334 : StackLang.HolProg 64 :=
.seq AllocBody499_96 AllocBody499_333

def AllocBody499_335 : StackLang.HolProg 64 :=
.seq AllocBody499_95 AllocBody499_334

def AllocBody499_336 : StackLang.HolProg 64 :=
.seq AllocBody499_52 AllocBody499_335

def AllocBody499_337 : StackLang.HolProg 64 :=
.seq AllocBody499_45 AllocBody499_336

def AllocBody499_338 : StackLang.HolProg 64 :=
.seq AllocBody499_44 AllocBody499_337

def AllocBody499_339 : StackLang.HolProg 64 :=
.seq AllocBody499_1 AllocBody499_338

def AllocBody499_340 : StackLang.HolProg 64 :=
.seq AllocBody499_0 AllocBody499_339

def Alloc499 : Nat × StackLang.HolProg 64 := (499, AllocBody499_340)
theorem Alloc499_eq : StackAlloc.progComp (499, raw499) = Alloc499 := by
  kernel_rfl
#print axioms Alloc499_eq
end InitECandidate.Proofs.BackendStages
