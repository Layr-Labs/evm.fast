import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw514
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody514_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody514_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody514_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1649#64)

def AllocBody514_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_5 : StackLang.HolProg 64 :=
.seq AllocBody514_3 AllocBody514_4

def AllocBody514_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody514_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody514_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 3

def AllocBody514_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody514_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody514_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody514_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody514_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_16 : StackLang.HolProg 64 :=
.seq AllocBody514_14 AllocBody514_15

def AllocBody514_17 : StackLang.HolProg 64 :=
.seq AllocBody514_13 AllocBody514_16

def AllocBody514_18 : StackLang.HolProg 64 :=
.seq AllocBody514_12 AllocBody514_17

def AllocBody514_19 : StackLang.HolProg 64 :=
.seq AllocBody514_11 AllocBody514_18

def AllocBody514_20 : StackLang.HolProg 64 :=
.seq AllocBody514_10 AllocBody514_19

def AllocBody514_21 : StackLang.HolProg 64 :=
.seq AllocBody514_9 AllocBody514_20

def AllocBody514_22 : StackLang.HolProg 64 :=
.seq AllocBody514_8 AllocBody514_21

def AllocBody514_23 : StackLang.HolProg 64 :=
.seq AllocBody514_7 AllocBody514_22

def AllocBody514_24 : StackLang.HolProg 64 :=
.seq AllocBody514_6 AllocBody514_23

def AllocBody514_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody514_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody514_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody514_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody514_32 : StackLang.HolProg 64 :=
.seq AllocBody514_30 AllocBody514_31

def AllocBody514_33 : StackLang.HolProg 64 :=
.seq AllocBody514_29 AllocBody514_32

def AllocBody514_34 : StackLang.HolProg 64 :=
.seq AllocBody514_28 AllocBody514_33

def AllocBody514_35 : StackLang.HolProg 64 :=
.seq AllocBody514_27 AllocBody514_34

def AllocBody514_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody514_38 : StackLang.HolProg 64 :=
.seq AllocBody514_36 AllocBody514_37

def AllocBody514_39 : StackLang.HolProg 64 :=
.call (some (AllocBody514_35, 0, 514, 2)) (Sum.inl 475) (some (AllocBody514_38, 514, 3))

def AllocBody514_40 : StackLang.HolProg 64 :=
.seq AllocBody514_26 AllocBody514_39

def AllocBody514_41 : StackLang.HolProg 64 :=
.seq AllocBody514_25 AllocBody514_40

def AllocBody514_42 : StackLang.HolProg 64 :=
.seq AllocBody514_24 AllocBody514_41

def AllocBody514_43 : StackLang.HolProg 64 :=
.seq AllocBody514_5 AllocBody514_42

def AllocBody514_44 : StackLang.HolProg 64 :=
.seq AllocBody514_2 AllocBody514_43

def AllocBody514_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody514_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody514_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody514_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody514_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody514_50 : StackLang.HolProg 64 :=
.seq AllocBody514_48 AllocBody514_49

def AllocBody514_51 : StackLang.HolProg 64 :=
.seq AllocBody514_47 AllocBody514_50

def AllocBody514_52 : StackLang.HolProg 64 :=
.seq AllocBody514_46 AllocBody514_51

def AllocBody514_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1650#64)

def AllocBody514_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_56 : StackLang.HolProg 64 :=
.seq AllocBody514_54 AllocBody514_55

def AllocBody514_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody514_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody514_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 5

def AllocBody514_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody514_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody514_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody514_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody514_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_67 : StackLang.HolProg 64 :=
.seq AllocBody514_65 AllocBody514_66

def AllocBody514_68 : StackLang.HolProg 64 :=
.seq AllocBody514_64 AllocBody514_67

def AllocBody514_69 : StackLang.HolProg 64 :=
.seq AllocBody514_63 AllocBody514_68

def AllocBody514_70 : StackLang.HolProg 64 :=
.seq AllocBody514_62 AllocBody514_69

def AllocBody514_71 : StackLang.HolProg 64 :=
.seq AllocBody514_61 AllocBody514_70

