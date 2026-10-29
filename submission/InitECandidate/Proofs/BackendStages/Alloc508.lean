import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw508
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody508_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody508_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody508_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1614#64)

def AllocBody508_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_5 : StackLang.HolProg 64 :=
.seq AllocBody508_3 AllocBody508_4

def AllocBody508_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 3

def AllocBody508_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_16 : StackLang.HolProg 64 :=
.seq AllocBody508_14 AllocBody508_15

def AllocBody508_17 : StackLang.HolProg 64 :=
.seq AllocBody508_13 AllocBody508_16

def AllocBody508_18 : StackLang.HolProg 64 :=
.seq AllocBody508_12 AllocBody508_17

def AllocBody508_19 : StackLang.HolProg 64 :=
.seq AllocBody508_11 AllocBody508_18

def AllocBody508_20 : StackLang.HolProg 64 :=
.seq AllocBody508_10 AllocBody508_19

def AllocBody508_21 : StackLang.HolProg 64 :=
.seq AllocBody508_9 AllocBody508_20

def AllocBody508_22 : StackLang.HolProg 64 :=
.seq AllocBody508_8 AllocBody508_21

def AllocBody508_23 : StackLang.HolProg 64 :=
.seq AllocBody508_7 AllocBody508_22

def AllocBody508_24 : StackLang.HolProg 64 :=
.seq AllocBody508_6 AllocBody508_23

def AllocBody508_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody508_32 : StackLang.HolProg 64 :=
.seq AllocBody508_30 AllocBody508_31

def AllocBody508_33 : StackLang.HolProg 64 :=
.seq AllocBody508_29 AllocBody508_32

def AllocBody508_34 : StackLang.HolProg 64 :=
.seq AllocBody508_28 AllocBody508_33

def AllocBody508_35 : StackLang.HolProg 64 :=
.seq AllocBody508_27 AllocBody508_34

def AllocBody508_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_38 : StackLang.HolProg 64 :=
.seq AllocBody508_36 AllocBody508_37

def AllocBody508_39 : StackLang.HolProg 64 :=
.call (some (AllocBody508_35, 0, 508, 2)) (Sum.inl 475) (some (AllocBody508_38, 508, 3))

def AllocBody508_40 : StackLang.HolProg 64 :=
.seq AllocBody508_26 AllocBody508_39

def AllocBody508_41 : StackLang.HolProg 64 :=
.seq AllocBody508_25 AllocBody508_40

def AllocBody508_42 : StackLang.HolProg 64 :=
.seq AllocBody508_24 AllocBody508_41

def AllocBody508_43 : StackLang.HolProg 64 :=
.seq AllocBody508_5 AllocBody508_42

def AllocBody508_44 : StackLang.HolProg 64 :=
.seq AllocBody508_2 AllocBody508_43

def AllocBody508_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody508_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody508_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody508_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody508_50 : StackLang.HolProg 64 :=
.seq AllocBody508_48 AllocBody508_49

def AllocBody508_51 : StackLang.HolProg 64 :=
.seq AllocBody508_47 AllocBody508_50

def AllocBody508_52 : StackLang.HolProg 64 :=
.seq AllocBody508_46 AllocBody508_51

def AllocBody508_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1615#64)

def AllocBody508_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_56 : StackLang.HolProg 64 :=
.seq AllocBody508_54 AllocBody508_55

def AllocBody508_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 5

def AllocBody508_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_67 : StackLang.HolProg 64 :=
.seq AllocBody508_65 AllocBody508_66

def AllocBody508_68 : StackLang.HolProg 64 :=
.seq AllocBody508_64 AllocBody508_67

def AllocBody508_69 : StackLang.HolProg 64 :=
.seq AllocBody508_63 AllocBody508_68

def AllocBody508_70 : StackLang.HolProg 64 :=
.seq AllocBody508_62 AllocBody508_69

def AllocBody508_71 : StackLang.HolProg 64 :=
.seq AllocBody508_61 AllocBody508_70

def AllocBody508_72 : StackLang.HolProg 64 :=
.seq AllocBody508_60 AllocBody508_71

def AllocBody508_73 : StackLang.HolProg 64 :=
.seq AllocBody508_59 AllocBody508_72

def AllocBody508_74 : StackLang.HolProg 64 :=
.seq AllocBody508_58 AllocBody508_73

def AllocBody508_75 : StackLang.HolProg 64 :=
.seq AllocBody508_57 AllocBody508_74

