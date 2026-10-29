import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw503
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody503_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody503_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody503_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1580#64)

def AllocBody503_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_5 : StackLang.HolProg 64 :=
.seq AllocBody503_3 AllocBody503_4

def AllocBody503_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 3

def AllocBody503_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_16 : StackLang.HolProg 64 :=
.seq AllocBody503_14 AllocBody503_15

def AllocBody503_17 : StackLang.HolProg 64 :=
.seq AllocBody503_13 AllocBody503_16

def AllocBody503_18 : StackLang.HolProg 64 :=
.seq AllocBody503_12 AllocBody503_17

def AllocBody503_19 : StackLang.HolProg 64 :=
.seq AllocBody503_11 AllocBody503_18

def AllocBody503_20 : StackLang.HolProg 64 :=
.seq AllocBody503_10 AllocBody503_19

def AllocBody503_21 : StackLang.HolProg 64 :=
.seq AllocBody503_9 AllocBody503_20

def AllocBody503_22 : StackLang.HolProg 64 :=
.seq AllocBody503_8 AllocBody503_21

def AllocBody503_23 : StackLang.HolProg 64 :=
.seq AllocBody503_7 AllocBody503_22

def AllocBody503_24 : StackLang.HolProg 64 :=
.seq AllocBody503_6 AllocBody503_23

def AllocBody503_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody503_32 : StackLang.HolProg 64 :=
.seq AllocBody503_30 AllocBody503_31

def AllocBody503_33 : StackLang.HolProg 64 :=
.seq AllocBody503_29 AllocBody503_32

def AllocBody503_34 : StackLang.HolProg 64 :=
.seq AllocBody503_28 AllocBody503_33

def AllocBody503_35 : StackLang.HolProg 64 :=
.seq AllocBody503_27 AllocBody503_34

def AllocBody503_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_38 : StackLang.HolProg 64 :=
.seq AllocBody503_36 AllocBody503_37

def AllocBody503_39 : StackLang.HolProg 64 :=
.call (some (AllocBody503_35, 0, 503, 2)) (Sum.inl 475) (some (AllocBody503_38, 503, 3))

def AllocBody503_40 : StackLang.HolProg 64 :=
.seq AllocBody503_26 AllocBody503_39

def AllocBody503_41 : StackLang.HolProg 64 :=
.seq AllocBody503_25 AllocBody503_40

def AllocBody503_42 : StackLang.HolProg 64 :=
.seq AllocBody503_24 AllocBody503_41

def AllocBody503_43 : StackLang.HolProg 64 :=
.seq AllocBody503_5 AllocBody503_42

def AllocBody503_44 : StackLang.HolProg 64 :=
.seq AllocBody503_2 AllocBody503_43

def AllocBody503_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody503_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody503_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody503_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody503_50 : StackLang.HolProg 64 :=
.seq AllocBody503_48 AllocBody503_49

def AllocBody503_51 : StackLang.HolProg 64 :=
.seq AllocBody503_47 AllocBody503_50

def AllocBody503_52 : StackLang.HolProg 64 :=
.seq AllocBody503_46 AllocBody503_51

def AllocBody503_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1581#64)

def AllocBody503_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_56 : StackLang.HolProg 64 :=
.seq AllocBody503_54 AllocBody503_55

def AllocBody503_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 5

def AllocBody503_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_67 : StackLang.HolProg 64 :=
.seq AllocBody503_65 AllocBody503_66

def AllocBody503_68 : StackLang.HolProg 64 :=
.seq AllocBody503_64 AllocBody503_67

def AllocBody503_69 : StackLang.HolProg 64 :=
.seq AllocBody503_63 AllocBody503_68

def AllocBody503_70 : StackLang.HolProg 64 :=
.seq AllocBody503_62 AllocBody503_69

def AllocBody503_71 : StackLang.HolProg 64 :=
.seq AllocBody503_61 AllocBody503_70

def AllocBody503_72 : StackLang.HolProg 64 :=
.seq AllocBody503_60 AllocBody503_71

def AllocBody503_73 : StackLang.HolProg 64 :=
.seq AllocBody503_59 AllocBody503_72

def AllocBody503_74 : StackLang.HolProg 64 :=
.seq AllocBody503_58 AllocBody503_73

def AllocBody503_75 : StackLang.HolProg 64 :=
.seq AllocBody503_57 AllocBody503_74

