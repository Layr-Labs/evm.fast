import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw500
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody500_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody500_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody500_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1562#64)

def AllocBody500_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_5 : StackLang.HolProg 64 :=
.seq AllocBody500_3 AllocBody500_4

def AllocBody500_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 3

def AllocBody500_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_16 : StackLang.HolProg 64 :=
.seq AllocBody500_14 AllocBody500_15

def AllocBody500_17 : StackLang.HolProg 64 :=
.seq AllocBody500_13 AllocBody500_16

def AllocBody500_18 : StackLang.HolProg 64 :=
.seq AllocBody500_12 AllocBody500_17

def AllocBody500_19 : StackLang.HolProg 64 :=
.seq AllocBody500_11 AllocBody500_18

def AllocBody500_20 : StackLang.HolProg 64 :=
.seq AllocBody500_10 AllocBody500_19

def AllocBody500_21 : StackLang.HolProg 64 :=
.seq AllocBody500_9 AllocBody500_20

def AllocBody500_22 : StackLang.HolProg 64 :=
.seq AllocBody500_8 AllocBody500_21

def AllocBody500_23 : StackLang.HolProg 64 :=
.seq AllocBody500_7 AllocBody500_22

def AllocBody500_24 : StackLang.HolProg 64 :=
.seq AllocBody500_6 AllocBody500_23

def AllocBody500_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody500_32 : StackLang.HolProg 64 :=
.seq AllocBody500_30 AllocBody500_31

def AllocBody500_33 : StackLang.HolProg 64 :=
.seq AllocBody500_29 AllocBody500_32

def AllocBody500_34 : StackLang.HolProg 64 :=
.seq AllocBody500_28 AllocBody500_33

def AllocBody500_35 : StackLang.HolProg 64 :=
.seq AllocBody500_27 AllocBody500_34

def AllocBody500_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_38 : StackLang.HolProg 64 :=
.seq AllocBody500_36 AllocBody500_37

def AllocBody500_39 : StackLang.HolProg 64 :=
.call (some (AllocBody500_35, 0, 500, 2)) (Sum.inl 475) (some (AllocBody500_38, 500, 3))

def AllocBody500_40 : StackLang.HolProg 64 :=
.seq AllocBody500_26 AllocBody500_39

def AllocBody500_41 : StackLang.HolProg 64 :=
.seq AllocBody500_25 AllocBody500_40

def AllocBody500_42 : StackLang.HolProg 64 :=
.seq AllocBody500_24 AllocBody500_41

def AllocBody500_43 : StackLang.HolProg 64 :=
.seq AllocBody500_5 AllocBody500_42

def AllocBody500_44 : StackLang.HolProg 64 :=
.seq AllocBody500_2 AllocBody500_43

def AllocBody500_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody500_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody500_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody500_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody500_50 : StackLang.HolProg 64 :=
.seq AllocBody500_48 AllocBody500_49

def AllocBody500_51 : StackLang.HolProg 64 :=
.seq AllocBody500_47 AllocBody500_50

def AllocBody500_52 : StackLang.HolProg 64 :=
.seq AllocBody500_46 AllocBody500_51

def AllocBody500_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1563#64)

def AllocBody500_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_56 : StackLang.HolProg 64 :=
.seq AllocBody500_54 AllocBody500_55

def AllocBody500_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 5

def AllocBody500_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_67 : StackLang.HolProg 64 :=
.seq AllocBody500_65 AllocBody500_66

def AllocBody500_68 : StackLang.HolProg 64 :=
.seq AllocBody500_64 AllocBody500_67

def AllocBody500_69 : StackLang.HolProg 64 :=
.seq AllocBody500_63 AllocBody500_68

def AllocBody500_70 : StackLang.HolProg 64 :=
.seq AllocBody500_62 AllocBody500_69

def AllocBody500_71 : StackLang.HolProg 64 :=
.seq AllocBody500_61 AllocBody500_70

def AllocBody500_72 : StackLang.HolProg 64 :=
.seq AllocBody500_60 AllocBody500_71

def AllocBody500_73 : StackLang.HolProg 64 :=
.seq AllocBody500_59 AllocBody500_72

def AllocBody500_74 : StackLang.HolProg 64 :=
.seq AllocBody500_58 AllocBody500_73

def AllocBody500_75 : StackLang.HolProg 64 :=
.seq AllocBody500_57 AllocBody500_74

