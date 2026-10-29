import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw510
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody510_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody510_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody510_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1626#64)

def AllocBody510_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_5 : StackLang.HolProg 64 :=
.seq AllocBody510_3 AllocBody510_4

def AllocBody510_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 3

def AllocBody510_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_16 : StackLang.HolProg 64 :=
.seq AllocBody510_14 AllocBody510_15

def AllocBody510_17 : StackLang.HolProg 64 :=
.seq AllocBody510_13 AllocBody510_16

def AllocBody510_18 : StackLang.HolProg 64 :=
.seq AllocBody510_12 AllocBody510_17

def AllocBody510_19 : StackLang.HolProg 64 :=
.seq AllocBody510_11 AllocBody510_18

def AllocBody510_20 : StackLang.HolProg 64 :=
.seq AllocBody510_10 AllocBody510_19

def AllocBody510_21 : StackLang.HolProg 64 :=
.seq AllocBody510_9 AllocBody510_20

def AllocBody510_22 : StackLang.HolProg 64 :=
.seq AllocBody510_8 AllocBody510_21

def AllocBody510_23 : StackLang.HolProg 64 :=
.seq AllocBody510_7 AllocBody510_22

def AllocBody510_24 : StackLang.HolProg 64 :=
.seq AllocBody510_6 AllocBody510_23

def AllocBody510_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody510_32 : StackLang.HolProg 64 :=
.seq AllocBody510_30 AllocBody510_31

def AllocBody510_33 : StackLang.HolProg 64 :=
.seq AllocBody510_29 AllocBody510_32

def AllocBody510_34 : StackLang.HolProg 64 :=
.seq AllocBody510_28 AllocBody510_33

def AllocBody510_35 : StackLang.HolProg 64 :=
.seq AllocBody510_27 AllocBody510_34

def AllocBody510_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_38 : StackLang.HolProg 64 :=
.seq AllocBody510_36 AllocBody510_37

def AllocBody510_39 : StackLang.HolProg 64 :=
.call (some (AllocBody510_35, 0, 510, 2)) (Sum.inl 475) (some (AllocBody510_38, 510, 3))

def AllocBody510_40 : StackLang.HolProg 64 :=
.seq AllocBody510_26 AllocBody510_39

def AllocBody510_41 : StackLang.HolProg 64 :=
.seq AllocBody510_25 AllocBody510_40

def AllocBody510_42 : StackLang.HolProg 64 :=
.seq AllocBody510_24 AllocBody510_41

def AllocBody510_43 : StackLang.HolProg 64 :=
.seq AllocBody510_5 AllocBody510_42

def AllocBody510_44 : StackLang.HolProg 64 :=
.seq AllocBody510_2 AllocBody510_43

def AllocBody510_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody510_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody510_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody510_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody510_50 : StackLang.HolProg 64 :=
.seq AllocBody510_48 AllocBody510_49

def AllocBody510_51 : StackLang.HolProg 64 :=
.seq AllocBody510_47 AllocBody510_50

def AllocBody510_52 : StackLang.HolProg 64 :=
.seq AllocBody510_46 AllocBody510_51

def AllocBody510_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1627#64)

def AllocBody510_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_56 : StackLang.HolProg 64 :=
.seq AllocBody510_54 AllocBody510_55

def AllocBody510_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 5

def AllocBody510_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_67 : StackLang.HolProg 64 :=
.seq AllocBody510_65 AllocBody510_66

def AllocBody510_68 : StackLang.HolProg 64 :=
.seq AllocBody510_64 AllocBody510_67

def AllocBody510_69 : StackLang.HolProg 64 :=
.seq AllocBody510_63 AllocBody510_68

def AllocBody510_70 : StackLang.HolProg 64 :=
.seq AllocBody510_62 AllocBody510_69

def AllocBody510_71 : StackLang.HolProg 64 :=
.seq AllocBody510_61 AllocBody510_70

def AllocBody510_72 : StackLang.HolProg 64 :=
.seq AllocBody510_60 AllocBody510_71

def AllocBody510_73 : StackLang.HolProg 64 :=
.seq AllocBody510_59 AllocBody510_72

def AllocBody510_74 : StackLang.HolProg 64 :=
.seq AllocBody510_58 AllocBody510_73

def AllocBody510_75 : StackLang.HolProg 64 :=
.seq AllocBody510_57 AllocBody510_74

