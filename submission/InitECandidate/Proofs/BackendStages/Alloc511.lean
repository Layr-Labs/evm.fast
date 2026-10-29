import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw511
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody511_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody511_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody511_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1632#64)

def AllocBody511_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_5 : StackLang.HolProg 64 :=
.seq AllocBody511_3 AllocBody511_4

def AllocBody511_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 3

def AllocBody511_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_16 : StackLang.HolProg 64 :=
.seq AllocBody511_14 AllocBody511_15

def AllocBody511_17 : StackLang.HolProg 64 :=
.seq AllocBody511_13 AllocBody511_16

def AllocBody511_18 : StackLang.HolProg 64 :=
.seq AllocBody511_12 AllocBody511_17

def AllocBody511_19 : StackLang.HolProg 64 :=
.seq AllocBody511_11 AllocBody511_18

def AllocBody511_20 : StackLang.HolProg 64 :=
.seq AllocBody511_10 AllocBody511_19

def AllocBody511_21 : StackLang.HolProg 64 :=
.seq AllocBody511_9 AllocBody511_20

def AllocBody511_22 : StackLang.HolProg 64 :=
.seq AllocBody511_8 AllocBody511_21

def AllocBody511_23 : StackLang.HolProg 64 :=
.seq AllocBody511_7 AllocBody511_22

def AllocBody511_24 : StackLang.HolProg 64 :=
.seq AllocBody511_6 AllocBody511_23

def AllocBody511_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody511_32 : StackLang.HolProg 64 :=
.seq AllocBody511_30 AllocBody511_31

def AllocBody511_33 : StackLang.HolProg 64 :=
.seq AllocBody511_29 AllocBody511_32

def AllocBody511_34 : StackLang.HolProg 64 :=
.seq AllocBody511_28 AllocBody511_33

def AllocBody511_35 : StackLang.HolProg 64 :=
.seq AllocBody511_27 AllocBody511_34

def AllocBody511_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_38 : StackLang.HolProg 64 :=
.seq AllocBody511_36 AllocBody511_37

def AllocBody511_39 : StackLang.HolProg 64 :=
.call (some (AllocBody511_35, 0, 511, 2)) (Sum.inl 475) (some (AllocBody511_38, 511, 3))

def AllocBody511_40 : StackLang.HolProg 64 :=
.seq AllocBody511_26 AllocBody511_39

def AllocBody511_41 : StackLang.HolProg 64 :=
.seq AllocBody511_25 AllocBody511_40

def AllocBody511_42 : StackLang.HolProg 64 :=
.seq AllocBody511_24 AllocBody511_41

def AllocBody511_43 : StackLang.HolProg 64 :=
.seq AllocBody511_5 AllocBody511_42

def AllocBody511_44 : StackLang.HolProg 64 :=
.seq AllocBody511_2 AllocBody511_43

def AllocBody511_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody511_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody511_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody511_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody511_50 : StackLang.HolProg 64 :=
.seq AllocBody511_48 AllocBody511_49

def AllocBody511_51 : StackLang.HolProg 64 :=
.seq AllocBody511_47 AllocBody511_50

def AllocBody511_52 : StackLang.HolProg 64 :=
.seq AllocBody511_46 AllocBody511_51

def AllocBody511_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1633#64)

def AllocBody511_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_56 : StackLang.HolProg 64 :=
.seq AllocBody511_54 AllocBody511_55

def AllocBody511_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 5

def AllocBody511_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_67 : StackLang.HolProg 64 :=
.seq AllocBody511_65 AllocBody511_66

def AllocBody511_68 : StackLang.HolProg 64 :=
.seq AllocBody511_64 AllocBody511_67

def AllocBody511_69 : StackLang.HolProg 64 :=
.seq AllocBody511_63 AllocBody511_68

def AllocBody511_70 : StackLang.HolProg 64 :=
.seq AllocBody511_62 AllocBody511_69

def AllocBody511_71 : StackLang.HolProg 64 :=
.seq AllocBody511_61 AllocBody511_70

def AllocBody511_72 : StackLang.HolProg 64 :=
.seq AllocBody511_60 AllocBody511_71

def AllocBody511_73 : StackLang.HolProg 64 :=
.seq AllocBody511_59 AllocBody511_72

def AllocBody511_74 : StackLang.HolProg 64 :=
.seq AllocBody511_58 AllocBody511_73