def AllocBody500_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody500_83 : StackLang.HolProg 64 :=
.seq AllocBody500_81 AllocBody500_82

def AllocBody500_84 : StackLang.HolProg 64 :=
.seq AllocBody500_80 AllocBody500_83

def AllocBody500_85 : StackLang.HolProg 64 :=
.seq AllocBody500_79 AllocBody500_84

def AllocBody500_86 : StackLang.HolProg 64 :=
.seq AllocBody500_78 AllocBody500_85

def AllocBody500_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_89 : StackLang.HolProg 64 :=
.seq AllocBody500_87 AllocBody500_88

def AllocBody500_90 : StackLang.HolProg 64 :=
.call (some (AllocBody500_86, 0, 500, 4)) (Sum.inl 475) (some (AllocBody500_89, 500, 5))

def AllocBody500_91 : StackLang.HolProg 64 :=
.seq AllocBody500_77 AllocBody500_90

def AllocBody500_92 : StackLang.HolProg 64 :=
.seq AllocBody500_76 AllocBody500_91

def AllocBody500_93 : StackLang.HolProg 64 :=
.seq AllocBody500_75 AllocBody500_92

def AllocBody500_94 : StackLang.HolProg 64 :=
.seq AllocBody500_56 AllocBody500_93

def AllocBody500_95 : StackLang.HolProg 64 :=
.seq AllocBody500_53 AllocBody500_94

def AllocBody500_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody500_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody500_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody500_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody500_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody500_102 : StackLang.HolProg 64 :=
.seq AllocBody500_100 AllocBody500_101

def AllocBody500_103 : StackLang.HolProg 64 :=
.seq AllocBody500_99 AllocBody500_102

def AllocBody500_104 : StackLang.HolProg 64 :=
.seq AllocBody500_98 AllocBody500_103

def AllocBody500_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1564#64)

def AllocBody500_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_108 : StackLang.HolProg 64 :=
.seq AllocBody500_106 AllocBody500_107

def AllocBody500_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 7

def AllocBody500_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_119 : StackLang.HolProg 64 :=
.seq AllocBody500_117 AllocBody500_118

def AllocBody500_120 : StackLang.HolProg 64 :=
.seq AllocBody500_116 AllocBody500_119

def AllocBody500_121 : StackLang.HolProg 64 :=
.seq AllocBody500_115 AllocBody500_120

def AllocBody500_122 : StackLang.HolProg 64 :=
.seq AllocBody500_114 AllocBody500_121

def AllocBody500_123 : StackLang.HolProg 64 :=
.seq AllocBody500_113 AllocBody500_122

def AllocBody500_124 : StackLang.HolProg 64 :=
.seq AllocBody500_112 AllocBody500_123

def AllocBody500_125 : StackLang.HolProg 64 :=
.seq AllocBody500_111 AllocBody500_124

def AllocBody500_126 : StackLang.HolProg 64 :=
.seq AllocBody500_110 AllocBody500_125

def AllocBody500_127 : StackLang.HolProg 64 :=
.seq AllocBody500_109 AllocBody500_126

def AllocBody500_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody500_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody500_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody500_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody500_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody500_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody500_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody500_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody500_142 : StackLang.HolProg 64 :=
.seq AllocBody500_140 AllocBody500_141

def AllocBody500_143 : StackLang.HolProg 64 :=
.seq AllocBody500_139 AllocBody500_142

def AllocBody500_144 : StackLang.HolProg 64 :=
.seq AllocBody500_138 AllocBody500_143

def AllocBody500_145 : StackLang.HolProg 64 :=
.seq AllocBody500_137 AllocBody500_144

def AllocBody500_146 : StackLang.HolProg 64 :=
.seq AllocBody500_136 AllocBody500_145

def AllocBody500_147 : StackLang.HolProg 64 :=
.seq AllocBody500_135 AllocBody500_146

def AllocBody500_148 : StackLang.HolProg 64 :=
.seq AllocBody500_134 AllocBody500_147

def AllocBody500_149 : StackLang.HolProg 64 :=
.seq AllocBody500_133 AllocBody500_148

def AllocBody500_150 : StackLang.HolProg 64 :=
.seq AllocBody500_132 AllocBody500_149

def AllocBody500_151 : StackLang.HolProg 64 :=
.seq AllocBody500_131 AllocBody500_150

def AllocBody500_152 : StackLang.HolProg 64 :=
.seq AllocBody500_130 AllocBody500_151

