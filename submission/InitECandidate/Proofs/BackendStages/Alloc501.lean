import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw501
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody501_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody501_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody501_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1568#64)

def AllocBody501_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_5 : StackLang.HolProg 64 :=
.seq AllocBody501_3 AllocBody501_4

def AllocBody501_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 3

def AllocBody501_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_16 : StackLang.HolProg 64 :=
.seq AllocBody501_14 AllocBody501_15

def AllocBody501_17 : StackLang.HolProg 64 :=
.seq AllocBody501_13 AllocBody501_16

def AllocBody501_18 : StackLang.HolProg 64 :=
.seq AllocBody501_12 AllocBody501_17

def AllocBody501_19 : StackLang.HolProg 64 :=
.seq AllocBody501_11 AllocBody501_18

def AllocBody501_20 : StackLang.HolProg 64 :=
.seq AllocBody501_10 AllocBody501_19

def AllocBody501_21 : StackLang.HolProg 64 :=
.seq AllocBody501_9 AllocBody501_20

def AllocBody501_22 : StackLang.HolProg 64 :=
.seq AllocBody501_8 AllocBody501_21

def AllocBody501_23 : StackLang.HolProg 64 :=
.seq AllocBody501_7 AllocBody501_22

def AllocBody501_24 : StackLang.HolProg 64 :=
.seq AllocBody501_6 AllocBody501_23

def AllocBody501_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody501_32 : StackLang.HolProg 64 :=
.seq AllocBody501_30 AllocBody501_31

def AllocBody501_33 : StackLang.HolProg 64 :=
.seq AllocBody501_29 AllocBody501_32

def AllocBody501_34 : StackLang.HolProg 64 :=
.seq AllocBody501_28 AllocBody501_33

def AllocBody501_35 : StackLang.HolProg 64 :=
.seq AllocBody501_27 AllocBody501_34

def AllocBody501_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_38 : StackLang.HolProg 64 :=
.seq AllocBody501_36 AllocBody501_37

def AllocBody501_39 : StackLang.HolProg 64 :=
.call (some (AllocBody501_35, 0, 501, 2)) (Sum.inl 475) (some (AllocBody501_38, 501, 3))

def AllocBody501_40 : StackLang.HolProg 64 :=
.seq AllocBody501_26 AllocBody501_39

def AllocBody501_41 : StackLang.HolProg 64 :=
.seq AllocBody501_25 AllocBody501_40

def AllocBody501_42 : StackLang.HolProg 64 :=
.seq AllocBody501_24 AllocBody501_41

def AllocBody501_43 : StackLang.HolProg 64 :=
.seq AllocBody501_5 AllocBody501_42

def AllocBody501_44 : StackLang.HolProg 64 :=
.seq AllocBody501_2 AllocBody501_43

def AllocBody501_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody501_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody501_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody501_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody501_50 : StackLang.HolProg 64 :=
.seq AllocBody501_48 AllocBody501_49

def AllocBody501_51 : StackLang.HolProg 64 :=
.seq AllocBody501_47 AllocBody501_50

def AllocBody501_52 : StackLang.HolProg 64 :=
.seq AllocBody501_46 AllocBody501_51

def AllocBody501_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1569#64)

def AllocBody501_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_56 : StackLang.HolProg 64 :=
.seq AllocBody501_54 AllocBody501_55

def AllocBody501_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 5

def AllocBody501_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_67 : StackLang.HolProg 64 :=
.seq AllocBody501_65 AllocBody501_66

def AllocBody501_68 : StackLang.HolProg 64 :=
.seq AllocBody501_64 AllocBody501_67

def AllocBody501_69 : StackLang.HolProg 64 :=
.seq AllocBody501_63 AllocBody501_68

def AllocBody501_70 : StackLang.HolProg 64 :=
.seq AllocBody501_62 AllocBody501_69

def AllocBody501_71 : StackLang.HolProg 64 :=
.seq AllocBody501_61 AllocBody501_70

def AllocBody501_72 : StackLang.HolProg 64 :=
.seq AllocBody501_60 AllocBody501_71

def AllocBody501_73 : StackLang.HolProg 64 :=
.seq AllocBody501_59 AllocBody501_72

def AllocBody501_74 : StackLang.HolProg 64 :=
.seq AllocBody501_58 AllocBody501_73

def AllocBody501_75 : StackLang.HolProg 64 :=
.seq AllocBody501_57 AllocBody501_74