def AllocBody511_75 : StackLang.HolProg 64 :=
.seq AllocBody511_57 AllocBody511_74

def AllocBody511_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody511_83 : StackLang.HolProg 64 :=
.seq AllocBody511_81 AllocBody511_82

def AllocBody511_84 : StackLang.HolProg 64 :=
.seq AllocBody511_80 AllocBody511_83

def AllocBody511_85 : StackLang.HolProg 64 :=
.seq AllocBody511_79 AllocBody511_84

def AllocBody511_86 : StackLang.HolProg 64 :=
.seq AllocBody511_78 AllocBody511_85

def AllocBody511_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_89 : StackLang.HolProg 64 :=
.seq AllocBody511_87 AllocBody511_88

def AllocBody511_90 : StackLang.HolProg 64 :=
.call (some (AllocBody511_86, 0, 511, 4)) (Sum.inl 475) (some (AllocBody511_89, 511, 5))

def AllocBody511_91 : StackLang.HolProg 64 :=
.seq AllocBody511_77 AllocBody511_90

def AllocBody511_92 : StackLang.HolProg 64 :=
.seq AllocBody511_76 AllocBody511_91

def AllocBody511_93 : StackLang.HolProg 64 :=
.seq AllocBody511_75 AllocBody511_92

def AllocBody511_94 : StackLang.HolProg 64 :=
.seq AllocBody511_56 AllocBody511_93

def AllocBody511_95 : StackLang.HolProg 64 :=
.seq AllocBody511_53 AllocBody511_94

def AllocBody511_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody511_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody511_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody511_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody511_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody511_102 : StackLang.HolProg 64 :=
.seq AllocBody511_100 AllocBody511_101

def AllocBody511_103 : StackLang.HolProg 64 :=
.seq AllocBody511_99 AllocBody511_102

def AllocBody511_104 : StackLang.HolProg 64 :=
.seq AllocBody511_98 AllocBody511_103

def AllocBody511_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1634#64)

def AllocBody511_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_108 : StackLang.HolProg 64 :=
.seq AllocBody511_106 AllocBody511_107

def AllocBody511_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 7

def AllocBody511_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_119 : StackLang.HolProg 64 :=
.seq AllocBody511_117 AllocBody511_118

def AllocBody511_120 : StackLang.HolProg 64 :=
.seq AllocBody511_116 AllocBody511_119

def AllocBody511_121 : StackLang.HolProg 64 :=
.seq AllocBody511_115 AllocBody511_120

def AllocBody511_122 : StackLang.HolProg 64 :=
.seq AllocBody511_114 AllocBody511_121

def AllocBody511_123 : StackLang.HolProg 64 :=
.seq AllocBody511_113 AllocBody511_122

def AllocBody511_124 : StackLang.HolProg 64 :=
.seq AllocBody511_112 AllocBody511_123

def AllocBody511_125 : StackLang.HolProg 64 :=
.seq AllocBody511_111 AllocBody511_124

def AllocBody511_126 : StackLang.HolProg 64 :=
.seq AllocBody511_110 AllocBody511_125

def AllocBody511_127 : StackLang.HolProg 64 :=
.seq AllocBody511_109 AllocBody511_126

def AllocBody511_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody511_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody511_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody511_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody511_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody511_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody511_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody511_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody511_142 : StackLang.HolProg 64 :=
.seq AllocBody511_140 AllocBody511_141

def AllocBody511_143 : StackLang.HolProg 64 :=
.seq AllocBody511_139 AllocBody511_142

def AllocBody511_144 : StackLang.HolProg 64 :=
.seq AllocBody511_138 AllocBody511_143

def AllocBody511_145 : StackLang.HolProg 64 :=
.seq AllocBody511_137 AllocBody511_144

def AllocBody511_146 : StackLang.HolProg 64 :=
.seq AllocBody511_136 AllocBody511_145

def AllocBody511_147 : StackLang.HolProg 64 :=
.seq AllocBody511_135 AllocBody511_146

def AllocBody511_148 : StackLang.HolProg 64 :=
.seq AllocBody511_134 AllocBody511_147

def AllocBody511_149 : StackLang.HolProg 64 :=
.seq AllocBody511_133 AllocBody511_148

def AllocBody511_150 : StackLang.HolProg 64 :=
.seq AllocBody511_132 AllocBody511_149

def AllocBody511_151 : StackLang.HolProg 64 :=
.seq AllocBody511_131 AllocBody511_150