def AllocBody508_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody508_83 : StackLang.HolProg 64 :=
.seq AllocBody508_81 AllocBody508_82

def AllocBody508_84 : StackLang.HolProg 64 :=
.seq AllocBody508_80 AllocBody508_83

def AllocBody508_85 : StackLang.HolProg 64 :=
.seq AllocBody508_79 AllocBody508_84

def AllocBody508_86 : StackLang.HolProg 64 :=
.seq AllocBody508_78 AllocBody508_85

def AllocBody508_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_89 : StackLang.HolProg 64 :=
.seq AllocBody508_87 AllocBody508_88

def AllocBody508_90 : StackLang.HolProg 64 :=
.call (some (AllocBody508_86, 0, 508, 4)) (Sum.inl 475) (some (AllocBody508_89, 508, 5))

def AllocBody508_91 : StackLang.HolProg 64 :=
.seq AllocBody508_77 AllocBody508_90

def AllocBody508_92 : StackLang.HolProg 64 :=
.seq AllocBody508_76 AllocBody508_91

def AllocBody508_93 : StackLang.HolProg 64 :=
.seq AllocBody508_75 AllocBody508_92

def AllocBody508_94 : StackLang.HolProg 64 :=
.seq AllocBody508_56 AllocBody508_93

def AllocBody508_95 : StackLang.HolProg 64 :=
.seq AllocBody508_53 AllocBody508_94

def AllocBody508_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody508_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody508_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody508_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody508_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody508_102 : StackLang.HolProg 64 :=
.seq AllocBody508_100 AllocBody508_101

def AllocBody508_103 : StackLang.HolProg 64 :=
.seq AllocBody508_99 AllocBody508_102

def AllocBody508_104 : StackLang.HolProg 64 :=
.seq AllocBody508_98 AllocBody508_103

def AllocBody508_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1616#64)

def AllocBody508_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_108 : StackLang.HolProg 64 :=
.seq AllocBody508_106 AllocBody508_107

def AllocBody508_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 7

def AllocBody508_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_119 : StackLang.HolProg 64 :=
.seq AllocBody508_117 AllocBody508_118

def AllocBody508_120 : StackLang.HolProg 64 :=
.seq AllocBody508_116 AllocBody508_119

def AllocBody508_121 : StackLang.HolProg 64 :=
.seq AllocBody508_115 AllocBody508_120

def AllocBody508_122 : StackLang.HolProg 64 :=
.seq AllocBody508_114 AllocBody508_121

def AllocBody508_123 : StackLang.HolProg 64 :=
.seq AllocBody508_113 AllocBody508_122

def AllocBody508_124 : StackLang.HolProg 64 :=
.seq AllocBody508_112 AllocBody508_123

def AllocBody508_125 : StackLang.HolProg 64 :=
.seq AllocBody508_111 AllocBody508_124

def AllocBody508_126 : StackLang.HolProg 64 :=
.seq AllocBody508_110 AllocBody508_125

def AllocBody508_127 : StackLang.HolProg 64 :=
.seq AllocBody508_109 AllocBody508_126

def AllocBody508_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody508_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody508_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody508_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody508_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody508_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody508_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody508_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody508_142 : StackLang.HolProg 64 :=
.seq AllocBody508_140 AllocBody508_141

def AllocBody508_143 : StackLang.HolProg 64 :=
.seq AllocBody508_139 AllocBody508_142

def AllocBody508_144 : StackLang.HolProg 64 :=
.seq AllocBody508_138 AllocBody508_143

def AllocBody508_145 : StackLang.HolProg 64 :=
.seq AllocBody508_137 AllocBody508_144

def AllocBody508_146 : StackLang.HolProg 64 :=
.seq AllocBody508_136 AllocBody508_145

def AllocBody508_147 : StackLang.HolProg 64 :=
.seq AllocBody508_135 AllocBody508_146

def AllocBody508_148 : StackLang.HolProg 64 :=
.seq AllocBody508_134 AllocBody508_147

def AllocBody508_149 : StackLang.HolProg 64 :=
.seq AllocBody508_133 AllocBody508_148

def AllocBody508_150 : StackLang.HolProg 64 :=
.seq AllocBody508_132 AllocBody508_149

def AllocBody508_151 : StackLang.HolProg 64 :=
.seq AllocBody508_131 AllocBody508_150