def AllocBody501_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody501_83 : StackLang.HolProg 64 :=
.seq AllocBody501_81 AllocBody501_82

def AllocBody501_84 : StackLang.HolProg 64 :=
.seq AllocBody501_80 AllocBody501_83

def AllocBody501_85 : StackLang.HolProg 64 :=
.seq AllocBody501_79 AllocBody501_84

def AllocBody501_86 : StackLang.HolProg 64 :=
.seq AllocBody501_78 AllocBody501_85

def AllocBody501_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_89 : StackLang.HolProg 64 :=
.seq AllocBody501_87 AllocBody501_88

def AllocBody501_90 : StackLang.HolProg 64 :=
.call (some (AllocBody501_86, 0, 501, 4)) (Sum.inl 475) (some (AllocBody501_89, 501, 5))

def AllocBody501_91 : StackLang.HolProg 64 :=
.seq AllocBody501_77 AllocBody501_90

def AllocBody501_92 : StackLang.HolProg 64 :=
.seq AllocBody501_76 AllocBody501_91

def AllocBody501_93 : StackLang.HolProg 64 :=
.seq AllocBody501_75 AllocBody501_92

def AllocBody501_94 : StackLang.HolProg 64 :=
.seq AllocBody501_56 AllocBody501_93

def AllocBody501_95 : StackLang.HolProg 64 :=
.seq AllocBody501_53 AllocBody501_94

def AllocBody501_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody501_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody501_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody501_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody501_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody501_102 : StackLang.HolProg 64 :=
.seq AllocBody501_100 AllocBody501_101

def AllocBody501_103 : StackLang.HolProg 64 :=
.seq AllocBody501_99 AllocBody501_102

def AllocBody501_104 : StackLang.HolProg 64 :=
.seq AllocBody501_98 AllocBody501_103

def AllocBody501_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1570#64)

def AllocBody501_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_108 : StackLang.HolProg 64 :=
.seq AllocBody501_106 AllocBody501_107

def AllocBody501_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 7

def AllocBody501_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_119 : StackLang.HolProg 64 :=
.seq AllocBody501_117 AllocBody501_118

def AllocBody501_120 : StackLang.HolProg 64 :=
.seq AllocBody501_116 AllocBody501_119

def AllocBody501_121 : StackLang.HolProg 64 :=
.seq AllocBody501_115 AllocBody501_120

def AllocBody501_122 : StackLang.HolProg 64 :=
.seq AllocBody501_114 AllocBody501_121

def AllocBody501_123 : StackLang.HolProg 64 :=
.seq AllocBody501_113 AllocBody501_122

def AllocBody501_124 : StackLang.HolProg 64 :=
.seq AllocBody501_112 AllocBody501_123

def AllocBody501_125 : StackLang.HolProg 64 :=
.seq AllocBody501_111 AllocBody501_124

def AllocBody501_126 : StackLang.HolProg 64 :=
.seq AllocBody501_110 AllocBody501_125

def AllocBody501_127 : StackLang.HolProg 64 :=
.seq AllocBody501_109 AllocBody501_126

def AllocBody501_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody501_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody501_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody501_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody501_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody501_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody501_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody501_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody501_142 : StackLang.HolProg 64 :=
.seq AllocBody501_140 AllocBody501_141

def AllocBody501_143 : StackLang.HolProg 64 :=
.seq AllocBody501_139 AllocBody501_142

def AllocBody501_144 : StackLang.HolProg 64 :=
.seq AllocBody501_138 AllocBody501_143

def AllocBody501_145 : StackLang.HolProg 64 :=
.seq AllocBody501_137 AllocBody501_144

def AllocBody501_146 : StackLang.HolProg 64 :=
.seq AllocBody501_136 AllocBody501_145

def AllocBody501_147 : StackLang.HolProg 64 :=
.seq AllocBody501_135 AllocBody501_146

def AllocBody501_148 : StackLang.HolProg 64 :=
.seq AllocBody501_134 AllocBody501_147

def AllocBody501_149 : StackLang.HolProg 64 :=
.seq AllocBody501_133 AllocBody501_148

def AllocBody501_150 : StackLang.HolProg 64 :=
.seq AllocBody501_132 AllocBody501_149

def AllocBody501_151 : StackLang.HolProg 64 :=
.seq AllocBody501_131 AllocBody501_150