def AllocBody511_152 : StackLang.HolProg 64 :=
.seq AllocBody511_130 AllocBody511_151

def AllocBody511_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody511_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody511_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody511_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody511_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody511_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody511_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody511_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody511_161 : StackLang.HolProg 64 :=
.seq AllocBody511_159 AllocBody511_160

def AllocBody511_162 : StackLang.HolProg 64 :=
.seq AllocBody511_158 AllocBody511_161

def AllocBody511_163 : StackLang.HolProg 64 :=
.seq AllocBody511_157 AllocBody511_162

def AllocBody511_164 : StackLang.HolProg 64 :=
.seq AllocBody511_156 AllocBody511_163

def AllocBody511_165 : StackLang.HolProg 64 :=
.seq AllocBody511_155 AllocBody511_164

def AllocBody511_166 : StackLang.HolProg 64 :=
.seq AllocBody511_154 AllocBody511_165

def AllocBody511_167 : StackLang.HolProg 64 :=
.seq AllocBody511_153 AllocBody511_166

def AllocBody511_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_169 : StackLang.HolProg 64 :=
.seq AllocBody511_167 AllocBody511_168

def AllocBody511_170 : StackLang.HolProg 64 :=
.call (some (AllocBody511_152, 0, 511, 6)) (Sum.inl 470) (some (AllocBody511_169, 511, 7))

def AllocBody511_171 : StackLang.HolProg 64 :=
.seq AllocBody511_129 AllocBody511_170

def AllocBody511_172 : StackLang.HolProg 64 :=
.seq AllocBody511_128 AllocBody511_171

def AllocBody511_173 : StackLang.HolProg 64 :=
.seq AllocBody511_127 AllocBody511_172

def AllocBody511_174 : StackLang.HolProg 64 :=
.seq AllocBody511_108 AllocBody511_173

def AllocBody511_175 : StackLang.HolProg 64 :=
.seq AllocBody511_105 AllocBody511_174

def AllocBody511_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody511_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1635#64)

def AllocBody511_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_181 : StackLang.HolProg 64 :=
.seq AllocBody511_179 AllocBody511_180

def AllocBody511_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 9

def AllocBody511_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_192 : StackLang.HolProg 64 :=
.seq AllocBody511_190 AllocBody511_191

def AllocBody511_193 : StackLang.HolProg 64 :=
.seq AllocBody511_189 AllocBody511_192

def AllocBody511_194 : StackLang.HolProg 64 :=
.seq AllocBody511_188 AllocBody511_193

def AllocBody511_195 : StackLang.HolProg 64 :=
.seq AllocBody511_187 AllocBody511_194

def AllocBody511_196 : StackLang.HolProg 64 :=
.seq AllocBody511_186 AllocBody511_195

def AllocBody511_197 : StackLang.HolProg 64 :=
.seq AllocBody511_185 AllocBody511_196

def AllocBody511_198 : StackLang.HolProg 64 :=
.seq AllocBody511_184 AllocBody511_197

def AllocBody511_199 : StackLang.HolProg 64 :=
.seq AllocBody511_183 AllocBody511_198

def AllocBody511_200 : StackLang.HolProg 64 :=
.seq AllocBody511_182 AllocBody511_199

def AllocBody511_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody511_208 : StackLang.HolProg 64 :=
.seq AllocBody511_206 AllocBody511_207

def AllocBody511_209 : StackLang.HolProg 64 :=
.seq AllocBody511_205 AllocBody511_208

def AllocBody511_210 : StackLang.HolProg 64 :=
.seq AllocBody511_204 AllocBody511_209

def AllocBody511_211 : StackLang.HolProg 64 :=
.seq AllocBody511_203 AllocBody511_210

def AllocBody511_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_214 : StackLang.HolProg 64 :=
.seq AllocBody511_212 AllocBody511_213

def AllocBody511_215 : StackLang.HolProg 64 :=
.call (some (AllocBody511_211, 0, 511, 8)) (Sum.inl 109) (some (AllocBody511_214, 511, 9))

def AllocBody511_216 : StackLang.HolProg 64 :=
.seq AllocBody511_202 AllocBody511_215

def AllocBody511_217 : StackLang.HolProg 64 :=
.seq AllocBody511_201 AllocBody511_216

def AllocBody511_218 : StackLang.HolProg 64 :=
.seq AllocBody511_200 AllocBody511_217

def AllocBody511_219 : StackLang.HolProg 64 :=
.seq AllocBody511_181 AllocBody511_218