def AllocBody503_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody503_83 : StackLang.HolProg 64 :=
.seq AllocBody503_81 AllocBody503_82

def AllocBody503_84 : StackLang.HolProg 64 :=
.seq AllocBody503_80 AllocBody503_83

def AllocBody503_85 : StackLang.HolProg 64 :=
.seq AllocBody503_79 AllocBody503_84

def AllocBody503_86 : StackLang.HolProg 64 :=
.seq AllocBody503_78 AllocBody503_85

def AllocBody503_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_89 : StackLang.HolProg 64 :=
.seq AllocBody503_87 AllocBody503_88

def AllocBody503_90 : StackLang.HolProg 64 :=
.call (some (AllocBody503_86, 0, 503, 4)) (Sum.inl 475) (some (AllocBody503_89, 503, 5))

def AllocBody503_91 : StackLang.HolProg 64 :=
.seq AllocBody503_77 AllocBody503_90

def AllocBody503_92 : StackLang.HolProg 64 :=
.seq AllocBody503_76 AllocBody503_91

def AllocBody503_93 : StackLang.HolProg 64 :=
.seq AllocBody503_75 AllocBody503_92

def AllocBody503_94 : StackLang.HolProg 64 :=
.seq AllocBody503_56 AllocBody503_93

def AllocBody503_95 : StackLang.HolProg 64 :=
.seq AllocBody503_53 AllocBody503_94

def AllocBody503_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody503_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody503_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody503_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody503_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody503_102 : StackLang.HolProg 64 :=
.seq AllocBody503_100 AllocBody503_101

def AllocBody503_103 : StackLang.HolProg 64 :=
.seq AllocBody503_99 AllocBody503_102

def AllocBody503_104 : StackLang.HolProg 64 :=
.seq AllocBody503_98 AllocBody503_103

def AllocBody503_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1582#64)

def AllocBody503_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_108 : StackLang.HolProg 64 :=
.seq AllocBody503_106 AllocBody503_107

def AllocBody503_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 7

def AllocBody503_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_119 : StackLang.HolProg 64 :=
.seq AllocBody503_117 AllocBody503_118

def AllocBody503_120 : StackLang.HolProg 64 :=
.seq AllocBody503_116 AllocBody503_119

def AllocBody503_121 : StackLang.HolProg 64 :=
.seq AllocBody503_115 AllocBody503_120

def AllocBody503_122 : StackLang.HolProg 64 :=
.seq AllocBody503_114 AllocBody503_121

def AllocBody503_123 : StackLang.HolProg 64 :=
.seq AllocBody503_113 AllocBody503_122

def AllocBody503_124 : StackLang.HolProg 64 :=
.seq AllocBody503_112 AllocBody503_123

def AllocBody503_125 : StackLang.HolProg 64 :=
.seq AllocBody503_111 AllocBody503_124

def AllocBody503_126 : StackLang.HolProg 64 :=
.seq AllocBody503_110 AllocBody503_125

def AllocBody503_127 : StackLang.HolProg 64 :=
.seq AllocBody503_109 AllocBody503_126

def AllocBody503_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody503_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody503_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody503_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody503_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody503_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody503_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody503_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody503_142 : StackLang.HolProg 64 :=
.seq AllocBody503_140 AllocBody503_141

def AllocBody503_143 : StackLang.HolProg 64 :=
.seq AllocBody503_139 AllocBody503_142

def AllocBody503_144 : StackLang.HolProg 64 :=
.seq AllocBody503_138 AllocBody503_143

def AllocBody503_145 : StackLang.HolProg 64 :=
.seq AllocBody503_137 AllocBody503_144

def AllocBody503_146 : StackLang.HolProg 64 :=
.seq AllocBody503_136 AllocBody503_145

def AllocBody503_147 : StackLang.HolProg 64 :=
.seq AllocBody503_135 AllocBody503_146

def AllocBody503_148 : StackLang.HolProg 64 :=
.seq AllocBody503_134 AllocBody503_147

def AllocBody503_149 : StackLang.HolProg 64 :=
.seq AllocBody503_133 AllocBody503_148

def AllocBody503_150 : StackLang.HolProg 64 :=
.seq AllocBody503_132 AllocBody503_149

def AllocBody503_151 : StackLang.HolProg 64 :=
.seq AllocBody503_131 AllocBody503_150

def AllocBody503_152 : StackLang.HolProg 64 :=
.seq AllocBody503_130 AllocBody503_151