def AllocBody514_72 : StackLang.HolProg 64 :=
.seq AllocBody514_60 AllocBody514_71

def AllocBody514_73 : StackLang.HolProg 64 :=
.seq AllocBody514_59 AllocBody514_72

def AllocBody514_74 : StackLang.HolProg 64 :=
.seq AllocBody514_58 AllocBody514_73

def AllocBody514_75 : StackLang.HolProg 64 :=
.seq AllocBody514_57 AllocBody514_74

def AllocBody514_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody514_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody514_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody514_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody514_83 : StackLang.HolProg 64 :=
.seq AllocBody514_81 AllocBody514_82

def AllocBody514_84 : StackLang.HolProg 64 :=
.seq AllocBody514_80 AllocBody514_83

def AllocBody514_85 : StackLang.HolProg 64 :=
.seq AllocBody514_79 AllocBody514_84

def AllocBody514_86 : StackLang.HolProg 64 :=
.seq AllocBody514_78 AllocBody514_85

def AllocBody514_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody514_89 : StackLang.HolProg 64 :=
.seq AllocBody514_87 AllocBody514_88

def AllocBody514_90 : StackLang.HolProg 64 :=
.call (some (AllocBody514_86, 0, 514, 4)) (Sum.inl 475) (some (AllocBody514_89, 514, 5))

def AllocBody514_91 : StackLang.HolProg 64 :=
.seq AllocBody514_77 AllocBody514_90

def AllocBody514_92 : StackLang.HolProg 64 :=
.seq AllocBody514_76 AllocBody514_91

def AllocBody514_93 : StackLang.HolProg 64 :=
.seq AllocBody514_75 AllocBody514_92

def AllocBody514_94 : StackLang.HolProg 64 :=
.seq AllocBody514_56 AllocBody514_93

def AllocBody514_95 : StackLang.HolProg 64 :=
.seq AllocBody514_53 AllocBody514_94

def AllocBody514_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody514_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody514_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody514_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody514_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody514_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody514_102 : StackLang.HolProg 64 :=
.seq AllocBody514_100 AllocBody514_101

def AllocBody514_103 : StackLang.HolProg 64 :=
.seq AllocBody514_99 AllocBody514_102

def AllocBody514_104 : StackLang.HolProg 64 :=
.seq AllocBody514_98 AllocBody514_103

def AllocBody514_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1651#64)

def AllocBody514_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_108 : StackLang.HolProg 64 :=
.seq AllocBody514_106 AllocBody514_107

def AllocBody514_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody514_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody514_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 7

def AllocBody514_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody514_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody514_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody514_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody514_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_119 : StackLang.HolProg 64 :=
.seq AllocBody514_117 AllocBody514_118

def AllocBody514_120 : StackLang.HolProg 64 :=
.seq AllocBody514_116 AllocBody514_119

def AllocBody514_121 : StackLang.HolProg 64 :=
.seq AllocBody514_115 AllocBody514_120

def AllocBody514_122 : StackLang.HolProg 64 :=
.seq AllocBody514_114 AllocBody514_121

def AllocBody514_123 : StackLang.HolProg 64 :=
.seq AllocBody514_113 AllocBody514_122

def AllocBody514_124 : StackLang.HolProg 64 :=
.seq AllocBody514_112 AllocBody514_123

def AllocBody514_125 : StackLang.HolProg 64 :=
.seq AllocBody514_111 AllocBody514_124

def AllocBody514_126 : StackLang.HolProg 64 :=
.seq AllocBody514_110 AllocBody514_125

def AllocBody514_127 : StackLang.HolProg 64 :=
.seq AllocBody514_109 AllocBody514_126

def AllocBody514_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody514_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody514_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody514_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody514_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody514_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody514_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody514_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody514_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody514_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody514_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody514_142 : StackLang.HolProg 64 :=
.seq AllocBody514_140 AllocBody514_141

def AllocBody514_143 : StackLang.HolProg 64 :=
.seq AllocBody514_139 AllocBody514_142