def AllocBody510_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody510_83 : StackLang.HolProg 64 :=
.seq AllocBody510_81 AllocBody510_82

def AllocBody510_84 : StackLang.HolProg 64 :=
.seq AllocBody510_80 AllocBody510_83

def AllocBody510_85 : StackLang.HolProg 64 :=
.seq AllocBody510_79 AllocBody510_84

def AllocBody510_86 : StackLang.HolProg 64 :=
.seq AllocBody510_78 AllocBody510_85

def AllocBody510_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_89 : StackLang.HolProg 64 :=
.seq AllocBody510_87 AllocBody510_88

def AllocBody510_90 : StackLang.HolProg 64 :=
.call (some (AllocBody510_86, 0, 510, 4)) (Sum.inl 475) (some (AllocBody510_89, 510, 5))

def AllocBody510_91 : StackLang.HolProg 64 :=
.seq AllocBody510_77 AllocBody510_90

def AllocBody510_92 : StackLang.HolProg 64 :=
.seq AllocBody510_76 AllocBody510_91

def AllocBody510_93 : StackLang.HolProg 64 :=
.seq AllocBody510_75 AllocBody510_92

def AllocBody510_94 : StackLang.HolProg 64 :=
.seq AllocBody510_56 AllocBody510_93

def AllocBody510_95 : StackLang.HolProg 64 :=
.seq AllocBody510_53 AllocBody510_94

def AllocBody510_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody510_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody510_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody510_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody510_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody510_102 : StackLang.HolProg 64 :=
.seq AllocBody510_100 AllocBody510_101

def AllocBody510_103 : StackLang.HolProg 64 :=
.seq AllocBody510_99 AllocBody510_102

def AllocBody510_104 : StackLang.HolProg 64 :=
.seq AllocBody510_98 AllocBody510_103

def AllocBody510_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1628#64)

def AllocBody510_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_108 : StackLang.HolProg 64 :=
.seq AllocBody510_106 AllocBody510_107

def AllocBody510_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 7

def AllocBody510_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_119 : StackLang.HolProg 64 :=
.seq AllocBody510_117 AllocBody510_118

def AllocBody510_120 : StackLang.HolProg 64 :=
.seq AllocBody510_116 AllocBody510_119

def AllocBody510_121 : StackLang.HolProg 64 :=
.seq AllocBody510_115 AllocBody510_120

def AllocBody510_122 : StackLang.HolProg 64 :=
.seq AllocBody510_114 AllocBody510_121

def AllocBody510_123 : StackLang.HolProg 64 :=
.seq AllocBody510_113 AllocBody510_122

def AllocBody510_124 : StackLang.HolProg 64 :=
.seq AllocBody510_112 AllocBody510_123

def AllocBody510_125 : StackLang.HolProg 64 :=
.seq AllocBody510_111 AllocBody510_124

def AllocBody510_126 : StackLang.HolProg 64 :=
.seq AllocBody510_110 AllocBody510_125

def AllocBody510_127 : StackLang.HolProg 64 :=
.seq AllocBody510_109 AllocBody510_126

def AllocBody510_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody510_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody510_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody510_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody510_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody510_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody510_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody510_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody510_142 : StackLang.HolProg 64 :=
.seq AllocBody510_140 AllocBody510_141

def AllocBody510_143 : StackLang.HolProg 64 :=
.seq AllocBody510_139 AllocBody510_142

def AllocBody510_144 : StackLang.HolProg 64 :=
.seq AllocBody510_138 AllocBody510_143

def AllocBody510_145 : StackLang.HolProg 64 :=
.seq AllocBody510_137 AllocBody510_144

def AllocBody510_146 : StackLang.HolProg 64 :=
.seq AllocBody510_136 AllocBody510_145

def AllocBody510_147 : StackLang.HolProg 64 :=
.seq AllocBody510_135 AllocBody510_146

def AllocBody510_148 : StackLang.HolProg 64 :=
.seq AllocBody510_134 AllocBody510_147

def AllocBody510_149 : StackLang.HolProg 64 :=
.seq AllocBody510_133 AllocBody510_148

def AllocBody510_150 : StackLang.HolProg 64 :=
.seq AllocBody510_132 AllocBody510_149

def AllocBody510_151 : StackLang.HolProg 64 :=
.seq AllocBody510_131 AllocBody510_150

def AllocBody510_152 : StackLang.HolProg 64 :=
.seq AllocBody510_130 AllocBody510_151