def AllocBody500_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody500_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody500_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody500_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody500_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody500_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody500_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody500_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody500_161 : StackLang.HolProg 64 :=
.seq AllocBody500_159 AllocBody500_160

def AllocBody500_162 : StackLang.HolProg 64 :=
.seq AllocBody500_158 AllocBody500_161

def AllocBody500_163 : StackLang.HolProg 64 :=
.seq AllocBody500_157 AllocBody500_162

def AllocBody500_164 : StackLang.HolProg 64 :=
.seq AllocBody500_156 AllocBody500_163

def AllocBody500_165 : StackLang.HolProg 64 :=
.seq AllocBody500_155 AllocBody500_164

def AllocBody500_166 : StackLang.HolProg 64 :=
.seq AllocBody500_154 AllocBody500_165

def AllocBody500_167 : StackLang.HolProg 64 :=
.seq AllocBody500_153 AllocBody500_166

def AllocBody500_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_169 : StackLang.HolProg 64 :=
.seq AllocBody500_167 AllocBody500_168

def AllocBody500_170 : StackLang.HolProg 64 :=
.call (some (AllocBody500_152, 0, 500, 6)) (Sum.inl 470) (some (AllocBody500_169, 500, 7))

def AllocBody500_171 : StackLang.HolProg 64 :=
.seq AllocBody500_129 AllocBody500_170

def AllocBody500_172 : StackLang.HolProg 64 :=
.seq AllocBody500_128 AllocBody500_171

def AllocBody500_173 : StackLang.HolProg 64 :=
.seq AllocBody500_127 AllocBody500_172

def AllocBody500_174 : StackLang.HolProg 64 :=
.seq AllocBody500_108 AllocBody500_173

def AllocBody500_175 : StackLang.HolProg 64 :=
.seq AllocBody500_105 AllocBody500_174

def AllocBody500_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody500_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1565#64)

def AllocBody500_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_181 : StackLang.HolProg 64 :=
.seq AllocBody500_179 AllocBody500_180

def AllocBody500_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 9

def AllocBody500_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_192 : StackLang.HolProg 64 :=
.seq AllocBody500_190 AllocBody500_191

def AllocBody500_193 : StackLang.HolProg 64 :=
.seq AllocBody500_189 AllocBody500_192

def AllocBody500_194 : StackLang.HolProg 64 :=
.seq AllocBody500_188 AllocBody500_193

def AllocBody500_195 : StackLang.HolProg 64 :=
.seq AllocBody500_187 AllocBody500_194

def AllocBody500_196 : StackLang.HolProg 64 :=
.seq AllocBody500_186 AllocBody500_195

def AllocBody500_197 : StackLang.HolProg 64 :=
.seq AllocBody500_185 AllocBody500_196

def AllocBody500_198 : StackLang.HolProg 64 :=
.seq AllocBody500_184 AllocBody500_197

def AllocBody500_199 : StackLang.HolProg 64 :=
.seq AllocBody500_183 AllocBody500_198

def AllocBody500_200 : StackLang.HolProg 64 :=
.seq AllocBody500_182 AllocBody500_199

def AllocBody500_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody500_208 : StackLang.HolProg 64 :=
.seq AllocBody500_206 AllocBody500_207

def AllocBody500_209 : StackLang.HolProg 64 :=
.seq AllocBody500_205 AllocBody500_208

def AllocBody500_210 : StackLang.HolProg 64 :=
.seq AllocBody500_204 AllocBody500_209

def AllocBody500_211 : StackLang.HolProg 64 :=
.seq AllocBody500_203 AllocBody500_210

def AllocBody500_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_214 : StackLang.HolProg 64 :=
.seq AllocBody500_212 AllocBody500_213

def AllocBody500_215 : StackLang.HolProg 64 :=
.call (some (AllocBody500_211, 0, 500, 8)) (Sum.inl 130) (some (AllocBody500_214, 500, 9))

def AllocBody500_216 : StackLang.HolProg 64 :=
.seq AllocBody500_202 AllocBody500_215

def AllocBody500_217 : StackLang.HolProg 64 :=
.seq AllocBody500_201 AllocBody500_216

def AllocBody500_218 : StackLang.HolProg 64 :=
.seq AllocBody500_200 AllocBody500_217

def AllocBody500_219 : StackLang.HolProg 64 :=
.seq AllocBody500_181 AllocBody500_218