def AllocBody508_152 : StackLang.HolProg 64 :=
.seq AllocBody508_130 AllocBody508_151

def AllocBody508_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody508_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody508_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody508_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody508_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody508_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody508_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody508_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody508_161 : StackLang.HolProg 64 :=
.seq AllocBody508_159 AllocBody508_160

def AllocBody508_162 : StackLang.HolProg 64 :=
.seq AllocBody508_158 AllocBody508_161

def AllocBody508_163 : StackLang.HolProg 64 :=
.seq AllocBody508_157 AllocBody508_162

def AllocBody508_164 : StackLang.HolProg 64 :=
.seq AllocBody508_156 AllocBody508_163

def AllocBody508_165 : StackLang.HolProg 64 :=
.seq AllocBody508_155 AllocBody508_164

def AllocBody508_166 : StackLang.HolProg 64 :=
.seq AllocBody508_154 AllocBody508_165

def AllocBody508_167 : StackLang.HolProg 64 :=
.seq AllocBody508_153 AllocBody508_166

def AllocBody508_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_169 : StackLang.HolProg 64 :=
.seq AllocBody508_167 AllocBody508_168

def AllocBody508_170 : StackLang.HolProg 64 :=
.call (some (AllocBody508_152, 0, 508, 6)) (Sum.inl 470) (some (AllocBody508_169, 508, 7))

def AllocBody508_171 : StackLang.HolProg 64 :=
.seq AllocBody508_129 AllocBody508_170

def AllocBody508_172 : StackLang.HolProg 64 :=
.seq AllocBody508_128 AllocBody508_171

def AllocBody508_173 : StackLang.HolProg 64 :=
.seq AllocBody508_127 AllocBody508_172

def AllocBody508_174 : StackLang.HolProg 64 :=
.seq AllocBody508_108 AllocBody508_173

def AllocBody508_175 : StackLang.HolProg 64 :=
.seq AllocBody508_105 AllocBody508_174

def AllocBody508_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody508_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1617#64)

def AllocBody508_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_181 : StackLang.HolProg 64 :=
.seq AllocBody508_179 AllocBody508_180

def AllocBody508_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 9

def AllocBody508_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_192 : StackLang.HolProg 64 :=
.seq AllocBody508_190 AllocBody508_191

def AllocBody508_193 : StackLang.HolProg 64 :=
.seq AllocBody508_189 AllocBody508_192

def AllocBody508_194 : StackLang.HolProg 64 :=
.seq AllocBody508_188 AllocBody508_193

def AllocBody508_195 : StackLang.HolProg 64 :=
.seq AllocBody508_187 AllocBody508_194

def AllocBody508_196 : StackLang.HolProg 64 :=
.seq AllocBody508_186 AllocBody508_195

def AllocBody508_197 : StackLang.HolProg 64 :=
.seq AllocBody508_185 AllocBody508_196

def AllocBody508_198 : StackLang.HolProg 64 :=
.seq AllocBody508_184 AllocBody508_197

def AllocBody508_199 : StackLang.HolProg 64 :=
.seq AllocBody508_183 AllocBody508_198

def AllocBody508_200 : StackLang.HolProg 64 :=
.seq AllocBody508_182 AllocBody508_199

def AllocBody508_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody508_208 : StackLang.HolProg 64 :=
.seq AllocBody508_206 AllocBody508_207

def AllocBody508_209 : StackLang.HolProg 64 :=
.seq AllocBody508_205 AllocBody508_208

def AllocBody508_210 : StackLang.HolProg 64 :=
.seq AllocBody508_204 AllocBody508_209

def AllocBody508_211 : StackLang.HolProg 64 :=
.seq AllocBody508_203 AllocBody508_210

def AllocBody508_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_214 : StackLang.HolProg 64 :=
.seq AllocBody508_212 AllocBody508_213

def AllocBody508_215 : StackLang.HolProg 64 :=
.call (some (AllocBody508_211, 0, 508, 8)) (Sum.inl 106) (some (AllocBody508_214, 508, 9))

def AllocBody508_216 : StackLang.HolProg 64 :=
.seq AllocBody508_202 AllocBody508_215

def AllocBody508_217 : StackLang.HolProg 64 :=
.seq AllocBody508_201 AllocBody508_216

def AllocBody508_218 : StackLang.HolProg 64 :=
.seq AllocBody508_200 AllocBody508_217

def AllocBody508_219 : StackLang.HolProg 64 :=
.seq AllocBody508_181 AllocBody508_218