def AllocBody510_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody510_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody510_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody510_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody510_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody510_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody510_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody510_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody510_161 : StackLang.HolProg 64 :=
.seq AllocBody510_159 AllocBody510_160

def AllocBody510_162 : StackLang.HolProg 64 :=
.seq AllocBody510_158 AllocBody510_161

def AllocBody510_163 : StackLang.HolProg 64 :=
.seq AllocBody510_157 AllocBody510_162

def AllocBody510_164 : StackLang.HolProg 64 :=
.seq AllocBody510_156 AllocBody510_163

def AllocBody510_165 : StackLang.HolProg 64 :=
.seq AllocBody510_155 AllocBody510_164

def AllocBody510_166 : StackLang.HolProg 64 :=
.seq AllocBody510_154 AllocBody510_165

def AllocBody510_167 : StackLang.HolProg 64 :=
.seq AllocBody510_153 AllocBody510_166

def AllocBody510_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_169 : StackLang.HolProg 64 :=
.seq AllocBody510_167 AllocBody510_168

def AllocBody510_170 : StackLang.HolProg 64 :=
.call (some (AllocBody510_152, 0, 510, 6)) (Sum.inl 470) (some (AllocBody510_169, 510, 7))

def AllocBody510_171 : StackLang.HolProg 64 :=
.seq AllocBody510_129 AllocBody510_170

def AllocBody510_172 : StackLang.HolProg 64 :=
.seq AllocBody510_128 AllocBody510_171

def AllocBody510_173 : StackLang.HolProg 64 :=
.seq AllocBody510_127 AllocBody510_172

def AllocBody510_174 : StackLang.HolProg 64 :=
.seq AllocBody510_108 AllocBody510_173

def AllocBody510_175 : StackLang.HolProg 64 :=
.seq AllocBody510_105 AllocBody510_174

def AllocBody510_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody510_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1629#64)

def AllocBody510_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_181 : StackLang.HolProg 64 :=
.seq AllocBody510_179 AllocBody510_180

def AllocBody510_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 9

def AllocBody510_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_192 : StackLang.HolProg 64 :=
.seq AllocBody510_190 AllocBody510_191

def AllocBody510_193 : StackLang.HolProg 64 :=
.seq AllocBody510_189 AllocBody510_192

def AllocBody510_194 : StackLang.HolProg 64 :=
.seq AllocBody510_188 AllocBody510_193

def AllocBody510_195 : StackLang.HolProg 64 :=
.seq AllocBody510_187 AllocBody510_194

def AllocBody510_196 : StackLang.HolProg 64 :=
.seq AllocBody510_186 AllocBody510_195

def AllocBody510_197 : StackLang.HolProg 64 :=
.seq AllocBody510_185 AllocBody510_196

def AllocBody510_198 : StackLang.HolProg 64 :=
.seq AllocBody510_184 AllocBody510_197

def AllocBody510_199 : StackLang.HolProg 64 :=
.seq AllocBody510_183 AllocBody510_198

def AllocBody510_200 : StackLang.HolProg 64 :=
.seq AllocBody510_182 AllocBody510_199

def AllocBody510_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody510_208 : StackLang.HolProg 64 :=
.seq AllocBody510_206 AllocBody510_207

def AllocBody510_209 : StackLang.HolProg 64 :=
.seq AllocBody510_205 AllocBody510_208

def AllocBody510_210 : StackLang.HolProg 64 :=
.seq AllocBody510_204 AllocBody510_209

def AllocBody510_211 : StackLang.HolProg 64 :=
.seq AllocBody510_203 AllocBody510_210

def AllocBody510_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_214 : StackLang.HolProg 64 :=
.seq AllocBody510_212 AllocBody510_213

def AllocBody510_215 : StackLang.HolProg 64 :=
.call (some (AllocBody510_211, 0, 510, 8)) (Sum.inl 108) (some (AllocBody510_214, 510, 9))

def AllocBody510_216 : StackLang.HolProg 64 :=
.seq AllocBody510_202 AllocBody510_215

def AllocBody510_217 : StackLang.HolProg 64 :=
.seq AllocBody510_201 AllocBody510_216

def AllocBody510_218 : StackLang.HolProg 64 :=
.seq AllocBody510_200 AllocBody510_217

def AllocBody510_219 : StackLang.HolProg 64 :=
.seq AllocBody510_181 AllocBody510_218