def AllocBody503_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody503_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody503_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody503_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody503_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody503_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody503_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody503_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody503_161 : StackLang.HolProg 64 :=
.seq AllocBody503_159 AllocBody503_160

def AllocBody503_162 : StackLang.HolProg 64 :=
.seq AllocBody503_158 AllocBody503_161

def AllocBody503_163 : StackLang.HolProg 64 :=
.seq AllocBody503_157 AllocBody503_162

def AllocBody503_164 : StackLang.HolProg 64 :=
.seq AllocBody503_156 AllocBody503_163

def AllocBody503_165 : StackLang.HolProg 64 :=
.seq AllocBody503_155 AllocBody503_164

def AllocBody503_166 : StackLang.HolProg 64 :=
.seq AllocBody503_154 AllocBody503_165

def AllocBody503_167 : StackLang.HolProg 64 :=
.seq AllocBody503_153 AllocBody503_166

def AllocBody503_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_169 : StackLang.HolProg 64 :=
.seq AllocBody503_167 AllocBody503_168

def AllocBody503_170 : StackLang.HolProg 64 :=
.call (some (AllocBody503_152, 0, 503, 6)) (Sum.inl 470) (some (AllocBody503_169, 503, 7))

def AllocBody503_171 : StackLang.HolProg 64 :=
.seq AllocBody503_129 AllocBody503_170

def AllocBody503_172 : StackLang.HolProg 64 :=
.seq AllocBody503_128 AllocBody503_171

def AllocBody503_173 : StackLang.HolProg 64 :=
.seq AllocBody503_127 AllocBody503_172

def AllocBody503_174 : StackLang.HolProg 64 :=
.seq AllocBody503_108 AllocBody503_173

def AllocBody503_175 : StackLang.HolProg 64 :=
.seq AllocBody503_105 AllocBody503_174

def AllocBody503_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody503_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1583#64)

def AllocBody503_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_181 : StackLang.HolProg 64 :=
.seq AllocBody503_179 AllocBody503_180

def AllocBody503_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 9

def AllocBody503_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_192 : StackLang.HolProg 64 :=
.seq AllocBody503_190 AllocBody503_191

def AllocBody503_193 : StackLang.HolProg 64 :=
.seq AllocBody503_189 AllocBody503_192

def AllocBody503_194 : StackLang.HolProg 64 :=
.seq AllocBody503_188 AllocBody503_193

def AllocBody503_195 : StackLang.HolProg 64 :=
.seq AllocBody503_187 AllocBody503_194

def AllocBody503_196 : StackLang.HolProg 64 :=
.seq AllocBody503_186 AllocBody503_195

def AllocBody503_197 : StackLang.HolProg 64 :=
.seq AllocBody503_185 AllocBody503_196

def AllocBody503_198 : StackLang.HolProg 64 :=
.seq AllocBody503_184 AllocBody503_197

def AllocBody503_199 : StackLang.HolProg 64 :=
.seq AllocBody503_183 AllocBody503_198

def AllocBody503_200 : StackLang.HolProg 64 :=
.seq AllocBody503_182 AllocBody503_199

def AllocBody503_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody503_208 : StackLang.HolProg 64 :=
.seq AllocBody503_206 AllocBody503_207

def AllocBody503_209 : StackLang.HolProg 64 :=
.seq AllocBody503_205 AllocBody503_208

def AllocBody503_210 : StackLang.HolProg 64 :=
.seq AllocBody503_204 AllocBody503_209

def AllocBody503_211 : StackLang.HolProg 64 :=
.seq AllocBody503_203 AllocBody503_210

def AllocBody503_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_214 : StackLang.HolProg 64 :=
.seq AllocBody503_212 AllocBody503_213

def AllocBody503_215 : StackLang.HolProg 64 :=
.call (some (AllocBody503_211, 0, 503, 8)) (Sum.inl 134) (some (AllocBody503_214, 503, 9))

def AllocBody503_216 : StackLang.HolProg 64 :=
.seq AllocBody503_202 AllocBody503_215

def AllocBody503_217 : StackLang.HolProg 64 :=
.seq AllocBody503_201 AllocBody503_216

def AllocBody503_218 : StackLang.HolProg 64 :=
.seq AllocBody503_200 AllocBody503_217

def AllocBody503_219 : StackLang.HolProg 64 :=
.seq AllocBody503_181 AllocBody503_218