def AllocBody508_220 : StackLang.HolProg 64 :=
.seq AllocBody508_178 AllocBody508_219

def AllocBody508_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody508_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1618#64)

def AllocBody508_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_226 : StackLang.HolProg 64 :=
.seq AllocBody508_224 AllocBody508_225

def AllocBody508_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 11

def AllocBody508_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_237 : StackLang.HolProg 64 :=
.seq AllocBody508_235 AllocBody508_236

def AllocBody508_238 : StackLang.HolProg 64 :=
.seq AllocBody508_234 AllocBody508_237

def AllocBody508_239 : StackLang.HolProg 64 :=
.seq AllocBody508_233 AllocBody508_238

def AllocBody508_240 : StackLang.HolProg 64 :=
.seq AllocBody508_232 AllocBody508_239

def AllocBody508_241 : StackLang.HolProg 64 :=
.seq AllocBody508_231 AllocBody508_240

def AllocBody508_242 : StackLang.HolProg 64 :=
.seq AllocBody508_230 AllocBody508_241

def AllocBody508_243 : StackLang.HolProg 64 :=
.seq AllocBody508_229 AllocBody508_242

def AllocBody508_244 : StackLang.HolProg 64 :=
.seq AllocBody508_228 AllocBody508_243

def AllocBody508_245 : StackLang.HolProg 64 :=
.seq AllocBody508_227 AllocBody508_244

def AllocBody508_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_253 : StackLang.HolProg 64 :=
.seq AllocBody508_251 AllocBody508_252

def AllocBody508_254 : StackLang.HolProg 64 :=
.seq AllocBody508_250 AllocBody508_253

def AllocBody508_255 : StackLang.HolProg 64 :=
.seq AllocBody508_249 AllocBody508_254

def AllocBody508_256 : StackLang.HolProg 64 :=
.seq AllocBody508_248 AllocBody508_255

def AllocBody508_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_259 : StackLang.HolProg 64 :=
.seq AllocBody508_257 AllocBody508_258

def AllocBody508_260 : StackLang.HolProg 64 :=
.call (some (AllocBody508_256, 0, 508, 10)) (Sum.inl 478) (some (AllocBody508_259, 508, 11))

def AllocBody508_261 : StackLang.HolProg 64 :=
.seq AllocBody508_247 AllocBody508_260

def AllocBody508_262 : StackLang.HolProg 64 :=
.seq AllocBody508_246 AllocBody508_261

def AllocBody508_263 : StackLang.HolProg 64 :=
.seq AllocBody508_245 AllocBody508_262

def AllocBody508_264 : StackLang.HolProg 64 :=
.seq AllocBody508_226 AllocBody508_263

def AllocBody508_265 : StackLang.HolProg 64 :=
.seq AllocBody508_223 AllocBody508_264

def AllocBody508_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody508_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1619#64)

def AllocBody508_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_272 : StackLang.HolProg 64 :=
.seq AllocBody508_270 AllocBody508_271

def AllocBody508_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody508_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody508_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody508_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 13

def AllocBody508_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody508_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody508_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody508_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody508_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_283 : StackLang.HolProg 64 :=
.seq AllocBody508_281 AllocBody508_282

def AllocBody508_284 : StackLang.HolProg 64 :=
.seq AllocBody508_280 AllocBody508_283

def AllocBody508_285 : StackLang.HolProg 64 :=
.seq AllocBody508_279 AllocBody508_284

def AllocBody508_286 : StackLang.HolProg 64 :=
.seq AllocBody508_278 AllocBody508_285

def AllocBody508_287 : StackLang.HolProg 64 :=
.seq AllocBody508_277 AllocBody508_286

def AllocBody508_288 : StackLang.HolProg 64 :=
.seq AllocBody508_276 AllocBody508_287

def AllocBody508_289 : StackLang.HolProg 64 :=
.seq AllocBody508_275 AllocBody508_288

def AllocBody508_290 : StackLang.HolProg 64 :=
.seq AllocBody508_274 AllocBody508_289

def AllocBody508_291 : StackLang.HolProg 64 :=
.seq AllocBody508_273 AllocBody508_290

def AllocBody508_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody508_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody508_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody508_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody508_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody508_299 : StackLang.HolProg 64 :=
.seq AllocBody508_297 AllocBody508_298