def AllocBody500_220 : StackLang.HolProg 64 :=
.seq AllocBody500_178 AllocBody500_219

def AllocBody500_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody500_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1566#64)

def AllocBody500_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_226 : StackLang.HolProg 64 :=
.seq AllocBody500_224 AllocBody500_225

def AllocBody500_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 11

def AllocBody500_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_237 : StackLang.HolProg 64 :=
.seq AllocBody500_235 AllocBody500_236

def AllocBody500_238 : StackLang.HolProg 64 :=
.seq AllocBody500_234 AllocBody500_237

def AllocBody500_239 : StackLang.HolProg 64 :=
.seq AllocBody500_233 AllocBody500_238

def AllocBody500_240 : StackLang.HolProg 64 :=
.seq AllocBody500_232 AllocBody500_239

def AllocBody500_241 : StackLang.HolProg 64 :=
.seq AllocBody500_231 AllocBody500_240

def AllocBody500_242 : StackLang.HolProg 64 :=
.seq AllocBody500_230 AllocBody500_241

def AllocBody500_243 : StackLang.HolProg 64 :=
.seq AllocBody500_229 AllocBody500_242

def AllocBody500_244 : StackLang.HolProg 64 :=
.seq AllocBody500_228 AllocBody500_243

def AllocBody500_245 : StackLang.HolProg 64 :=
.seq AllocBody500_227 AllocBody500_244

def AllocBody500_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_253 : StackLang.HolProg 64 :=
.seq AllocBody500_251 AllocBody500_252

def AllocBody500_254 : StackLang.HolProg 64 :=
.seq AllocBody500_250 AllocBody500_253

def AllocBody500_255 : StackLang.HolProg 64 :=
.seq AllocBody500_249 AllocBody500_254

def AllocBody500_256 : StackLang.HolProg 64 :=
.seq AllocBody500_248 AllocBody500_255

def AllocBody500_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_259 : StackLang.HolProg 64 :=
.seq AllocBody500_257 AllocBody500_258

def AllocBody500_260 : StackLang.HolProg 64 :=
.call (some (AllocBody500_256, 0, 500, 10)) (Sum.inl 476) (some (AllocBody500_259, 500, 11))

def AllocBody500_261 : StackLang.HolProg 64 :=
.seq AllocBody500_247 AllocBody500_260

def AllocBody500_262 : StackLang.HolProg 64 :=
.seq AllocBody500_246 AllocBody500_261

def AllocBody500_263 : StackLang.HolProg 64 :=
.seq AllocBody500_245 AllocBody500_262

def AllocBody500_264 : StackLang.HolProg 64 :=
.seq AllocBody500_226 AllocBody500_263

def AllocBody500_265 : StackLang.HolProg 64 :=
.seq AllocBody500_223 AllocBody500_264

def AllocBody500_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody500_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1567#64)

def AllocBody500_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_272 : StackLang.HolProg 64 :=
.seq AllocBody500_270 AllocBody500_271

def AllocBody500_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody500_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody500_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody500_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 13

def AllocBody500_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody500_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody500_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody500_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody500_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_283 : StackLang.HolProg 64 :=
.seq AllocBody500_281 AllocBody500_282

def AllocBody500_284 : StackLang.HolProg 64 :=
.seq AllocBody500_280 AllocBody500_283

def AllocBody500_285 : StackLang.HolProg 64 :=
.seq AllocBody500_279 AllocBody500_284

def AllocBody500_286 : StackLang.HolProg 64 :=
.seq AllocBody500_278 AllocBody500_285

def AllocBody500_287 : StackLang.HolProg 64 :=
.seq AllocBody500_277 AllocBody500_286

def AllocBody500_288 : StackLang.HolProg 64 :=
.seq AllocBody500_276 AllocBody500_287

def AllocBody500_289 : StackLang.HolProg 64 :=
.seq AllocBody500_275 AllocBody500_288

def AllocBody500_290 : StackLang.HolProg 64 :=
.seq AllocBody500_274 AllocBody500_289

def AllocBody500_291 : StackLang.HolProg 64 :=
.seq AllocBody500_273 AllocBody500_290

def AllocBody500_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody500_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody500_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody500_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody500_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody500_299 : StackLang.HolProg 64 :=
.seq AllocBody500_297 AllocBody500_298

def AllocBody500_300 : StackLang.HolProg 64 :=
.seq AllocBody500_296 AllocBody500_299