def AllocBody510_220 : StackLang.HolProg 64 :=
.seq AllocBody510_178 AllocBody510_219

def AllocBody510_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody510_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1630#64)

def AllocBody510_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_226 : StackLang.HolProg 64 :=
.seq AllocBody510_224 AllocBody510_225

def AllocBody510_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 11

def AllocBody510_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_237 : StackLang.HolProg 64 :=
.seq AllocBody510_235 AllocBody510_236

def AllocBody510_238 : StackLang.HolProg 64 :=
.seq AllocBody510_234 AllocBody510_237

def AllocBody510_239 : StackLang.HolProg 64 :=
.seq AllocBody510_233 AllocBody510_238

def AllocBody510_240 : StackLang.HolProg 64 :=
.seq AllocBody510_232 AllocBody510_239

def AllocBody510_241 : StackLang.HolProg 64 :=
.seq AllocBody510_231 AllocBody510_240

def AllocBody510_242 : StackLang.HolProg 64 :=
.seq AllocBody510_230 AllocBody510_241

def AllocBody510_243 : StackLang.HolProg 64 :=
.seq AllocBody510_229 AllocBody510_242

def AllocBody510_244 : StackLang.HolProg 64 :=
.seq AllocBody510_228 AllocBody510_243

def AllocBody510_245 : StackLang.HolProg 64 :=
.seq AllocBody510_227 AllocBody510_244

def AllocBody510_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_253 : StackLang.HolProg 64 :=
.seq AllocBody510_251 AllocBody510_252

def AllocBody510_254 : StackLang.HolProg 64 :=
.seq AllocBody510_250 AllocBody510_253

def AllocBody510_255 : StackLang.HolProg 64 :=
.seq AllocBody510_249 AllocBody510_254

def AllocBody510_256 : StackLang.HolProg 64 :=
.seq AllocBody510_248 AllocBody510_255

def AllocBody510_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_259 : StackLang.HolProg 64 :=
.seq AllocBody510_257 AllocBody510_258

def AllocBody510_260 : StackLang.HolProg 64 :=
.call (some (AllocBody510_256, 0, 510, 10)) (Sum.inl 478) (some (AllocBody510_259, 510, 11))

def AllocBody510_261 : StackLang.HolProg 64 :=
.seq AllocBody510_247 AllocBody510_260

def AllocBody510_262 : StackLang.HolProg 64 :=
.seq AllocBody510_246 AllocBody510_261

def AllocBody510_263 : StackLang.HolProg 64 :=
.seq AllocBody510_245 AllocBody510_262

def AllocBody510_264 : StackLang.HolProg 64 :=
.seq AllocBody510_226 AllocBody510_263

def AllocBody510_265 : StackLang.HolProg 64 :=
.seq AllocBody510_223 AllocBody510_264

def AllocBody510_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody510_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1631#64)

def AllocBody510_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_272 : StackLang.HolProg 64 :=
.seq AllocBody510_270 AllocBody510_271

def AllocBody510_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody510_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody510_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody510_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 510 13

def AllocBody510_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody510_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody510_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody510_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody510_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_283 : StackLang.HolProg 64 :=
.seq AllocBody510_281 AllocBody510_282

def AllocBody510_284 : StackLang.HolProg 64 :=
.seq AllocBody510_280 AllocBody510_283

def AllocBody510_285 : StackLang.HolProg 64 :=
.seq AllocBody510_279 AllocBody510_284

def AllocBody510_286 : StackLang.HolProg 64 :=
.seq AllocBody510_278 AllocBody510_285

def AllocBody510_287 : StackLang.HolProg 64 :=
.seq AllocBody510_277 AllocBody510_286

def AllocBody510_288 : StackLang.HolProg 64 :=
.seq AllocBody510_276 AllocBody510_287

def AllocBody510_289 : StackLang.HolProg 64 :=
.seq AllocBody510_275 AllocBody510_288

def AllocBody510_290 : StackLang.HolProg 64 :=
.seq AllocBody510_274 AllocBody510_289

def AllocBody510_291 : StackLang.HolProg 64 :=
.seq AllocBody510_273 AllocBody510_290

def AllocBody510_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody510_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody510_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody510_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody510_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody510_299 : StackLang.HolProg 64 :=
.seq AllocBody510_297 AllocBody510_298

def AllocBody510_300 : StackLang.HolProg 64 :=
.seq AllocBody510_296 AllocBody510_299