def AllocBody501_152 : StackLang.HolProg 64 :=
.seq AllocBody501_130 AllocBody501_151

def AllocBody501_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody501_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody501_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody501_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody501_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody501_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody501_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody501_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody501_161 : StackLang.HolProg 64 :=
.seq AllocBody501_159 AllocBody501_160

def AllocBody501_162 : StackLang.HolProg 64 :=
.seq AllocBody501_158 AllocBody501_161

def AllocBody501_163 : StackLang.HolProg 64 :=
.seq AllocBody501_157 AllocBody501_162

def AllocBody501_164 : StackLang.HolProg 64 :=
.seq AllocBody501_156 AllocBody501_163

def AllocBody501_165 : StackLang.HolProg 64 :=
.seq AllocBody501_155 AllocBody501_164

def AllocBody501_166 : StackLang.HolProg 64 :=
.seq AllocBody501_154 AllocBody501_165

def AllocBody501_167 : StackLang.HolProg 64 :=
.seq AllocBody501_153 AllocBody501_166

def AllocBody501_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_169 : StackLang.HolProg 64 :=
.seq AllocBody501_167 AllocBody501_168

def AllocBody501_170 : StackLang.HolProg 64 :=
.call (some (AllocBody501_152, 0, 501, 6)) (Sum.inl 470) (some (AllocBody501_169, 501, 7))

def AllocBody501_171 : StackLang.HolProg 64 :=
.seq AllocBody501_129 AllocBody501_170

def AllocBody501_172 : StackLang.HolProg 64 :=
.seq AllocBody501_128 AllocBody501_171

def AllocBody501_173 : StackLang.HolProg 64 :=
.seq AllocBody501_127 AllocBody501_172

def AllocBody501_174 : StackLang.HolProg 64 :=
.seq AllocBody501_108 AllocBody501_173

def AllocBody501_175 : StackLang.HolProg 64 :=
.seq AllocBody501_105 AllocBody501_174

def AllocBody501_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody501_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1571#64)

def AllocBody501_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_181 : StackLang.HolProg 64 :=
.seq AllocBody501_179 AllocBody501_180

def AllocBody501_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 9

def AllocBody501_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_192 : StackLang.HolProg 64 :=
.seq AllocBody501_190 AllocBody501_191

def AllocBody501_193 : StackLang.HolProg 64 :=
.seq AllocBody501_189 AllocBody501_192

def AllocBody501_194 : StackLang.HolProg 64 :=
.seq AllocBody501_188 AllocBody501_193

def AllocBody501_195 : StackLang.HolProg 64 :=
.seq AllocBody501_187 AllocBody501_194

def AllocBody501_196 : StackLang.HolProg 64 :=
.seq AllocBody501_186 AllocBody501_195

def AllocBody501_197 : StackLang.HolProg 64 :=
.seq AllocBody501_185 AllocBody501_196

def AllocBody501_198 : StackLang.HolProg 64 :=
.seq AllocBody501_184 AllocBody501_197

def AllocBody501_199 : StackLang.HolProg 64 :=
.seq AllocBody501_183 AllocBody501_198

def AllocBody501_200 : StackLang.HolProg 64 :=
.seq AllocBody501_182 AllocBody501_199

def AllocBody501_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody501_208 : StackLang.HolProg 64 :=
.seq AllocBody501_206 AllocBody501_207

def AllocBody501_209 : StackLang.HolProg 64 :=
.seq AllocBody501_205 AllocBody501_208

def AllocBody501_210 : StackLang.HolProg 64 :=
.seq AllocBody501_204 AllocBody501_209

def AllocBody501_211 : StackLang.HolProg 64 :=
.seq AllocBody501_203 AllocBody501_210

def AllocBody501_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_214 : StackLang.HolProg 64 :=
.seq AllocBody501_212 AllocBody501_213

def AllocBody501_215 : StackLang.HolProg 64 :=
.call (some (AllocBody501_211, 0, 501, 8)) (Sum.inl 133) (some (AllocBody501_214, 501, 9))

def AllocBody501_216 : StackLang.HolProg 64 :=
.seq AllocBody501_202 AllocBody501_215

def AllocBody501_217 : StackLang.HolProg 64 :=
.seq AllocBody501_201 AllocBody501_216

def AllocBody501_218 : StackLang.HolProg 64 :=
.seq AllocBody501_200 AllocBody501_217

def AllocBody501_219 : StackLang.HolProg 64 :=
.seq AllocBody501_181 AllocBody501_218

