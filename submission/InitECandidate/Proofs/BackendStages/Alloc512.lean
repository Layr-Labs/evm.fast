import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw512
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody512_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody512_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody512_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1638#64)

def AllocBody512_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_5 : StackLang.HolProg 64 :=
.seq AllocBody512_3 AllocBody512_4

def AllocBody512_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 3

def AllocBody512_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_16 : StackLang.HolProg 64 :=
.seq AllocBody512_14 AllocBody512_15

def AllocBody512_17 : StackLang.HolProg 64 :=
.seq AllocBody512_13 AllocBody512_16

def AllocBody512_18 : StackLang.HolProg 64 :=
.seq AllocBody512_12 AllocBody512_17

def AllocBody512_19 : StackLang.HolProg 64 :=
.seq AllocBody512_11 AllocBody512_18

def AllocBody512_20 : StackLang.HolProg 64 :=
.seq AllocBody512_10 AllocBody512_19

def AllocBody512_21 : StackLang.HolProg 64 :=
.seq AllocBody512_9 AllocBody512_20

def AllocBody512_22 : StackLang.HolProg 64 :=
.seq AllocBody512_8 AllocBody512_21

def AllocBody512_23 : StackLang.HolProg 64 :=
.seq AllocBody512_7 AllocBody512_22

def AllocBody512_24 : StackLang.HolProg 64 :=
.seq AllocBody512_6 AllocBody512_23

def AllocBody512_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody512_32 : StackLang.HolProg 64 :=
.seq AllocBody512_30 AllocBody512_31

def AllocBody512_33 : StackLang.HolProg 64 :=
.seq AllocBody512_29 AllocBody512_32

def AllocBody512_34 : StackLang.HolProg 64 :=
.seq AllocBody512_28 AllocBody512_33

def AllocBody512_35 : StackLang.HolProg 64 :=
.seq AllocBody512_27 AllocBody512_34

def AllocBody512_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_38 : StackLang.HolProg 64 :=
.seq AllocBody512_36 AllocBody512_37

def AllocBody512_39 : StackLang.HolProg 64 :=
.call (some (AllocBody512_35, 0, 512, 2)) (Sum.inl 475) (some (AllocBody512_38, 512, 3))

def AllocBody512_40 : StackLang.HolProg 64 :=
.seq AllocBody512_26 AllocBody512_39

def AllocBody512_41 : StackLang.HolProg 64 :=
.seq AllocBody512_25 AllocBody512_40

def AllocBody512_42 : StackLang.HolProg 64 :=
.seq AllocBody512_24 AllocBody512_41

def AllocBody512_43 : StackLang.HolProg 64 :=
.seq AllocBody512_5 AllocBody512_42

def AllocBody512_44 : StackLang.HolProg 64 :=
.seq AllocBody512_2 AllocBody512_43

def AllocBody512_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody512_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody512_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody512_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody512_50 : StackLang.HolProg 64 :=
.seq AllocBody512_48 AllocBody512_49

def AllocBody512_51 : StackLang.HolProg 64 :=
.seq AllocBody512_47 AllocBody512_50

def AllocBody512_52 : StackLang.HolProg 64 :=
.seq AllocBody512_46 AllocBody512_51

def AllocBody512_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1639#64)

def AllocBody512_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_56 : StackLang.HolProg 64 :=
.seq AllocBody512_54 AllocBody512_55

def AllocBody512_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 5

def AllocBody512_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_67 : StackLang.HolProg 64 :=
.seq AllocBody512_65 AllocBody512_66

def AllocBody512_68 : StackLang.HolProg 64 :=
.seq AllocBody512_64 AllocBody512_67

def AllocBody512_69 : StackLang.HolProg 64 :=
.seq AllocBody512_63 AllocBody512_68

def AllocBody512_70 : StackLang.HolProg 64 :=
.seq AllocBody512_62 AllocBody512_69

def AllocBody512_71 : StackLang.HolProg 64 :=
.seq AllocBody512_61 AllocBody512_70

def AllocBody512_72 : StackLang.HolProg 64 :=
.seq AllocBody512_60 AllocBody512_71

def AllocBody512_73 : StackLang.HolProg 64 :=
.seq AllocBody512_59 AllocBody512_72

def AllocBody512_74 : StackLang.HolProg 64 :=
.seq AllocBody512_58 AllocBody512_73

def AllocBody512_75 : StackLang.HolProg 64 :=
.seq AllocBody512_57 AllocBody512_74