def AllocBody503_220 : StackLang.HolProg 64 :=
.seq AllocBody503_178 AllocBody503_219

def AllocBody503_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody503_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1584#64)

def AllocBody503_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_226 : StackLang.HolProg 64 :=
.seq AllocBody503_224 AllocBody503_225

def AllocBody503_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 11

def AllocBody503_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_237 : StackLang.HolProg 64 :=
.seq AllocBody503_235 AllocBody503_236

def AllocBody503_238 : StackLang.HolProg 64 :=
.seq AllocBody503_234 AllocBody503_237

def AllocBody503_239 : StackLang.HolProg 64 :=
.seq AllocBody503_233 AllocBody503_238

def AllocBody503_240 : StackLang.HolProg 64 :=
.seq AllocBody503_232 AllocBody503_239

def AllocBody503_241 : StackLang.HolProg 64 :=
.seq AllocBody503_231 AllocBody503_240

def AllocBody503_242 : StackLang.HolProg 64 :=
.seq AllocBody503_230 AllocBody503_241

def AllocBody503_243 : StackLang.HolProg 64 :=
.seq AllocBody503_229 AllocBody503_242

def AllocBody503_244 : StackLang.HolProg 64 :=
.seq AllocBody503_228 AllocBody503_243

def AllocBody503_245 : StackLang.HolProg 64 :=
.seq AllocBody503_227 AllocBody503_244

def AllocBody503_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_253 : StackLang.HolProg 64 :=
.seq AllocBody503_251 AllocBody503_252

def AllocBody503_254 : StackLang.HolProg 64 :=
.seq AllocBody503_250 AllocBody503_253

def AllocBody503_255 : StackLang.HolProg 64 :=
.seq AllocBody503_249 AllocBody503_254

def AllocBody503_256 : StackLang.HolProg 64 :=
.seq AllocBody503_248 AllocBody503_255

def AllocBody503_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_259 : StackLang.HolProg 64 :=
.seq AllocBody503_257 AllocBody503_258

def AllocBody503_260 : StackLang.HolProg 64 :=
.call (some (AllocBody503_256, 0, 503, 10)) (Sum.inl 476) (some (AllocBody503_259, 503, 11))

def AllocBody503_261 : StackLang.HolProg 64 :=
.seq AllocBody503_247 AllocBody503_260

def AllocBody503_262 : StackLang.HolProg 64 :=
.seq AllocBody503_246 AllocBody503_261

def AllocBody503_263 : StackLang.HolProg 64 :=
.seq AllocBody503_245 AllocBody503_262

def AllocBody503_264 : StackLang.HolProg 64 :=
.seq AllocBody503_226 AllocBody503_263

def AllocBody503_265 : StackLang.HolProg 64 :=
.seq AllocBody503_223 AllocBody503_264

def AllocBody503_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody503_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1585#64)

def AllocBody503_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_272 : StackLang.HolProg 64 :=
.seq AllocBody503_270 AllocBody503_271

def AllocBody503_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody503_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody503_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody503_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 13

def AllocBody503_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody503_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody503_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody503_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody503_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_283 : StackLang.HolProg 64 :=
.seq AllocBody503_281 AllocBody503_282

def AllocBody503_284 : StackLang.HolProg 64 :=
.seq AllocBody503_280 AllocBody503_283

def AllocBody503_285 : StackLang.HolProg 64 :=
.seq AllocBody503_279 AllocBody503_284

def AllocBody503_286 : StackLang.HolProg 64 :=
.seq AllocBody503_278 AllocBody503_285

def AllocBody503_287 : StackLang.HolProg 64 :=
.seq AllocBody503_277 AllocBody503_286

def AllocBody503_288 : StackLang.HolProg 64 :=
.seq AllocBody503_276 AllocBody503_287

def AllocBody503_289 : StackLang.HolProg 64 :=
.seq AllocBody503_275 AllocBody503_288

def AllocBody503_290 : StackLang.HolProg 64 :=
.seq AllocBody503_274 AllocBody503_289

def AllocBody503_291 : StackLang.HolProg 64 :=
.seq AllocBody503_273 AllocBody503_290

def AllocBody503_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody503_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody503_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody503_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody503_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody503_299 : StackLang.HolProg 64 :=
.seq AllocBody503_297 AllocBody503_298

def AllocBody503_300 : StackLang.HolProg 64 :=
.seq AllocBody503_296 AllocBody503_299