def AllocBody501_220 : StackLang.HolProg 64 :=
.seq AllocBody501_178 AllocBody501_219

def AllocBody501_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody501_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1572#64)

def AllocBody501_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_226 : StackLang.HolProg 64 :=
.seq AllocBody501_224 AllocBody501_225

def AllocBody501_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 11

def AllocBody501_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_237 : StackLang.HolProg 64 :=
.seq AllocBody501_235 AllocBody501_236

def AllocBody501_238 : StackLang.HolProg 64 :=
.seq AllocBody501_234 AllocBody501_237

def AllocBody501_239 : StackLang.HolProg 64 :=
.seq AllocBody501_233 AllocBody501_238

def AllocBody501_240 : StackLang.HolProg 64 :=
.seq AllocBody501_232 AllocBody501_239

def AllocBody501_241 : StackLang.HolProg 64 :=
.seq AllocBody501_231 AllocBody501_240

def AllocBody501_242 : StackLang.HolProg 64 :=
.seq AllocBody501_230 AllocBody501_241

def AllocBody501_243 : StackLang.HolProg 64 :=
.seq AllocBody501_229 AllocBody501_242

def AllocBody501_244 : StackLang.HolProg 64 :=
.seq AllocBody501_228 AllocBody501_243

def AllocBody501_245 : StackLang.HolProg 64 :=
.seq AllocBody501_227 AllocBody501_244

def AllocBody501_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_253 : StackLang.HolProg 64 :=
.seq AllocBody501_251 AllocBody501_252

def AllocBody501_254 : StackLang.HolProg 64 :=
.seq AllocBody501_250 AllocBody501_253

def AllocBody501_255 : StackLang.HolProg 64 :=
.seq AllocBody501_249 AllocBody501_254

def AllocBody501_256 : StackLang.HolProg 64 :=
.seq AllocBody501_248 AllocBody501_255

def AllocBody501_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_259 : StackLang.HolProg 64 :=
.seq AllocBody501_257 AllocBody501_258

def AllocBody501_260 : StackLang.HolProg 64 :=
.call (some (AllocBody501_256, 0, 501, 10)) (Sum.inl 476) (some (AllocBody501_259, 501, 11))

def AllocBody501_261 : StackLang.HolProg 64 :=
.seq AllocBody501_247 AllocBody501_260

def AllocBody501_262 : StackLang.HolProg 64 :=
.seq AllocBody501_246 AllocBody501_261

def AllocBody501_263 : StackLang.HolProg 64 :=
.seq AllocBody501_245 AllocBody501_262

def AllocBody501_264 : StackLang.HolProg 64 :=
.seq AllocBody501_226 AllocBody501_263

def AllocBody501_265 : StackLang.HolProg 64 :=
.seq AllocBody501_223 AllocBody501_264

def AllocBody501_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody501_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1573#64)

def AllocBody501_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_272 : StackLang.HolProg 64 :=
.seq AllocBody501_270 AllocBody501_271

def AllocBody501_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody501_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody501_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody501_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 501 13

def AllocBody501_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody501_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody501_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody501_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody501_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_283 : StackLang.HolProg 64 :=
.seq AllocBody501_281 AllocBody501_282

def AllocBody501_284 : StackLang.HolProg 64 :=
.seq AllocBody501_280 AllocBody501_283

def AllocBody501_285 : StackLang.HolProg 64 :=
.seq AllocBody501_279 AllocBody501_284

def AllocBody501_286 : StackLang.HolProg 64 :=
.seq AllocBody501_278 AllocBody501_285

def AllocBody501_287 : StackLang.HolProg 64 :=
.seq AllocBody501_277 AllocBody501_286

def AllocBody501_288 : StackLang.HolProg 64 :=
.seq AllocBody501_276 AllocBody501_287

def AllocBody501_289 : StackLang.HolProg 64 :=
.seq AllocBody501_275 AllocBody501_288

def AllocBody501_290 : StackLang.HolProg 64 :=
.seq AllocBody501_274 AllocBody501_289

def AllocBody501_291 : StackLang.HolProg 64 :=
.seq AllocBody501_273 AllocBody501_290

def AllocBody501_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody501_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody501_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody501_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody501_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody501_299 : StackLang.HolProg 64 :=
.seq AllocBody501_297 AllocBody501_298

def AllocBody501_300 : StackLang.HolProg 64 :=
.seq AllocBody501_296 AllocBody501_299