def AllocBody512_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody512_83 : StackLang.HolProg 64 :=
.seq AllocBody512_81 AllocBody512_82

def AllocBody512_84 : StackLang.HolProg 64 :=
.seq AllocBody512_80 AllocBody512_83

def AllocBody512_85 : StackLang.HolProg 64 :=
.seq AllocBody512_79 AllocBody512_84

def AllocBody512_86 : StackLang.HolProg 64 :=
.seq AllocBody512_78 AllocBody512_85

def AllocBody512_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_89 : StackLang.HolProg 64 :=
.seq AllocBody512_87 AllocBody512_88

def AllocBody512_90 : StackLang.HolProg 64 :=
.call (some (AllocBody512_86, 0, 512, 4)) (Sum.inl 475) (some (AllocBody512_89, 512, 5))

def AllocBody512_91 : StackLang.HolProg 64 :=
.seq AllocBody512_77 AllocBody512_90

def AllocBody512_92 : StackLang.HolProg 64 :=
.seq AllocBody512_76 AllocBody512_91

def AllocBody512_93 : StackLang.HolProg 64 :=
.seq AllocBody512_75 AllocBody512_92

def AllocBody512_94 : StackLang.HolProg 64 :=
.seq AllocBody512_56 AllocBody512_93

def AllocBody512_95 : StackLang.HolProg 64 :=
.seq AllocBody512_53 AllocBody512_94

def AllocBody512_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody512_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody512_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody512_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody512_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody512_102 : StackLang.HolProg 64 :=
.seq AllocBody512_100 AllocBody512_101

def AllocBody512_103 : StackLang.HolProg 64 :=
.seq AllocBody512_99 AllocBody512_102

def AllocBody512_104 : StackLang.HolProg 64 :=
.seq AllocBody512_98 AllocBody512_103

def AllocBody512_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1640#64)

def AllocBody512_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_108 : StackLang.HolProg 64 :=
.seq AllocBody512_106 AllocBody512_107

def AllocBody512_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 7

def AllocBody512_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_119 : StackLang.HolProg 64 :=
.seq AllocBody512_117 AllocBody512_118

def AllocBody512_120 : StackLang.HolProg 64 :=
.seq AllocBody512_116 AllocBody512_119

def AllocBody512_121 : StackLang.HolProg 64 :=
.seq AllocBody512_115 AllocBody512_120

def AllocBody512_122 : StackLang.HolProg 64 :=
.seq AllocBody512_114 AllocBody512_121

def AllocBody512_123 : StackLang.HolProg 64 :=
.seq AllocBody512_113 AllocBody512_122

def AllocBody512_124 : StackLang.HolProg 64 :=
.seq AllocBody512_112 AllocBody512_123

def AllocBody512_125 : StackLang.HolProg 64 :=
.seq AllocBody512_111 AllocBody512_124

def AllocBody512_126 : StackLang.HolProg 64 :=
.seq AllocBody512_110 AllocBody512_125

def AllocBody512_127 : StackLang.HolProg 64 :=
.seq AllocBody512_109 AllocBody512_126

def AllocBody512_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody512_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody512_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody512_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody512_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody512_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody512_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody512_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody512_142 : StackLang.HolProg 64 :=
.seq AllocBody512_140 AllocBody512_141

def AllocBody512_143 : StackLang.HolProg 64 :=
.seq AllocBody512_139 AllocBody512_142

def AllocBody512_144 : StackLang.HolProg 64 :=
.seq AllocBody512_138 AllocBody512_143

def AllocBody512_145 : StackLang.HolProg 64 :=
.seq AllocBody512_137 AllocBody512_144

def AllocBody512_146 : StackLang.HolProg 64 :=
.seq AllocBody512_136 AllocBody512_145

def AllocBody512_147 : StackLang.HolProg 64 :=
.seq AllocBody512_135 AllocBody512_146

def AllocBody512_148 : StackLang.HolProg 64 :=
.seq AllocBody512_134 AllocBody512_147

def AllocBody512_149 : StackLang.HolProg 64 :=
.seq AllocBody512_133 AllocBody512_148

def AllocBody512_150 : StackLang.HolProg 64 :=
.seq AllocBody512_132 AllocBody512_149

def AllocBody512_151 : StackLang.HolProg 64 :=
.seq AllocBody512_131 AllocBody512_150