def AllocBody511_220 : StackLang.HolProg 64 :=
.seq AllocBody511_178 AllocBody511_219

def AllocBody511_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody511_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1636#64)

def AllocBody511_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_226 : StackLang.HolProg 64 :=
.seq AllocBody511_224 AllocBody511_225

def AllocBody511_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 11

def AllocBody511_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_237 : StackLang.HolProg 64 :=
.seq AllocBody511_235 AllocBody511_236

def AllocBody511_238 : StackLang.HolProg 64 :=
.seq AllocBody511_234 AllocBody511_237

def AllocBody511_239 : StackLang.HolProg 64 :=
.seq AllocBody511_233 AllocBody511_238

def AllocBody511_240 : StackLang.HolProg 64 :=
.seq AllocBody511_232 AllocBody511_239

def AllocBody511_241 : StackLang.HolProg 64 :=
.seq AllocBody511_231 AllocBody511_240

def AllocBody511_242 : StackLang.HolProg 64 :=
.seq AllocBody511_230 AllocBody511_241

def AllocBody511_243 : StackLang.HolProg 64 :=
.seq AllocBody511_229 AllocBody511_242

def AllocBody511_244 : StackLang.HolProg 64 :=
.seq AllocBody511_228 AllocBody511_243

def AllocBody511_245 : StackLang.HolProg 64 :=
.seq AllocBody511_227 AllocBody511_244

def AllocBody511_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_253 : StackLang.HolProg 64 :=
.seq AllocBody511_251 AllocBody511_252

def AllocBody511_254 : StackLang.HolProg 64 :=
.seq AllocBody511_250 AllocBody511_253

def AllocBody511_255 : StackLang.HolProg 64 :=
.seq AllocBody511_249 AllocBody511_254

def AllocBody511_256 : StackLang.HolProg 64 :=
.seq AllocBody511_248 AllocBody511_255

def AllocBody511_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_259 : StackLang.HolProg 64 :=
.seq AllocBody511_257 AllocBody511_258

def AllocBody511_260 : StackLang.HolProg 64 :=
.call (some (AllocBody511_256, 0, 511, 10)) (Sum.inl 478) (some (AllocBody511_259, 511, 11))

def AllocBody511_261 : StackLang.HolProg 64 :=
.seq AllocBody511_247 AllocBody511_260

def AllocBody511_262 : StackLang.HolProg 64 :=
.seq AllocBody511_246 AllocBody511_261

def AllocBody511_263 : StackLang.HolProg 64 :=
.seq AllocBody511_245 AllocBody511_262

def AllocBody511_264 : StackLang.HolProg 64 :=
.seq AllocBody511_226 AllocBody511_263

def AllocBody511_265 : StackLang.HolProg 64 :=
.seq AllocBody511_223 AllocBody511_264

def AllocBody511_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody511_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1637#64)

def AllocBody511_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_272 : StackLang.HolProg 64 :=
.seq AllocBody511_270 AllocBody511_271

def AllocBody511_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody511_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody511_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody511_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 511 13

def AllocBody511_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody511_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody511_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody511_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody511_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_283 : StackLang.HolProg 64 :=
.seq AllocBody511_281 AllocBody511_282

def AllocBody511_284 : StackLang.HolProg 64 :=
.seq AllocBody511_280 AllocBody511_283

def AllocBody511_285 : StackLang.HolProg 64 :=
.seq AllocBody511_279 AllocBody511_284

def AllocBody511_286 : StackLang.HolProg 64 :=
.seq AllocBody511_278 AllocBody511_285

def AllocBody511_287 : StackLang.HolProg 64 :=
.seq AllocBody511_277 AllocBody511_286

def AllocBody511_288 : StackLang.HolProg 64 :=
.seq AllocBody511_276 AllocBody511_287

def AllocBody511_289 : StackLang.HolProg 64 :=
.seq AllocBody511_275 AllocBody511_288

def AllocBody511_290 : StackLang.HolProg 64 :=
.seq AllocBody511_274 AllocBody511_289

def AllocBody511_291 : StackLang.HolProg 64 :=
.seq AllocBody511_273 AllocBody511_290

def AllocBody511_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody511_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody511_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody511_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody511_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody511_299 : StackLang.HolProg 64 :=
.seq AllocBody511_297 AllocBody511_298