def AllocBody501_301 : StackLang.HolProg 64 :=
.seq AllocBody501_295 AllocBody501_300

def AllocBody501_302 : StackLang.HolProg 64 :=
.seq AllocBody501_294 AllocBody501_301

def AllocBody501_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody501_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody501_305 : StackLang.HolProg 64 :=
.seq AllocBody501_303 AllocBody501_304

def AllocBody501_306 : StackLang.HolProg 64 :=
.call (some (AllocBody501_302, 0, 501, 12)) (Sum.inl 490) (some (AllocBody501_305, 501, 13))

def AllocBody501_307 : StackLang.HolProg 64 :=
.seq AllocBody501_293 AllocBody501_306

def AllocBody501_308 : StackLang.HolProg 64 :=
.seq AllocBody501_292 AllocBody501_307

def AllocBody501_309 : StackLang.HolProg 64 :=
.seq AllocBody501_291 AllocBody501_308

def AllocBody501_310 : StackLang.HolProg 64 :=
.seq AllocBody501_272 AllocBody501_309

def AllocBody501_311 : StackLang.HolProg 64 :=
.seq AllocBody501_269 AllocBody501_310

def AllocBody501_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody501_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody501_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody501_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody501_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody501_317 : StackLang.HolProg 64 :=
.seq AllocBody501_315 AllocBody501_316

def AllocBody501_318 : StackLang.HolProg 64 :=
.seq AllocBody501_314 AllocBody501_317

def AllocBody501_319 : StackLang.HolProg 64 :=
.seq AllocBody501_313 AllocBody501_318

def AllocBody501_320 : StackLang.HolProg 64 :=
.seq AllocBody501_312 AllocBody501_319

def AllocBody501_321 : StackLang.HolProg 64 :=
.seq AllocBody501_311 AllocBody501_320

def AllocBody501_322 : StackLang.HolProg 64 :=
.seq AllocBody501_268 AllocBody501_321

def AllocBody501_323 : StackLang.HolProg 64 :=
.seq AllocBody501_267 AllocBody501_322

def AllocBody501_324 : StackLang.HolProg 64 :=
.seq AllocBody501_266 AllocBody501_323

def AllocBody501_325 : StackLang.HolProg 64 :=
.seq AllocBody501_265 AllocBody501_324

def AllocBody501_326 : StackLang.HolProg 64 :=
.seq AllocBody501_222 AllocBody501_325

def AllocBody501_327 : StackLang.HolProg 64 :=
.seq AllocBody501_221 AllocBody501_326

def AllocBody501_328 : StackLang.HolProg 64 :=
.seq AllocBody501_220 AllocBody501_327

def AllocBody501_329 : StackLang.HolProg 64 :=
.seq AllocBody501_177 AllocBody501_328

def AllocBody501_330 : StackLang.HolProg 64 :=
.seq AllocBody501_176 AllocBody501_329

def AllocBody501_331 : StackLang.HolProg 64 :=
.seq AllocBody501_175 AllocBody501_330

def AllocBody501_332 : StackLang.HolProg 64 :=
.seq AllocBody501_104 AllocBody501_331

def AllocBody501_333 : StackLang.HolProg 64 :=
.seq AllocBody501_97 AllocBody501_332

def AllocBody501_334 : StackLang.HolProg 64 :=
.seq AllocBody501_96 AllocBody501_333

def AllocBody501_335 : StackLang.HolProg 64 :=
.seq AllocBody501_95 AllocBody501_334

def AllocBody501_336 : StackLang.HolProg 64 :=
.seq AllocBody501_52 AllocBody501_335

def AllocBody501_337 : StackLang.HolProg 64 :=
.seq AllocBody501_45 AllocBody501_336

def AllocBody501_338 : StackLang.HolProg 64 :=
.seq AllocBody501_44 AllocBody501_337

def AllocBody501_339 : StackLang.HolProg 64 :=
.seq AllocBody501_1 AllocBody501_338

def AllocBody501_340 : StackLang.HolProg 64 :=
.seq AllocBody501_0 AllocBody501_339

def Alloc501 : Nat × StackLang.HolProg 64 := (501, AllocBody501_340)
theorem Alloc501_eq : StackAlloc.progComp (501, raw501) = Alloc501 := by
  kernel_rfl
#print axioms Alloc501_eq
end InitECandidate.Proofs.BackendStages