def AllocBody503_301 : StackLang.HolProg 64 :=
.seq AllocBody503_295 AllocBody503_300

def AllocBody503_302 : StackLang.HolProg 64 :=
.seq AllocBody503_294 AllocBody503_301

def AllocBody503_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody503_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody503_305 : StackLang.HolProg 64 :=
.seq AllocBody503_303 AllocBody503_304

def AllocBody503_306 : StackLang.HolProg 64 :=
.call (some (AllocBody503_302, 0, 503, 12)) (Sum.inl 490) (some (AllocBody503_305, 503, 13))

def AllocBody503_307 : StackLang.HolProg 64 :=
.seq AllocBody503_293 AllocBody503_306

def AllocBody503_308 : StackLang.HolProg 64 :=
.seq AllocBody503_292 AllocBody503_307

def AllocBody503_309 : StackLang.HolProg 64 :=
.seq AllocBody503_291 AllocBody503_308

def AllocBody503_310 : StackLang.HolProg 64 :=
.seq AllocBody503_272 AllocBody503_309

def AllocBody503_311 : StackLang.HolProg 64 :=
.seq AllocBody503_269 AllocBody503_310

def AllocBody503_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody503_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody503_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody503_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody503_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody503_317 : StackLang.HolProg 64 :=
.seq AllocBody503_315 AllocBody503_316

def AllocBody503_318 : StackLang.HolProg 64 :=
.seq AllocBody503_314 AllocBody503_317

def AllocBody503_319 : StackLang.HolProg 64 :=
.seq AllocBody503_313 AllocBody503_318

def AllocBody503_320 : StackLang.HolProg 64 :=
.seq AllocBody503_312 AllocBody503_319

def AllocBody503_321 : StackLang.HolProg 64 :=
.seq AllocBody503_311 AllocBody503_320

def AllocBody503_322 : StackLang.HolProg 64 :=
.seq AllocBody503_268 AllocBody503_321

def AllocBody503_323 : StackLang.HolProg 64 :=
.seq AllocBody503_267 AllocBody503_322

def AllocBody503_324 : StackLang.HolProg 64 :=
.seq AllocBody503_266 AllocBody503_323

def AllocBody503_325 : StackLang.HolProg 64 :=
.seq AllocBody503_265 AllocBody503_324

def AllocBody503_326 : StackLang.HolProg 64 :=
.seq AllocBody503_222 AllocBody503_325

def AllocBody503_327 : StackLang.HolProg 64 :=
.seq AllocBody503_221 AllocBody503_326

def AllocBody503_328 : StackLang.HolProg 64 :=
.seq AllocBody503_220 AllocBody503_327

def AllocBody503_329 : StackLang.HolProg 64 :=
.seq AllocBody503_177 AllocBody503_328

def AllocBody503_330 : StackLang.HolProg 64 :=
.seq AllocBody503_176 AllocBody503_329

def AllocBody503_331 : StackLang.HolProg 64 :=
.seq AllocBody503_175 AllocBody503_330

def AllocBody503_332 : StackLang.HolProg 64 :=
.seq AllocBody503_104 AllocBody503_331

def AllocBody503_333 : StackLang.HolProg 64 :=
.seq AllocBody503_97 AllocBody503_332

def AllocBody503_334 : StackLang.HolProg 64 :=
.seq AllocBody503_96 AllocBody503_333

def AllocBody503_335 : StackLang.HolProg 64 :=
.seq AllocBody503_95 AllocBody503_334

def AllocBody503_336 : StackLang.HolProg 64 :=
.seq AllocBody503_52 AllocBody503_335

def AllocBody503_337 : StackLang.HolProg 64 :=
.seq AllocBody503_45 AllocBody503_336

def AllocBody503_338 : StackLang.HolProg 64 :=
.seq AllocBody503_44 AllocBody503_337

def AllocBody503_339 : StackLang.HolProg 64 :=
.seq AllocBody503_1 AllocBody503_338

def AllocBody503_340 : StackLang.HolProg 64 :=
.seq AllocBody503_0 AllocBody503_339

def Alloc503 : Nat × StackLang.HolProg 64 := (503, AllocBody503_340)
theorem Alloc503_eq : StackAlloc.progComp (503, raw503) = Alloc503 := by
  kernel_rfl
#print axioms Alloc503_eq
end InitECandidate.Proofs.BackendStages