def AllocBody512_152 : StackLang.HolProg 64 :=
.seq AllocBody512_130 AllocBody512_151

def AllocBody512_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody512_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody512_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody512_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody512_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody512_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody512_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody512_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody512_161 : StackLang.HolProg 64 :=
.seq AllocBody512_159 AllocBody512_160

def AllocBody512_162 : StackLang.HolProg 64 :=
.seq AllocBody512_158 AllocBody512_161

def AllocBody512_163 : StackLang.HolProg 64 :=
.seq AllocBody512_157 AllocBody512_162

def AllocBody512_164 : StackLang.HolProg 64 :=
.seq AllocBody512_156 AllocBody512_163

def AllocBody512_165 : StackLang.HolProg 64 :=
.seq AllocBody512_155 AllocBody512_164

def AllocBody512_166 : StackLang.HolProg 64 :=
.seq AllocBody512_154 AllocBody512_165

def AllocBody512_167 : StackLang.HolProg 64 :=
.seq AllocBody512_153 AllocBody512_166

def AllocBody512_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_169 : StackLang.HolProg 64 :=
.seq AllocBody512_167 AllocBody512_168

def AllocBody512_170 : StackLang.HolProg 64 :=
.call (some (AllocBody512_152, 0, 512, 6)) (Sum.inl 470) (some (AllocBody512_169, 512, 7))

def AllocBody512_171 : StackLang.HolProg 64 :=
.seq AllocBody512_129 AllocBody512_170

def AllocBody512_172 : StackLang.HolProg 64 :=
.seq AllocBody512_128 AllocBody512_171

def AllocBody512_173 : StackLang.HolProg 64 :=
.seq AllocBody512_127 AllocBody512_172

def AllocBody512_174 : StackLang.HolProg 64 :=
.seq AllocBody512_108 AllocBody512_173

def AllocBody512_175 : StackLang.HolProg 64 :=
.seq AllocBody512_105 AllocBody512_174

def AllocBody512_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody512_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1641#64)

def AllocBody512_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_181 : StackLang.HolProg 64 :=
.seq AllocBody512_179 AllocBody512_180

def AllocBody512_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 9

def AllocBody512_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_192 : StackLang.HolProg 64 :=
.seq AllocBody512_190 AllocBody512_191

def AllocBody512_193 : StackLang.HolProg 64 :=
.seq AllocBody512_189 AllocBody512_192

def AllocBody512_194 : StackLang.HolProg 64 :=
.seq AllocBody512_188 AllocBody512_193

def AllocBody512_195 : StackLang.HolProg 64 :=
.seq AllocBody512_187 AllocBody512_194

def AllocBody512_196 : StackLang.HolProg 64 :=
.seq AllocBody512_186 AllocBody512_195

def AllocBody512_197 : StackLang.HolProg 64 :=
.seq AllocBody512_185 AllocBody512_196

def AllocBody512_198 : StackLang.HolProg 64 :=
.seq AllocBody512_184 AllocBody512_197

def AllocBody512_199 : StackLang.HolProg 64 :=
.seq AllocBody512_183 AllocBody512_198

def AllocBody512_200 : StackLang.HolProg 64 :=
.seq AllocBody512_182 AllocBody512_199

def AllocBody512_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody512_208 : StackLang.HolProg 64 :=
.seq AllocBody512_206 AllocBody512_207

def AllocBody512_209 : StackLang.HolProg 64 :=
.seq AllocBody512_205 AllocBody512_208

def AllocBody512_210 : StackLang.HolProg 64 :=
.seq AllocBody512_204 AllocBody512_209

def AllocBody512_211 : StackLang.HolProg 64 :=
.seq AllocBody512_203 AllocBody512_210

def AllocBody512_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_214 : StackLang.HolProg 64 :=
.seq AllocBody512_212 AllocBody512_213

def AllocBody512_215 : StackLang.HolProg 64 :=
.call (some (AllocBody512_211, 0, 512, 8)) (Sum.inl 105) (some (AllocBody512_214, 512, 9))

def AllocBody512_216 : StackLang.HolProg 64 :=
.seq AllocBody512_202 AllocBody512_215

def AllocBody512_217 : StackLang.HolProg 64 :=
.seq AllocBody512_201 AllocBody512_216

def AllocBody512_218 : StackLang.HolProg 64 :=
.seq AllocBody512_200 AllocBody512_217

def AllocBody512_219 : StackLang.HolProg 64 :=
.seq AllocBody512_181 AllocBody512_218