def AllocBody510_301 : StackLang.HolProg 64 :=
.seq AllocBody510_295 AllocBody510_300

def AllocBody510_302 : StackLang.HolProg 64 :=
.seq AllocBody510_294 AllocBody510_301

def AllocBody510_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody510_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody510_305 : StackLang.HolProg 64 :=
.seq AllocBody510_303 AllocBody510_304

def AllocBody510_306 : StackLang.HolProg 64 :=
.call (some (AllocBody510_302, 0, 510, 12)) (Sum.inl 490) (some (AllocBody510_305, 510, 13))

def AllocBody510_307 : StackLang.HolProg 64 :=
.seq AllocBody510_293 AllocBody510_306

def AllocBody510_308 : StackLang.HolProg 64 :=
.seq AllocBody510_292 AllocBody510_307

def AllocBody510_309 : StackLang.HolProg 64 :=
.seq AllocBody510_291 AllocBody510_308

def AllocBody510_310 : StackLang.HolProg 64 :=
.seq AllocBody510_272 AllocBody510_309

def AllocBody510_311 : StackLang.HolProg 64 :=
.seq AllocBody510_269 AllocBody510_310

def AllocBody510_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody510_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody510_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody510_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody510_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody510_317 : StackLang.HolProg 64 :=
.seq AllocBody510_315 AllocBody510_316

def AllocBody510_318 : StackLang.HolProg 64 :=
.seq AllocBody510_314 AllocBody510_317

def AllocBody510_319 : StackLang.HolProg 64 :=
.seq AllocBody510_313 AllocBody510_318

def AllocBody510_320 : StackLang.HolProg 64 :=
.seq AllocBody510_312 AllocBody510_319

def AllocBody510_321 : StackLang.HolProg 64 :=
.seq AllocBody510_311 AllocBody510_320

def AllocBody510_322 : StackLang.HolProg 64 :=
.seq AllocBody510_268 AllocBody510_321

def AllocBody510_323 : StackLang.HolProg 64 :=
.seq AllocBody510_267 AllocBody510_322

def AllocBody510_324 : StackLang.HolProg 64 :=
.seq AllocBody510_266 AllocBody510_323

def AllocBody510_325 : StackLang.HolProg 64 :=
.seq AllocBody510_265 AllocBody510_324

def AllocBody510_326 : StackLang.HolProg 64 :=
.seq AllocBody510_222 AllocBody510_325

def AllocBody510_327 : StackLang.HolProg 64 :=
.seq AllocBody510_221 AllocBody510_326

def AllocBody510_328 : StackLang.HolProg 64 :=
.seq AllocBody510_220 AllocBody510_327

def AllocBody510_329 : StackLang.HolProg 64 :=
.seq AllocBody510_177 AllocBody510_328

def AllocBody510_330 : StackLang.HolProg 64 :=
.seq AllocBody510_176 AllocBody510_329

def AllocBody510_331 : StackLang.HolProg 64 :=
.seq AllocBody510_175 AllocBody510_330

def AllocBody510_332 : StackLang.HolProg 64 :=
.seq AllocBody510_104 AllocBody510_331

def AllocBody510_333 : StackLang.HolProg 64 :=
.seq AllocBody510_97 AllocBody510_332

def AllocBody510_334 : StackLang.HolProg 64 :=
.seq AllocBody510_96 AllocBody510_333

def AllocBody510_335 : StackLang.HolProg 64 :=
.seq AllocBody510_95 AllocBody510_334

def AllocBody510_336 : StackLang.HolProg 64 :=
.seq AllocBody510_52 AllocBody510_335

def AllocBody510_337 : StackLang.HolProg 64 :=
.seq AllocBody510_45 AllocBody510_336

def AllocBody510_338 : StackLang.HolProg 64 :=
.seq AllocBody510_44 AllocBody510_337

def AllocBody510_339 : StackLang.HolProg 64 :=
.seq AllocBody510_1 AllocBody510_338

def AllocBody510_340 : StackLang.HolProg 64 :=
.seq AllocBody510_0 AllocBody510_339

def Alloc510 : Nat × StackLang.HolProg 64 := (510, AllocBody510_340)
theorem Alloc510_eq : StackAlloc.progComp (510, raw510) = Alloc510 := by
  kernel_rfl
#print axioms Alloc510_eq
end InitECandidate.Proofs.BackendStages