def AllocBody514_144 : StackLang.HolProg 64 :=
.seq AllocBody514_138 AllocBody514_143

def AllocBody514_145 : StackLang.HolProg 64 :=
.seq AllocBody514_137 AllocBody514_144

def AllocBody514_146 : StackLang.HolProg 64 :=
.seq AllocBody514_136 AllocBody514_145

def AllocBody514_147 : StackLang.HolProg 64 :=
.seq AllocBody514_135 AllocBody514_146

def AllocBody514_148 : StackLang.HolProg 64 :=
.seq AllocBody514_134 AllocBody514_147

def AllocBody514_149 : StackLang.HolProg 64 :=
.seq AllocBody514_133 AllocBody514_148

def AllocBody514_150 : StackLang.HolProg 64 :=
.seq AllocBody514_132 AllocBody514_149

def AllocBody514_151 : StackLang.HolProg 64 :=
.seq AllocBody514_131 AllocBody514_150

def AllocBody514_152 : StackLang.HolProg 64 :=
.seq AllocBody514_130 AllocBody514_151

def AllocBody514_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody514_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody514_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody514_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody514_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody514_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody514_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody514_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody514_161 : StackLang.HolProg 64 :=
.seq AllocBody514_159 AllocBody514_160

def AllocBody514_162 : StackLang.HolProg 64 :=
.seq AllocBody514_158 AllocBody514_161

def AllocBody514_163 : StackLang.HolProg 64 :=
.seq AllocBody514_157 AllocBody514_162

def AllocBody514_164 : StackLang.HolProg 64 :=
.seq AllocBody514_156 AllocBody514_163

def AllocBody514_165 : StackLang.HolProg 64 :=
.seq AllocBody514_155 AllocBody514_164

def AllocBody514_166 : StackLang.HolProg 64 :=
.seq AllocBody514_154 AllocBody514_165

def AllocBody514_167 : StackLang.HolProg 64 :=
.seq AllocBody514_153 AllocBody514_166

def AllocBody514_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody514_169 : StackLang.HolProg 64 :=
.seq AllocBody514_167 AllocBody514_168

def AllocBody514_170 : StackLang.HolProg 64 :=
.call (some (AllocBody514_152, 0, 514, 6)) (Sum.inl 470) (some (AllocBody514_169, 514, 7))

def AllocBody514_171 : StackLang.HolProg 64 :=
.seq AllocBody514_129 AllocBody514_170

def AllocBody514_172 : StackLang.HolProg 64 :=
.seq AllocBody514_128 AllocBody514_171

def AllocBody514_173 : StackLang.HolProg 64 :=
.seq AllocBody514_127 AllocBody514_172

def AllocBody514_174 : StackLang.HolProg 64 :=
.seq AllocBody514_108 AllocBody514_173

def AllocBody514_175 : StackLang.HolProg 64 :=
.seq AllocBody514_105 AllocBody514_174

def AllocBody514_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody514_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody514_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody514_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody514_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody514_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1652#64)

def AllocBody514_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_189 : StackLang.HolProg 64 :=
.seq AllocBody514_187 AllocBody514_188

def AllocBody514_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody514_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody514_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 9

def AllocBody514_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody514_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody514_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody514_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody514_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_200 : StackLang.HolProg 64 :=
.seq AllocBody514_198 AllocBody514_199

def AllocBody514_201 : StackLang.HolProg 64 :=
.seq AllocBody514_197 AllocBody514_200

def AllocBody514_202 : StackLang.HolProg 64 :=
.seq AllocBody514_196 AllocBody514_201

def AllocBody514_203 : StackLang.HolProg 64 :=
.seq AllocBody514_195 AllocBody514_202

def AllocBody514_204 : StackLang.HolProg 64 :=
.seq AllocBody514_194 AllocBody514_203

def AllocBody514_205 : StackLang.HolProg 64 :=
.seq AllocBody514_193 AllocBody514_204

def AllocBody514_206 : StackLang.HolProg 64 :=
.seq AllocBody514_192 AllocBody514_205

def AllocBody514_207 : StackLang.HolProg 64 :=
.seq AllocBody514_191 AllocBody514_206