def AllocBody508_300 : StackLang.HolProg 64 :=
.seq AllocBody508_296 AllocBody508_299

def AllocBody508_301 : StackLang.HolProg 64 :=
.seq AllocBody508_295 AllocBody508_300

def AllocBody508_302 : StackLang.HolProg 64 :=
.seq AllocBody508_294 AllocBody508_301

def AllocBody508_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody508_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody508_305 : StackLang.HolProg 64 :=
.seq AllocBody508_303 AllocBody508_304

def AllocBody508_306 : StackLang.HolProg 64 :=
.call (some (AllocBody508_302, 0, 508, 12)) (Sum.inl 490) (some (AllocBody508_305, 508, 13))

def AllocBody508_307 : StackLang.HolProg 64 :=
.seq AllocBody508_293 AllocBody508_306

def AllocBody508_308 : StackLang.HolProg 64 :=
.seq AllocBody508_292 AllocBody508_307

def AllocBody508_309 : StackLang.HolProg 64 :=
.seq AllocBody508_291 AllocBody508_308

def AllocBody508_310 : StackLang.HolProg 64 :=
.seq AllocBody508_272 AllocBody508_309

def AllocBody508_311 : StackLang.HolProg 64 :=
.seq AllocBody508_269 AllocBody508_310

def AllocBody508_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody508_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody508_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody508_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody508_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody508_317 : StackLang.HolProg 64 :=
.seq AllocBody508_315 AllocBody508_316

def AllocBody508_318 : StackLang.HolProg 64 :=
.seq AllocBody508_314 AllocBody508_317

def AllocBody508_319 : StackLang.HolProg 64 :=
.seq AllocBody508_313 AllocBody508_318

def AllocBody508_320 : StackLang.HolProg 64 :=
.seq AllocBody508_312 AllocBody508_319

def AllocBody508_321 : StackLang.HolProg 64 :=
.seq AllocBody508_311 AllocBody508_320

def AllocBody508_322 : StackLang.HolProg 64 :=
.seq AllocBody508_268 AllocBody508_321

def AllocBody508_323 : StackLang.HolProg 64 :=
.seq AllocBody508_267 AllocBody508_322

def AllocBody508_324 : StackLang.HolProg 64 :=
.seq AllocBody508_266 AllocBody508_323

def AllocBody508_325 : StackLang.HolProg 64 :=
.seq AllocBody508_265 AllocBody508_324

def AllocBody508_326 : StackLang.HolProg 64 :=
.seq AllocBody508_222 AllocBody508_325

def AllocBody508_327 : StackLang.HolProg 64 :=
.seq AllocBody508_221 AllocBody508_326

def AllocBody508_328 : StackLang.HolProg 64 :=
.seq AllocBody508_220 AllocBody508_327

def AllocBody508_329 : StackLang.HolProg 64 :=
.seq AllocBody508_177 AllocBody508_328

def AllocBody508_330 : StackLang.HolProg 64 :=
.seq AllocBody508_176 AllocBody508_329

def AllocBody508_331 : StackLang.HolProg 64 :=
.seq AllocBody508_175 AllocBody508_330

def AllocBody508_332 : StackLang.HolProg 64 :=
.seq AllocBody508_104 AllocBody508_331

def AllocBody508_333 : StackLang.HolProg 64 :=
.seq AllocBody508_97 AllocBody508_332

def AllocBody508_334 : StackLang.HolProg 64 :=
.seq AllocBody508_96 AllocBody508_333

def AllocBody508_335 : StackLang.HolProg 64 :=
.seq AllocBody508_95 AllocBody508_334

def AllocBody508_336 : StackLang.HolProg 64 :=
.seq AllocBody508_52 AllocBody508_335

def AllocBody508_337 : StackLang.HolProg 64 :=
.seq AllocBody508_45 AllocBody508_336

def AllocBody508_338 : StackLang.HolProg 64 :=
.seq AllocBody508_44 AllocBody508_337

def AllocBody508_339 : StackLang.HolProg 64 :=
.seq AllocBody508_1 AllocBody508_338

def AllocBody508_340 : StackLang.HolProg 64 :=
.seq AllocBody508_0 AllocBody508_339

def Alloc508 : Nat × StackLang.HolProg 64 := (508, AllocBody508_340)
theorem Alloc508_eq : StackAlloc.progComp (508, raw508) = Alloc508 := by
  kernel_rfl
#print axioms Alloc508_eq
end InitECandidate.Proofs.BackendStages