def AllocBody512_220 : StackLang.HolProg 64 :=
.seq AllocBody512_178 AllocBody512_219

def AllocBody512_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody512_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1642#64)

def AllocBody512_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_226 : StackLang.HolProg 64 :=
.seq AllocBody512_224 AllocBody512_225

def AllocBody512_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 11

def AllocBody512_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_237 : StackLang.HolProg 64 :=
.seq AllocBody512_235 AllocBody512_236

def AllocBody512_238 : StackLang.HolProg 64 :=
.seq AllocBody512_234 AllocBody512_237

def AllocBody512_239 : StackLang.HolProg 64 :=
.seq AllocBody512_233 AllocBody512_238

def AllocBody512_240 : StackLang.HolProg 64 :=
.seq AllocBody512_232 AllocBody512_239

def AllocBody512_241 : StackLang.HolProg 64 :=
.seq AllocBody512_231 AllocBody512_240

def AllocBody512_242 : StackLang.HolProg 64 :=
.seq AllocBody512_230 AllocBody512_241

def AllocBody512_243 : StackLang.HolProg 64 :=
.seq AllocBody512_229 AllocBody512_242

def AllocBody512_244 : StackLang.HolProg 64 :=
.seq AllocBody512_228 AllocBody512_243

def AllocBody512_245 : StackLang.HolProg 64 :=
.seq AllocBody512_227 AllocBody512_244

def AllocBody512_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_253 : StackLang.HolProg 64 :=
.seq AllocBody512_251 AllocBody512_252

def AllocBody512_254 : StackLang.HolProg 64 :=
.seq AllocBody512_250 AllocBody512_253

def AllocBody512_255 : StackLang.HolProg 64 :=
.seq AllocBody512_249 AllocBody512_254

def AllocBody512_256 : StackLang.HolProg 64 :=
.seq AllocBody512_248 AllocBody512_255

def AllocBody512_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_259 : StackLang.HolProg 64 :=
.seq AllocBody512_257 AllocBody512_258

def AllocBody512_260 : StackLang.HolProg 64 :=
.call (some (AllocBody512_256, 0, 512, 10)) (Sum.inl 478) (some (AllocBody512_259, 512, 11))

def AllocBody512_261 : StackLang.HolProg 64 :=
.seq AllocBody512_247 AllocBody512_260

def AllocBody512_262 : StackLang.HolProg 64 :=
.seq AllocBody512_246 AllocBody512_261

def AllocBody512_263 : StackLang.HolProg 64 :=
.seq AllocBody512_245 AllocBody512_262

def AllocBody512_264 : StackLang.HolProg 64 :=
.seq AllocBody512_226 AllocBody512_263

def AllocBody512_265 : StackLang.HolProg 64 :=
.seq AllocBody512_223 AllocBody512_264

def AllocBody512_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody512_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1643#64)

def AllocBody512_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_272 : StackLang.HolProg 64 :=
.seq AllocBody512_270 AllocBody512_271

def AllocBody512_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody512_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody512_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody512_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 512 13

def AllocBody512_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody512_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody512_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody512_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody512_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_283 : StackLang.HolProg 64 :=
.seq AllocBody512_281 AllocBody512_282

def AllocBody512_284 : StackLang.HolProg 64 :=
.seq AllocBody512_280 AllocBody512_283

def AllocBody512_285 : StackLang.HolProg 64 :=
.seq AllocBody512_279 AllocBody512_284

def AllocBody512_286 : StackLang.HolProg 64 :=
.seq AllocBody512_278 AllocBody512_285

def AllocBody512_287 : StackLang.HolProg 64 :=
.seq AllocBody512_277 AllocBody512_286

def AllocBody512_288 : StackLang.HolProg 64 :=
.seq AllocBody512_276 AllocBody512_287

def AllocBody512_289 : StackLang.HolProg 64 :=
.seq AllocBody512_275 AllocBody512_288

def AllocBody512_290 : StackLang.HolProg 64 :=
.seq AllocBody512_274 AllocBody512_289

def AllocBody512_291 : StackLang.HolProg 64 :=
.seq AllocBody512_273 AllocBody512_290

def AllocBody512_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody512_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody512_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody512_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody512_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody512_299 : StackLang.HolProg 64 :=
.seq AllocBody512_297 AllocBody512_298