def AllocBody514_208 : StackLang.HolProg 64 :=
.seq AllocBody514_190 AllocBody514_207

def AllocBody514_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody514_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody514_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody514_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_216 : StackLang.HolProg 64 :=
.seq AllocBody514_214 AllocBody514_215

def AllocBody514_217 : StackLang.HolProg 64 :=
.seq AllocBody514_213 AllocBody514_216

def AllocBody514_218 : StackLang.HolProg 64 :=
.seq AllocBody514_212 AllocBody514_217

def AllocBody514_219 : StackLang.HolProg 64 :=
.seq AllocBody514_211 AllocBody514_218

def AllocBody514_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody514_222 : StackLang.HolProg 64 :=
.seq AllocBody514_220 AllocBody514_221

def AllocBody514_223 : StackLang.HolProg 64 :=
.call (some (AllocBody514_219, 0, 514, 8)) (Sum.inl 476) (some (AllocBody514_222, 514, 9))

def AllocBody514_224 : StackLang.HolProg 64 :=
.seq AllocBody514_210 AllocBody514_223

def AllocBody514_225 : StackLang.HolProg 64 :=
.seq AllocBody514_209 AllocBody514_224

def AllocBody514_226 : StackLang.HolProg 64 :=
.seq AllocBody514_208 AllocBody514_225

def AllocBody514_227 : StackLang.HolProg 64 :=
.seq AllocBody514_189 AllocBody514_226

def AllocBody514_228 : StackLang.HolProg 64 :=
.seq AllocBody514_186 AllocBody514_227

def AllocBody514_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody514_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody514_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1653#64)

def AllocBody514_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_235 : StackLang.HolProg 64 :=
.seq AllocBody514_233 AllocBody514_234

def AllocBody514_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody514_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody514_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody514_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 11

def AllocBody514_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody514_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody514_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody514_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody514_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_246 : StackLang.HolProg 64 :=
.seq AllocBody514_244 AllocBody514_245

def AllocBody514_247 : StackLang.HolProg 64 :=
.seq AllocBody514_243 AllocBody514_246

def AllocBody514_248 : StackLang.HolProg 64 :=
.seq AllocBody514_242 AllocBody514_247

def AllocBody514_249 : StackLang.HolProg 64 :=
.seq AllocBody514_241 AllocBody514_248

def AllocBody514_250 : StackLang.HolProg 64 :=
.seq AllocBody514_240 AllocBody514_249

def AllocBody514_251 : StackLang.HolProg 64 :=
.seq AllocBody514_239 AllocBody514_250

def AllocBody514_252 : StackLang.HolProg 64 :=
.seq AllocBody514_238 AllocBody514_251

def AllocBody514_253 : StackLang.HolProg 64 :=
.seq AllocBody514_237 AllocBody514_252

def AllocBody514_254 : StackLang.HolProg 64 :=
.seq AllocBody514_236 AllocBody514_253

def AllocBody514_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody514_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody514_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody514_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody514_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody514_262 : StackLang.HolProg 64 :=
.seq AllocBody514_260 AllocBody514_261

def AllocBody514_263 : StackLang.HolProg 64 :=
.seq AllocBody514_259 AllocBody514_262

def AllocBody514_264 : StackLang.HolProg 64 :=
.seq AllocBody514_258 AllocBody514_263

def AllocBody514_265 : StackLang.HolProg 64 :=
.seq AllocBody514_257 AllocBody514_264

def AllocBody514_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody514_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody514_268 : StackLang.HolProg 64 :=
.seq AllocBody514_266 AllocBody514_267

def AllocBody514_269 : StackLang.HolProg 64 :=
.call (some (AllocBody514_265, 0, 514, 10)) (Sum.inl 490) (some (AllocBody514_268, 514, 11))

def AllocBody514_270 : StackLang.HolProg 64 :=
.seq AllocBody514_256 AllocBody514_269

def AllocBody514_271 : StackLang.HolProg 64 :=
.seq AllocBody514_255 AllocBody514_270