def AllocBody500_301 : StackLang.HolProg 64 :=
.seq AllocBody500_295 AllocBody500_300

def AllocBody500_302 : StackLang.HolProg 64 :=
.seq AllocBody500_294 AllocBody500_301

def AllocBody500_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody500_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody500_305 : StackLang.HolProg 64 :=
.seq AllocBody500_303 AllocBody500_304

def AllocBody500_306 : StackLang.HolProg 64 :=
.call (some (AllocBody500_302, 0, 500, 12)) (Sum.inl 490) (some (AllocBody500_305, 500, 13))

def AllocBody500_307 : StackLang.HolProg 64 :=
.seq AllocBody500_293 AllocBody500_306

def AllocBody500_308 : StackLang.HolProg 64 :=
.seq AllocBody500_292 AllocBody500_307

def AllocBody500_309 : StackLang.HolProg 64 :=
.seq AllocBody500_291 AllocBody500_308

def AllocBody500_310 : StackLang.HolProg 64 :=
.seq AllocBody500_272 AllocBody500_309

def AllocBody500_311 : StackLang.HolProg 64 :=
.seq AllocBody500_269 AllocBody500_310

def AllocBody500_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody500_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody500_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody500_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody500_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody500_317 : StackLang.HolProg 64 :=
.seq AllocBody500_315 AllocBody500_316

def AllocBody500_318 : StackLang.HolProg 64 :=
.seq AllocBody500_314 AllocBody500_317

def AllocBody500_319 : StackLang.HolProg 64 :=
.seq AllocBody500_313 AllocBody500_318

def AllocBody500_320 : StackLang.HolProg 64 :=
.seq AllocBody500_312 AllocBody500_319

def AllocBody500_321 : StackLang.HolProg 64 :=
.seq AllocBody500_311 AllocBody500_320

def AllocBody500_322 : StackLang.HolProg 64 :=
.seq AllocBody500_268 AllocBody500_321

def AllocBody500_323 : StackLang.HolProg 64 :=
.seq AllocBody500_267 AllocBody500_322

def AllocBody500_324 : StackLang.HolProg 64 :=
.seq AllocBody500_266 AllocBody500_323

def AllocBody500_325 : StackLang.HolProg 64 :=
.seq AllocBody500_265 AllocBody500_324

def AllocBody500_326 : StackLang.HolProg 64 :=
.seq AllocBody500_222 AllocBody500_325

def AllocBody500_327 : StackLang.HolProg 64 :=
.seq AllocBody500_221 AllocBody500_326

def AllocBody500_328 : StackLang.HolProg 64 :=
.seq AllocBody500_220 AllocBody500_327

def AllocBody500_329 : StackLang.HolProg 64 :=
.seq AllocBody500_177 AllocBody500_328

def AllocBody500_330 : StackLang.HolProg 64 :=
.seq AllocBody500_176 AllocBody500_329

def AllocBody500_331 : StackLang.HolProg 64 :=
.seq AllocBody500_175 AllocBody500_330

def AllocBody500_332 : StackLang.HolProg 64 :=
.seq AllocBody500_104 AllocBody500_331

def AllocBody500_333 : StackLang.HolProg 64 :=
.seq AllocBody500_97 AllocBody500_332

def AllocBody500_334 : StackLang.HolProg 64 :=
.seq AllocBody500_96 AllocBody500_333

def AllocBody500_335 : StackLang.HolProg 64 :=
.seq AllocBody500_95 AllocBody500_334

def AllocBody500_336 : StackLang.HolProg 64 :=
.seq AllocBody500_52 AllocBody500_335

def AllocBody500_337 : StackLang.HolProg 64 :=
.seq AllocBody500_45 AllocBody500_336

def AllocBody500_338 : StackLang.HolProg 64 :=
.seq AllocBody500_44 AllocBody500_337

def AllocBody500_339 : StackLang.HolProg 64 :=
.seq AllocBody500_1 AllocBody500_338

def AllocBody500_340 : StackLang.HolProg 64 :=
.seq AllocBody500_0 AllocBody500_339

def Alloc500 : Nat × StackLang.HolProg 64 := (500, AllocBody500_340)
theorem Alloc500_eq : StackAlloc.progComp (500, raw500) = Alloc500 := by
  kernel_rfl
#print axioms Alloc500_eq
end InitECandidate.Proofs.BackendStages