def AllocBody511_300 : StackLang.HolProg 64 :=
.seq AllocBody511_296 AllocBody511_299

def AllocBody511_301 : StackLang.HolProg 64 :=
.seq AllocBody511_295 AllocBody511_300

def AllocBody511_302 : StackLang.HolProg 64 :=
.seq AllocBody511_294 AllocBody511_301

def AllocBody511_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody511_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody511_305 : StackLang.HolProg 64 :=
.seq AllocBody511_303 AllocBody511_304

def AllocBody511_306 : StackLang.HolProg 64 :=
.call (some (AllocBody511_302, 0, 511, 12)) (Sum.inl 490) (some (AllocBody511_305, 511, 13))

def AllocBody511_307 : StackLang.HolProg 64 :=
.seq AllocBody511_293 AllocBody511_306

def AllocBody511_308 : StackLang.HolProg 64 :=
.seq AllocBody511_292 AllocBody511_307

def AllocBody511_309 : StackLang.HolProg 64 :=
.seq AllocBody511_291 AllocBody511_308

def AllocBody511_310 : StackLang.HolProg 64 :=
.seq AllocBody511_272 AllocBody511_309

def AllocBody511_311 : StackLang.HolProg 64 :=
.seq AllocBody511_269 AllocBody511_310

def AllocBody511_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody511_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody511_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody511_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody511_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody511_317 : StackLang.HolProg 64 :=
.seq AllocBody511_315 AllocBody511_316

def AllocBody511_318 : StackLang.HolProg 64 :=
.seq AllocBody511_314 AllocBody511_317

def AllocBody511_319 : StackLang.HolProg 64 :=
.seq AllocBody511_313 AllocBody511_318

def AllocBody511_320 : StackLang.HolProg 64 :=
.seq AllocBody511_312 AllocBody511_319

def AllocBody511_321 : StackLang.HolProg 64 :=
.seq AllocBody511_311 AllocBody511_320

def AllocBody511_322 : StackLang.HolProg 64 :=
.seq AllocBody511_268 AllocBody511_321

def AllocBody511_323 : StackLang.HolProg 64 :=
.seq AllocBody511_267 AllocBody511_322

def AllocBody511_324 : StackLang.HolProg 64 :=
.seq AllocBody511_266 AllocBody511_323

def AllocBody511_325 : StackLang.HolProg 64 :=
.seq AllocBody511_265 AllocBody511_324

def AllocBody511_326 : StackLang.HolProg 64 :=
.seq AllocBody511_222 AllocBody511_325

def AllocBody511_327 : StackLang.HolProg 64 :=
.seq AllocBody511_221 AllocBody511_326

def AllocBody511_328 : StackLang.HolProg 64 :=
.seq AllocBody511_220 AllocBody511_327

def AllocBody511_329 : StackLang.HolProg 64 :=
.seq AllocBody511_177 AllocBody511_328

def AllocBody511_330 : StackLang.HolProg 64 :=
.seq AllocBody511_176 AllocBody511_329

def AllocBody511_331 : StackLang.HolProg 64 :=
.seq AllocBody511_175 AllocBody511_330

def AllocBody511_332 : StackLang.HolProg 64 :=
.seq AllocBody511_104 AllocBody511_331

def AllocBody511_333 : StackLang.HolProg 64 :=
.seq AllocBody511_97 AllocBody511_332

def AllocBody511_334 : StackLang.HolProg 64 :=
.seq AllocBody511_96 AllocBody511_333

def AllocBody511_335 : StackLang.HolProg 64 :=
.seq AllocBody511_95 AllocBody511_334

def AllocBody511_336 : StackLang.HolProg 64 :=
.seq AllocBody511_52 AllocBody511_335

def AllocBody511_337 : StackLang.HolProg 64 :=
.seq AllocBody511_45 AllocBody511_336

def AllocBody511_338 : StackLang.HolProg 64 :=
.seq AllocBody511_44 AllocBody511_337

def AllocBody511_339 : StackLang.HolProg 64 :=
.seq AllocBody511_1 AllocBody511_338

def AllocBody511_340 : StackLang.HolProg 64 :=
.seq AllocBody511_0 AllocBody511_339

def Alloc511 : Nat × StackLang.HolProg 64 := (511, AllocBody511_340)
theorem Alloc511_eq : StackAlloc.progComp (511, raw511) = Alloc511 := by
  kernel_rfl
#print axioms Alloc511_eq
end InitECandidate.Proofs.BackendStages