def AllocBody514_272 : StackLang.HolProg 64 :=
.seq AllocBody514_254 AllocBody514_271

def AllocBody514_273 : StackLang.HolProg 64 :=
.seq AllocBody514_235 AllocBody514_272

def AllocBody514_274 : StackLang.HolProg 64 :=
.seq AllocBody514_232 AllocBody514_273

def AllocBody514_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody514_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody514_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody514_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody514_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody514_280 : StackLang.HolProg 64 :=
.seq AllocBody514_278 AllocBody514_279

def AllocBody514_281 : StackLang.HolProg 64 :=
.seq AllocBody514_277 AllocBody514_280

def AllocBody514_282 : StackLang.HolProg 64 :=
.seq AllocBody514_276 AllocBody514_281

def AllocBody514_283 : StackLang.HolProg 64 :=
.seq AllocBody514_275 AllocBody514_282

def AllocBody514_284 : StackLang.HolProg 64 :=
.seq AllocBody514_274 AllocBody514_283

def AllocBody514_285 : StackLang.HolProg 64 :=
.seq AllocBody514_231 AllocBody514_284

def AllocBody514_286 : StackLang.HolProg 64 :=
.seq AllocBody514_230 AllocBody514_285

def AllocBody514_287 : StackLang.HolProg 64 :=
.seq AllocBody514_229 AllocBody514_286

def AllocBody514_288 : StackLang.HolProg 64 :=
.seq AllocBody514_228 AllocBody514_287

def AllocBody514_289 : StackLang.HolProg 64 :=
.seq AllocBody514_185 AllocBody514_288

def AllocBody514_290 : StackLang.HolProg 64 :=
.seq AllocBody514_184 AllocBody514_289

def AllocBody514_291 : StackLang.HolProg 64 :=
.seq AllocBody514_183 AllocBody514_290

def AllocBody514_292 : StackLang.HolProg 64 :=
.seq AllocBody514_182 AllocBody514_291

def AllocBody514_293 : StackLang.HolProg 64 :=
.seq AllocBody514_181 AllocBody514_292

def AllocBody514_294 : StackLang.HolProg 64 :=
.seq AllocBody514_180 AllocBody514_293

def AllocBody514_295 : StackLang.HolProg 64 :=
.seq AllocBody514_179 AllocBody514_294

def AllocBody514_296 : StackLang.HolProg 64 :=
.seq AllocBody514_178 AllocBody514_295

def AllocBody514_297 : StackLang.HolProg 64 :=
.seq AllocBody514_177 AllocBody514_296

def AllocBody514_298 : StackLang.HolProg 64 :=
.seq AllocBody514_176 AllocBody514_297

def AllocBody514_299 : StackLang.HolProg 64 :=
.seq AllocBody514_175 AllocBody514_298

def AllocBody514_300 : StackLang.HolProg 64 :=
.seq AllocBody514_104 AllocBody514_299

def AllocBody514_301 : StackLang.HolProg 64 :=
.seq AllocBody514_97 AllocBody514_300

def AllocBody514_302 : StackLang.HolProg 64 :=
.seq AllocBody514_96 AllocBody514_301

def AllocBody514_303 : StackLang.HolProg 64 :=
.seq AllocBody514_95 AllocBody514_302

def AllocBody514_304 : StackLang.HolProg 64 :=
.seq AllocBody514_52 AllocBody514_303

def AllocBody514_305 : StackLang.HolProg 64 :=
.seq AllocBody514_45 AllocBody514_304

def AllocBody514_306 : StackLang.HolProg 64 :=
.seq AllocBody514_44 AllocBody514_305

def AllocBody514_307 : StackLang.HolProg 64 :=
.seq AllocBody514_1 AllocBody514_306

def AllocBody514_308 : StackLang.HolProg 64 :=
.seq AllocBody514_0 AllocBody514_307

def Alloc514 : Nat × StackLang.HolProg 64 := (514, AllocBody514_308)
theorem Alloc514_eq : StackAlloc.progComp (514, raw514) = Alloc514 := by
  kernel_rfl
#print axioms Alloc514_eq
end InitECandidate.Proofs.BackendStages