def AllocBody512_300 : StackLang.HolProg 64 :=
.seq AllocBody512_296 AllocBody512_299

def AllocBody512_301 : StackLang.HolProg 64 :=
.seq AllocBody512_295 AllocBody512_300

def AllocBody512_302 : StackLang.HolProg 64 :=
.seq AllocBody512_294 AllocBody512_301

def AllocBody512_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody512_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody512_305 : StackLang.HolProg 64 :=
.seq AllocBody512_303 AllocBody512_304

def AllocBody512_306 : StackLang.HolProg 64 :=
.call (some (AllocBody512_302, 0, 512, 12)) (Sum.inl 490) (some (AllocBody512_305, 512, 13))

def AllocBody512_307 : StackLang.HolProg 64 :=
.seq AllocBody512_293 AllocBody512_306

def AllocBody512_308 : StackLang.HolProg 64 :=
.seq AllocBody512_292 AllocBody512_307

def AllocBody512_309 : StackLang.HolProg 64 :=
.seq AllocBody512_291 AllocBody512_308

def AllocBody512_310 : StackLang.HolProg 64 :=
.seq AllocBody512_272 AllocBody512_309

def AllocBody512_311 : StackLang.HolProg 64 :=
.seq AllocBody512_269 AllocBody512_310

def AllocBody512_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody512_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody512_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody512_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody512_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody512_317 : StackLang.HolProg 64 :=
.seq AllocBody512_315 AllocBody512_316

def AllocBody512_318 : StackLang.HolProg 64 :=
.seq AllocBody512_314 AllocBody512_317

def AllocBody512_319 : StackLang.HolProg 64 :=
.seq AllocBody512_313 AllocBody512_318

def AllocBody512_320 : StackLang.HolProg 64 :=
.seq AllocBody512_312 AllocBody512_319

def AllocBody512_321 : StackLang.HolProg 64 :=
.seq AllocBody512_311 AllocBody512_320

def AllocBody512_322 : StackLang.HolProg 64 :=
.seq AllocBody512_268 AllocBody512_321

def AllocBody512_323 : StackLang.HolProg 64 :=
.seq AllocBody512_267 AllocBody512_322

def AllocBody512_324 : StackLang.HolProg 64 :=
.seq AllocBody512_266 AllocBody512_323

def AllocBody512_325 : StackLang.HolProg 64 :=
.seq AllocBody512_265 AllocBody512_324

def AllocBody512_326 : StackLang.HolProg 64 :=
.seq AllocBody512_222 AllocBody512_325

def AllocBody512_327 : StackLang.HolProg 64 :=
.seq AllocBody512_221 AllocBody512_326

def AllocBody512_328 : StackLang.HolProg 64 :=
.seq AllocBody512_220 AllocBody512_327

def AllocBody512_329 : StackLang.HolProg 64 :=
.seq AllocBody512_177 AllocBody512_328

def AllocBody512_330 : StackLang.HolProg 64 :=
.seq AllocBody512_176 AllocBody512_329

def AllocBody512_331 : StackLang.HolProg 64 :=
.seq AllocBody512_175 AllocBody512_330

def AllocBody512_332 : StackLang.HolProg 64 :=
.seq AllocBody512_104 AllocBody512_331

def AllocBody512_333 : StackLang.HolProg 64 :=
.seq AllocBody512_97 AllocBody512_332

def AllocBody512_334 : StackLang.HolProg 64 :=
.seq AllocBody512_96 AllocBody512_333

def AllocBody512_335 : StackLang.HolProg 64 :=
.seq AllocBody512_95 AllocBody512_334

def AllocBody512_336 : StackLang.HolProg 64 :=
.seq AllocBody512_52 AllocBody512_335

def AllocBody512_337 : StackLang.HolProg 64 :=
.seq AllocBody512_45 AllocBody512_336

def AllocBody512_338 : StackLang.HolProg 64 :=
.seq AllocBody512_44 AllocBody512_337

def AllocBody512_339 : StackLang.HolProg 64 :=
.seq AllocBody512_1 AllocBody512_338

def AllocBody512_340 : StackLang.HolProg 64 :=
.seq AllocBody512_0 AllocBody512_339

def Alloc512 : Nat × StackLang.HolProg 64 := (512, AllocBody512_340)
theorem Alloc512_eq : StackAlloc.progComp (512, raw512) = Alloc512 := by
  kernel_rfl
#print axioms Alloc512_eq
end InitECandidate.Proofs.BackendStages
