import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw784
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody784_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody784_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody784_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody784_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody784_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody784_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody784_6 : StackLang.HolProg 64 :=
.seq AllocBody784_4 AllocBody784_5

def AllocBody784_7 : StackLang.HolProg 64 :=
.seq AllocBody784_3 AllocBody784_6

def AllocBody784_8 : StackLang.HolProg 64 :=
.seq AllocBody784_2 AllocBody784_7

def AllocBody784_9 : StackLang.HolProg 64 :=
.seq AllocBody784_1 AllocBody784_8

def AllocBody784_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3618#64)

def AllocBody784_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_13 : StackLang.HolProg 64 :=
.seq AllocBody784_11 AllocBody784_12

def AllocBody784_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 3

def AllocBody784_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_24 : StackLang.HolProg 64 :=
.seq AllocBody784_22 AllocBody784_23

def AllocBody784_25 : StackLang.HolProg 64 :=
.seq AllocBody784_21 AllocBody784_24

def AllocBody784_26 : StackLang.HolProg 64 :=
.seq AllocBody784_20 AllocBody784_25

def AllocBody784_27 : StackLang.HolProg 64 :=
.seq AllocBody784_19 AllocBody784_26

def AllocBody784_28 : StackLang.HolProg 64 :=
.seq AllocBody784_18 AllocBody784_27

def AllocBody784_29 : StackLang.HolProg 64 :=
.seq AllocBody784_17 AllocBody784_28

def AllocBody784_30 : StackLang.HolProg 64 :=
.seq AllocBody784_16 AllocBody784_29

def AllocBody784_31 : StackLang.HolProg 64 :=
.seq AllocBody784_15 AllocBody784_30

def AllocBody784_32 : StackLang.HolProg 64 :=
.seq AllocBody784_14 AllocBody784_31

def AllocBody784_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody784_40 : StackLang.HolProg 64 :=
.seq AllocBody784_38 AllocBody784_39

def AllocBody784_41 : StackLang.HolProg 64 :=
.seq AllocBody784_37 AllocBody784_40

def AllocBody784_42 : StackLang.HolProg 64 :=
.seq AllocBody784_36 AllocBody784_41

def AllocBody784_43 : StackLang.HolProg 64 :=
.seq AllocBody784_35 AllocBody784_42

def AllocBody784_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_46 : StackLang.HolProg 64 :=
.seq AllocBody784_44 AllocBody784_45

def AllocBody784_47 : StackLang.HolProg 64 :=
.call (some (AllocBody784_43, 0, 784, 2)) (Sum.inl 69) (some (AllocBody784_46, 784, 3))

def AllocBody784_48 : StackLang.HolProg 64 :=
.seq AllocBody784_34 AllocBody784_47

def AllocBody784_49 : StackLang.HolProg 64 :=
.seq AllocBody784_33 AllocBody784_48

def AllocBody784_50 : StackLang.HolProg 64 :=
.seq AllocBody784_32 AllocBody784_49

def AllocBody784_51 : StackLang.HolProg 64 :=
.seq AllocBody784_13 AllocBody784_50

def AllocBody784_52 : StackLang.HolProg 64 :=
.seq AllocBody784_10 AllocBody784_51

def AllocBody784_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def AllocBody784_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody784_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3619#64)

def AllocBody784_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_59 : StackLang.HolProg 64 :=
.seq AllocBody784_57 AllocBody784_58

def AllocBody784_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 5

def AllocBody784_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_70 : StackLang.HolProg 64 :=
.seq AllocBody784_68 AllocBody784_69

def AllocBody784_71 : StackLang.HolProg 64 :=
.seq AllocBody784_67 AllocBody784_70

def AllocBody784_72 : StackLang.HolProg 64 :=
.seq AllocBody784_66 AllocBody784_71

def AllocBody784_73 : StackLang.HolProg 64 :=
.seq AllocBody784_65 AllocBody784_72

def AllocBody784_74 : StackLang.HolProg 64 :=
.seq AllocBody784_64 AllocBody784_73

def AllocBody784_75 : StackLang.HolProg 64 :=
.seq AllocBody784_63 AllocBody784_74

def AllocBody784_76 : StackLang.HolProg 64 :=
.seq AllocBody784_62 AllocBody784_75

def AllocBody784_77 : StackLang.HolProg 64 :=
.seq AllocBody784_61 AllocBody784_76

def AllocBody784_78 : StackLang.HolProg 64 :=
.seq AllocBody784_60 AllocBody784_77

def AllocBody784_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody784_86 : StackLang.HolProg 64 :=
.seq AllocBody784_84 AllocBody784_85

def AllocBody784_87 : StackLang.HolProg 64 :=
.seq AllocBody784_83 AllocBody784_86

def AllocBody784_88 : StackLang.HolProg 64 :=
.seq AllocBody784_82 AllocBody784_87

def AllocBody784_89 : StackLang.HolProg 64 :=
.seq AllocBody784_81 AllocBody784_88

def AllocBody784_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_92 : StackLang.HolProg 64 :=
.seq AllocBody784_90 AllocBody784_91

def AllocBody784_93 : StackLang.HolProg 64 :=
.call (some (AllocBody784_89, 0, 784, 4)) (Sum.inl 68) (some (AllocBody784_92, 784, 5))

def AllocBody784_94 : StackLang.HolProg 64 :=
.seq AllocBody784_80 AllocBody784_93

def AllocBody784_95 : StackLang.HolProg 64 :=
.seq AllocBody784_79 AllocBody784_94

def AllocBody784_96 : StackLang.HolProg 64 :=
.seq AllocBody784_78 AllocBody784_95

def AllocBody784_97 : StackLang.HolProg 64 :=
.seq AllocBody784_59 AllocBody784_96

def AllocBody784_98 : StackLang.HolProg 64 :=
.seq AllocBody784_56 AllocBody784_97

def AllocBody784_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody784_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody784_102 : StackLang.HolProg 64 :=
.seq AllocBody784_100 AllocBody784_101

def AllocBody784_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3620#64)

def AllocBody784_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_106 : StackLang.HolProg 64 :=
.seq AllocBody784_104 AllocBody784_105

def AllocBody784_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 7

def AllocBody784_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_117 : StackLang.HolProg 64 :=
.seq AllocBody784_115 AllocBody784_116

def AllocBody784_118 : StackLang.HolProg 64 :=
.seq AllocBody784_114 AllocBody784_117

def AllocBody784_119 : StackLang.HolProg 64 :=
.seq AllocBody784_113 AllocBody784_118

def AllocBody784_120 : StackLang.HolProg 64 :=
.seq AllocBody784_112 AllocBody784_119

def AllocBody784_121 : StackLang.HolProg 64 :=
.seq AllocBody784_111 AllocBody784_120

def AllocBody784_122 : StackLang.HolProg 64 :=
.seq AllocBody784_110 AllocBody784_121

def AllocBody784_123 : StackLang.HolProg 64 :=
.seq AllocBody784_109 AllocBody784_122

def AllocBody784_124 : StackLang.HolProg 64 :=
.seq AllocBody784_108 AllocBody784_123

def AllocBody784_125 : StackLang.HolProg 64 :=
.seq AllocBody784_107 AllocBody784_124

def AllocBody784_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody784_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_136 : StackLang.HolProg 64 :=
.seq AllocBody784_134 AllocBody784_135

def AllocBody784_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody784_139 : StackLang.HolProg 64 :=
.seq AllocBody784_137 AllocBody784_138

def AllocBody784_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody784_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody784_142 : StackLang.HolProg 64 :=
.seq AllocBody784_140 AllocBody784_141

def AllocBody784_143 : StackLang.HolProg 64 :=
.seq AllocBody784_139 AllocBody784_142

def AllocBody784_144 : StackLang.HolProg 64 :=
.seq AllocBody784_136 AllocBody784_143

def AllocBody784_145 : StackLang.HolProg 64 :=
.seq AllocBody784_133 AllocBody784_144

def AllocBody784_146 : StackLang.HolProg 64 :=
.seq AllocBody784_132 AllocBody784_145

def AllocBody784_147 : StackLang.HolProg 64 :=
.seq AllocBody784_131 AllocBody784_146

def AllocBody784_148 : StackLang.HolProg 64 :=
.seq AllocBody784_130 AllocBody784_147

def AllocBody784_149 : StackLang.HolProg 64 :=
.seq AllocBody784_129 AllocBody784_148

def AllocBody784_150 : StackLang.HolProg 64 :=
.seq AllocBody784_128 AllocBody784_149

def AllocBody784_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody784_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_155 : StackLang.HolProg 64 :=
.seq AllocBody784_153 AllocBody784_154

def AllocBody784_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody784_158 : StackLang.HolProg 64 :=
.seq AllocBody784_156 AllocBody784_157

def AllocBody784_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody784_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody784_161 : StackLang.HolProg 64 :=
.seq AllocBody784_159 AllocBody784_160

def AllocBody784_162 : StackLang.HolProg 64 :=
.seq AllocBody784_158 AllocBody784_161

def AllocBody784_163 : StackLang.HolProg 64 :=
.seq AllocBody784_155 AllocBody784_162

def AllocBody784_164 : StackLang.HolProg 64 :=
.seq AllocBody784_152 AllocBody784_163

def AllocBody784_165 : StackLang.HolProg 64 :=
.seq AllocBody784_151 AllocBody784_164

def AllocBody784_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_167 : StackLang.HolProg 64 :=
.seq AllocBody784_165 AllocBody784_166

def AllocBody784_168 : StackLang.HolProg 64 :=
.call (some (AllocBody784_150, 0, 784, 6)) (Sum.inl 778) (some (AllocBody784_167, 784, 7))

def AllocBody784_169 : StackLang.HolProg 64 :=
.seq AllocBody784_127 AllocBody784_168

def AllocBody784_170 : StackLang.HolProg 64 :=
.seq AllocBody784_126 AllocBody784_169

def AllocBody784_171 : StackLang.HolProg 64 :=
.seq AllocBody784_125 AllocBody784_170

def AllocBody784_172 : StackLang.HolProg 64 :=
.seq AllocBody784_106 AllocBody784_171

def AllocBody784_173 : StackLang.HolProg 64 :=
.seq AllocBody784_103 AllocBody784_172

def AllocBody784_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody784_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody784_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody784_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody784_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody784_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody784_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody784_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody784_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_191 : StackLang.HolProg 64 :=
.seq AllocBody784_189 AllocBody784_190

def AllocBody784_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody784_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody784_194 : StackLang.HolProg 64 :=
.seq AllocBody784_192 AllocBody784_193

def AllocBody784_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_197 : StackLang.HolProg 64 :=
.seq AllocBody784_195 AllocBody784_196

def AllocBody784_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody784_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody784_200 : StackLang.HolProg 64 :=
.seq AllocBody784_198 AllocBody784_199

def AllocBody784_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody784_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody784_203 : StackLang.HolProg 64 :=
.seq AllocBody784_201 AllocBody784_202

def AllocBody784_204 : StackLang.HolProg 64 :=
.seq AllocBody784_200 AllocBody784_203

def AllocBody784_205 : StackLang.HolProg 64 :=
.seq AllocBody784_197 AllocBody784_204

def AllocBody784_206 : StackLang.HolProg 64 :=
.seq AllocBody784_194 AllocBody784_205

def AllocBody784_207 : StackLang.HolProg 64 :=
.seq AllocBody784_191 AllocBody784_206

def AllocBody784_208 : StackLang.HolProg 64 :=
.seq AllocBody784_188 AllocBody784_207

def AllocBody784_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3621#64)

def AllocBody784_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_212 : StackLang.HolProg 64 :=
.seq AllocBody784_210 AllocBody784_211

def AllocBody784_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 9

def AllocBody784_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_223 : StackLang.HolProg 64 :=
.seq AllocBody784_221 AllocBody784_222

def AllocBody784_224 : StackLang.HolProg 64 :=
.seq AllocBody784_220 AllocBody784_223

def AllocBody784_225 : StackLang.HolProg 64 :=
.seq AllocBody784_219 AllocBody784_224

def AllocBody784_226 : StackLang.HolProg 64 :=
.seq AllocBody784_218 AllocBody784_225

def AllocBody784_227 : StackLang.HolProg 64 :=
.seq AllocBody784_217 AllocBody784_226

def AllocBody784_228 : StackLang.HolProg 64 :=
.seq AllocBody784_216 AllocBody784_227

def AllocBody784_229 : StackLang.HolProg 64 :=
.seq AllocBody784_215 AllocBody784_228

def AllocBody784_230 : StackLang.HolProg 64 :=
.seq AllocBody784_214 AllocBody784_229

def AllocBody784_231 : StackLang.HolProg 64 :=
.seq AllocBody784_213 AllocBody784_230

def AllocBody784_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody784_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody784_242 : StackLang.HolProg 64 :=
.seq AllocBody784_240 AllocBody784_241

def AllocBody784_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody784_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody784_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody784_246 : StackLang.HolProg 64 :=
.seq AllocBody784_244 AllocBody784_245

def AllocBody784_247 : StackLang.HolProg 64 :=
.seq AllocBody784_243 AllocBody784_246

def AllocBody784_248 : StackLang.HolProg 64 :=
.seq AllocBody784_242 AllocBody784_247

def AllocBody784_249 : StackLang.HolProg 64 :=
.seq AllocBody784_239 AllocBody784_248

def AllocBody784_250 : StackLang.HolProg 64 :=
.seq AllocBody784_238 AllocBody784_249

def AllocBody784_251 : StackLang.HolProg 64 :=
.seq AllocBody784_237 AllocBody784_250

def AllocBody784_252 : StackLang.HolProg 64 :=
.seq AllocBody784_236 AllocBody784_251

def AllocBody784_253 : StackLang.HolProg 64 :=
.seq AllocBody784_235 AllocBody784_252

def AllocBody784_254 : StackLang.HolProg 64 :=
.seq AllocBody784_234 AllocBody784_253

def AllocBody784_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody784_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody784_259 : StackLang.HolProg 64 :=
.seq AllocBody784_257 AllocBody784_258

def AllocBody784_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody784_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody784_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody784_263 : StackLang.HolProg 64 :=
.seq AllocBody784_261 AllocBody784_262

def AllocBody784_264 : StackLang.HolProg 64 :=
.seq AllocBody784_260 AllocBody784_263

def AllocBody784_265 : StackLang.HolProg 64 :=
.seq AllocBody784_259 AllocBody784_264

def AllocBody784_266 : StackLang.HolProg 64 :=
.seq AllocBody784_256 AllocBody784_265

def AllocBody784_267 : StackLang.HolProg 64 :=
.seq AllocBody784_255 AllocBody784_266

def AllocBody784_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_269 : StackLang.HolProg 64 :=
.seq AllocBody784_267 AllocBody784_268

def AllocBody784_270 : StackLang.HolProg 64 :=
.call (some (AllocBody784_254, 0, 784, 8)) (Sum.inl 782) (some (AllocBody784_269, 784, 9))

def AllocBody784_271 : StackLang.HolProg 64 :=
.seq AllocBody784_233 AllocBody784_270

def AllocBody784_272 : StackLang.HolProg 64 :=
.seq AllocBody784_232 AllocBody784_271

def AllocBody784_273 : StackLang.HolProg 64 :=
.seq AllocBody784_231 AllocBody784_272

def AllocBody784_274 : StackLang.HolProg 64 :=
.seq AllocBody784_212 AllocBody784_273

def AllocBody784_275 : StackLang.HolProg 64 :=
.seq AllocBody784_209 AllocBody784_274

def AllocBody784_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_278 : StackLang.HolProg 64 :=
.seq AllocBody784_276 AllocBody784_277

def AllocBody784_279 : StackLang.HolProg 64 :=
.seq AllocBody784_275 AllocBody784_278

def AllocBody784_280 : StackLang.HolProg 64 :=
.seq AllocBody784_208 AllocBody784_279

def AllocBody784_281 : StackLang.HolProg 64 :=
.seq AllocBody784_187 AllocBody784_280

def AllocBody784_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody784_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody784_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody784_286 : StackLang.HolProg 64 :=
.seq AllocBody784_284 AllocBody784_285

def AllocBody784_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody784_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_289 : StackLang.HolProg 64 :=
.seq AllocBody784_287 AllocBody784_288

def AllocBody784_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody784_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody784_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody784_293 : StackLang.HolProg 64 :=
.seq AllocBody784_291 AllocBody784_292

def AllocBody784_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody784_295 : StackLang.HolProg 64 :=
.seq AllocBody784_293 AllocBody784_294

def AllocBody784_296 : StackLang.HolProg 64 :=
.seq AllocBody784_290 AllocBody784_295

def AllocBody784_297 : StackLang.HolProg 64 :=
.seq AllocBody784_289 AllocBody784_296

def AllocBody784_298 : StackLang.HolProg 64 :=
.seq AllocBody784_286 AllocBody784_297

def AllocBody784_299 : StackLang.HolProg 64 :=
.seq AllocBody784_283 AllocBody784_298

def AllocBody784_300 : StackLang.HolProg 64 :=
.seq AllocBody784_282 AllocBody784_299

def AllocBody784_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody784_281 AllocBody784_300

def AllocBody784_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody784_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody784_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody784_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody784_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody784_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody784_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody784_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody784_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody784_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody784_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody784_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody784_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody784_322 : StackLang.HolProg 64 :=
.seq AllocBody784_320 AllocBody784_321

def AllocBody784_323 : StackLang.HolProg 64 :=
.seq AllocBody784_319 AllocBody784_322

def AllocBody784_324 : StackLang.HolProg 64 :=
.seq AllocBody784_318 AllocBody784_323

def AllocBody784_325 : StackLang.HolProg 64 :=
.seq AllocBody784_317 AllocBody784_324

def AllocBody784_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3622#64)

def AllocBody784_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_329 : StackLang.HolProg 64 :=
.seq AllocBody784_327 AllocBody784_328

def AllocBody784_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 11

def AllocBody784_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_340 : StackLang.HolProg 64 :=
.seq AllocBody784_338 AllocBody784_339

def AllocBody784_341 : StackLang.HolProg 64 :=
.seq AllocBody784_337 AllocBody784_340

def AllocBody784_342 : StackLang.HolProg 64 :=
.seq AllocBody784_336 AllocBody784_341

def AllocBody784_343 : StackLang.HolProg 64 :=
.seq AllocBody784_335 AllocBody784_342

def AllocBody784_344 : StackLang.HolProg 64 :=
.seq AllocBody784_334 AllocBody784_343

def AllocBody784_345 : StackLang.HolProg 64 :=
.seq AllocBody784_333 AllocBody784_344

def AllocBody784_346 : StackLang.HolProg 64 :=
.seq AllocBody784_332 AllocBody784_345

def AllocBody784_347 : StackLang.HolProg 64 :=
.seq AllocBody784_331 AllocBody784_346

def AllocBody784_348 : StackLang.HolProg 64 :=
.seq AllocBody784_330 AllocBody784_347

def AllocBody784_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody784_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody784_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_360 : StackLang.HolProg 64 :=
.seq AllocBody784_358 AllocBody784_359

def AllocBody784_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody784_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody784_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody784_364 : StackLang.HolProg 64 :=
.seq AllocBody784_362 AllocBody784_363

def AllocBody784_365 : StackLang.HolProg 64 :=
.seq AllocBody784_361 AllocBody784_364

def AllocBody784_366 : StackLang.HolProg 64 :=
.seq AllocBody784_360 AllocBody784_365

def AllocBody784_367 : StackLang.HolProg 64 :=
.seq AllocBody784_357 AllocBody784_366

def AllocBody784_368 : StackLang.HolProg 64 :=
.seq AllocBody784_356 AllocBody784_367

def AllocBody784_369 : StackLang.HolProg 64 :=
.seq AllocBody784_355 AllocBody784_368

def AllocBody784_370 : StackLang.HolProg 64 :=
.seq AllocBody784_354 AllocBody784_369

def AllocBody784_371 : StackLang.HolProg 64 :=
.seq AllocBody784_353 AllocBody784_370

def AllocBody784_372 : StackLang.HolProg 64 :=
.seq AllocBody784_352 AllocBody784_371

def AllocBody784_373 : StackLang.HolProg 64 :=
.seq AllocBody784_351 AllocBody784_372

def AllocBody784_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody784_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody784_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody784_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_379 : StackLang.HolProg 64 :=
.seq AllocBody784_377 AllocBody784_378

def AllocBody784_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody784_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody784_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody784_383 : StackLang.HolProg 64 :=
.seq AllocBody784_381 AllocBody784_382

def AllocBody784_384 : StackLang.HolProg 64 :=
.seq AllocBody784_380 AllocBody784_383

def AllocBody784_385 : StackLang.HolProg 64 :=
.seq AllocBody784_379 AllocBody784_384

def AllocBody784_386 : StackLang.HolProg 64 :=
.seq AllocBody784_376 AllocBody784_385

def AllocBody784_387 : StackLang.HolProg 64 :=
.seq AllocBody784_375 AllocBody784_386

def AllocBody784_388 : StackLang.HolProg 64 :=
.seq AllocBody784_374 AllocBody784_387

def AllocBody784_389 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_390 : StackLang.HolProg 64 :=
.seq AllocBody784_388 AllocBody784_389

def AllocBody784_391 : StackLang.HolProg 64 :=
.call (some (AllocBody784_373, 0, 784, 10)) (Sum.inl 783) (some (AllocBody784_390, 784, 11))

def AllocBody784_392 : StackLang.HolProg 64 :=
.seq AllocBody784_350 AllocBody784_391

def AllocBody784_393 : StackLang.HolProg 64 :=
.seq AllocBody784_349 AllocBody784_392

def AllocBody784_394 : StackLang.HolProg 64 :=
.seq AllocBody784_348 AllocBody784_393

def AllocBody784_395 : StackLang.HolProg 64 :=
.seq AllocBody784_329 AllocBody784_394

def AllocBody784_396 : StackLang.HolProg 64 :=
.seq AllocBody784_326 AllocBody784_395

def AllocBody784_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody784_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_400 : StackLang.HolProg 64 :=
.seq AllocBody784_398 AllocBody784_399

def AllocBody784_401 : StackLang.HolProg 64 :=
.seq AllocBody784_397 AllocBody784_400

def AllocBody784_402 : StackLang.HolProg 64 :=
.seq AllocBody784_396 AllocBody784_401

def AllocBody784_403 : StackLang.HolProg 64 :=
.seq AllocBody784_325 AllocBody784_402

def AllocBody784_404 : StackLang.HolProg 64 :=
.seq AllocBody784_316 AllocBody784_403

def AllocBody784_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody784_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody784_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody784_409 : StackLang.HolProg 64 :=
.seq AllocBody784_407 AllocBody784_408

def AllocBody784_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody784_411 : StackLang.HolProg 64 :=
.seq AllocBody784_409 AllocBody784_410

def AllocBody784_412 : StackLang.HolProg 64 :=
.seq AllocBody784_406 AllocBody784_411

def AllocBody784_413 : StackLang.HolProg 64 :=
.seq AllocBody784_405 AllocBody784_412

def AllocBody784_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody784_404 AllocBody784_413

def AllocBody784_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody784_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody784_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def AllocBody784_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody784_420 : StackLang.HolProg 64 :=
.seq AllocBody784_418 AllocBody784_419

def AllocBody784_421 : StackLang.HolProg 64 :=
.seq AllocBody784_417 AllocBody784_420

def AllocBody784_422 : StackLang.HolProg 64 :=
.seq AllocBody784_416 AllocBody784_421

def AllocBody784_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody784_424 : StackLang.HolProg 64 :=
.seq AllocBody784_422 AllocBody784_423

def AllocBody784_425 : StackLang.HolProg 64 :=
.seq AllocBody784_415 AllocBody784_424

def AllocBody784_426 : StackLang.HolProg 64 :=
.seq AllocBody784_414 AllocBody784_425

def AllocBody784_427 : StackLang.HolProg 64 :=
.seq AllocBody784_315 AllocBody784_426

def AllocBody784_428 : StackLang.HolProg 64 :=
.seq AllocBody784_314 AllocBody784_427

def AllocBody784_429 : StackLang.HolProg 64 :=
.seq AllocBody784_313 AllocBody784_428

def AllocBody784_430 : StackLang.HolProg 64 :=
.seq AllocBody784_312 AllocBody784_429

def AllocBody784_431 : StackLang.HolProg 64 :=
.seq AllocBody784_311 AllocBody784_430

def AllocBody784_432 : StackLang.HolProg 64 :=
.seq AllocBody784_310 AllocBody784_431

def AllocBody784_433 : StackLang.HolProg 64 :=
.seq AllocBody784_309 AllocBody784_432

def AllocBody784_434 : StackLang.HolProg 64 :=
.seq AllocBody784_308 AllocBody784_433

def AllocBody784_435 : StackLang.HolProg 64 :=
.seq AllocBody784_307 AllocBody784_434

def AllocBody784_436 : StackLang.HolProg 64 :=
.seq AllocBody784_306 AllocBody784_435

def AllocBody784_437 : StackLang.HolProg 64 :=
.seq AllocBody784_305 AllocBody784_436

def AllocBody784_438 : StackLang.HolProg 64 :=
.seq AllocBody784_304 AllocBody784_437

def AllocBody784_439 : StackLang.HolProg 64 :=
.seq AllocBody784_303 AllocBody784_438

def AllocBody784_440 : StackLang.HolProg 64 :=
.seq AllocBody784_302 AllocBody784_439

def AllocBody784_441 : StackLang.HolProg 64 :=
.seq AllocBody784_301 AllocBody784_440

def AllocBody784_442 : StackLang.HolProg 64 :=
.seq AllocBody784_186 AllocBody784_441

def AllocBody784_443 : StackLang.HolProg 64 :=
.seq AllocBody784_185 AllocBody784_442

def AllocBody784_444 : StackLang.HolProg 64 :=
.seq AllocBody784_184 AllocBody784_443

def AllocBody784_445 : StackLang.HolProg 64 :=
.seq AllocBody784_183 AllocBody784_444

def AllocBody784_446 : StackLang.HolProg 64 :=
.seq AllocBody784_182 AllocBody784_445

def AllocBody784_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody784_449 : StackLang.HolProg 64 :=
.seq AllocBody784_447 AllocBody784_448

def AllocBody784_450 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody784_446 AllocBody784_449

def AllocBody784_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody784_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody784_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody784_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody784_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def AllocBody784_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody784_458 : StackLang.HolProg 64 :=
.seq AllocBody784_456 AllocBody784_457

def AllocBody784_459 : StackLang.HolProg 64 :=
.seq AllocBody784_455 AllocBody784_458

def AllocBody784_460 : StackLang.HolProg 64 :=
.seq AllocBody784_454 AllocBody784_459

def AllocBody784_461 : StackLang.HolProg 64 :=
.seq AllocBody784_453 AllocBody784_460

def AllocBody784_462 : StackLang.HolProg 64 :=
.seq AllocBody784_452 AllocBody784_461

def AllocBody784_463 : StackLang.HolProg 64 :=
.seq AllocBody784_451 AllocBody784_462

def AllocBody784_464 : StackLang.HolProg 64 :=
.seq AllocBody784_450 AllocBody784_463

def AllocBody784_465 : StackLang.HolProg 64 :=
.seq AllocBody784_181 AllocBody784_464

def AllocBody784_466 : StackLang.HolProg 64 :=
.seq AllocBody784_180 AllocBody784_465

def AllocBody784_467 : StackLang.HolProg 64 :=
.loop AllocBody784_466

def AllocBody784_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 9

def AllocBody784_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody784_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody784_472 : StackLang.HolProg 64 :=
.seq AllocBody784_470 AllocBody784_471

def AllocBody784_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody784_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody784_475 : StackLang.HolProg 64 :=
.seq AllocBody784_473 AllocBody784_474

def AllocBody784_476 : StackLang.HolProg 64 :=
.seq AllocBody784_472 AllocBody784_475

def AllocBody784_477 : StackLang.HolProg 64 :=
.seq AllocBody784_469 AllocBody784_476

def AllocBody784_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3623#64)

def AllocBody784_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_481 : StackLang.HolProg 64 :=
.seq AllocBody784_479 AllocBody784_480

def AllocBody784_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 13

def AllocBody784_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_492 : StackLang.HolProg 64 :=
.seq AllocBody784_490 AllocBody784_491

def AllocBody784_493 : StackLang.HolProg 64 :=
.seq AllocBody784_489 AllocBody784_492

def AllocBody784_494 : StackLang.HolProg 64 :=
.seq AllocBody784_488 AllocBody784_493

def AllocBody784_495 : StackLang.HolProg 64 :=
.seq AllocBody784_487 AllocBody784_494

def AllocBody784_496 : StackLang.HolProg 64 :=
.seq AllocBody784_486 AllocBody784_495

def AllocBody784_497 : StackLang.HolProg 64 :=
.seq AllocBody784_485 AllocBody784_496

def AllocBody784_498 : StackLang.HolProg 64 :=
.seq AllocBody784_484 AllocBody784_497

def AllocBody784_499 : StackLang.HolProg 64 :=
.seq AllocBody784_483 AllocBody784_498

def AllocBody784_500 : StackLang.HolProg 64 :=
.seq AllocBody784_482 AllocBody784_499

def AllocBody784_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody784_508 : StackLang.HolProg 64 :=
.seq AllocBody784_506 AllocBody784_507

def AllocBody784_509 : StackLang.HolProg 64 :=
.seq AllocBody784_505 AllocBody784_508

def AllocBody784_510 : StackLang.HolProg 64 :=
.seq AllocBody784_504 AllocBody784_509

def AllocBody784_511 : StackLang.HolProg 64 :=
.seq AllocBody784_503 AllocBody784_510

def AllocBody784_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody784_513 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_514 : StackLang.HolProg 64 :=
.seq AllocBody784_512 AllocBody784_513

def AllocBody784_515 : StackLang.HolProg 64 :=
.call (some (AllocBody784_511, 0, 784, 12)) (Sum.inl 780) (some (AllocBody784_514, 784, 13))

def AllocBody784_516 : StackLang.HolProg 64 :=
.seq AllocBody784_502 AllocBody784_515

def AllocBody784_517 : StackLang.HolProg 64 :=
.seq AllocBody784_501 AllocBody784_516

def AllocBody784_518 : StackLang.HolProg 64 :=
.seq AllocBody784_500 AllocBody784_517

def AllocBody784_519 : StackLang.HolProg 64 :=
.seq AllocBody784_481 AllocBody784_518

def AllocBody784_520 : StackLang.HolProg 64 :=
.seq AllocBody784_478 AllocBody784_519

def AllocBody784_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody784_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3624#64)

def AllocBody784_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_526 : StackLang.HolProg 64 :=
.seq AllocBody784_524 AllocBody784_525

def AllocBody784_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody784_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody784_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody784_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 784 15

def AllocBody784_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody784_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody784_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody784_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody784_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_537 : StackLang.HolProg 64 :=
.seq AllocBody784_535 AllocBody784_536

def AllocBody784_538 : StackLang.HolProg 64 :=
.seq AllocBody784_534 AllocBody784_537

def AllocBody784_539 : StackLang.HolProg 64 :=
.seq AllocBody784_533 AllocBody784_538

def AllocBody784_540 : StackLang.HolProg 64 :=
.seq AllocBody784_532 AllocBody784_539

def AllocBody784_541 : StackLang.HolProg 64 :=
.seq AllocBody784_531 AllocBody784_540

def AllocBody784_542 : StackLang.HolProg 64 :=
.seq AllocBody784_530 AllocBody784_541

def AllocBody784_543 : StackLang.HolProg 64 :=
.seq AllocBody784_529 AllocBody784_542

def AllocBody784_544 : StackLang.HolProg 64 :=
.seq AllocBody784_528 AllocBody784_543

def AllocBody784_545 : StackLang.HolProg 64 :=
.seq AllocBody784_527 AllocBody784_544

def AllocBody784_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody784_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody784_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody784_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody784_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody784_553 : StackLang.HolProg 64 :=
.seq AllocBody784_551 AllocBody784_552

def AllocBody784_554 : StackLang.HolProg 64 :=
.seq AllocBody784_550 AllocBody784_553

def AllocBody784_555 : StackLang.HolProg 64 :=
.seq AllocBody784_549 AllocBody784_554

def AllocBody784_556 : StackLang.HolProg 64 :=
.seq AllocBody784_548 AllocBody784_555

def AllocBody784_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody784_558 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody784_559 : StackLang.HolProg 64 :=
.seq AllocBody784_557 AllocBody784_558

def AllocBody784_560 : StackLang.HolProg 64 :=
.call (some (AllocBody784_556, 0, 784, 14)) (Sum.inl 70) (some (AllocBody784_559, 784, 15))

def AllocBody784_561 : StackLang.HolProg 64 :=
.seq AllocBody784_547 AllocBody784_560

def AllocBody784_562 : StackLang.HolProg 64 :=
.seq AllocBody784_546 AllocBody784_561

def AllocBody784_563 : StackLang.HolProg 64 :=
.seq AllocBody784_545 AllocBody784_562

def AllocBody784_564 : StackLang.HolProg 64 :=
.seq AllocBody784_526 AllocBody784_563

def AllocBody784_565 : StackLang.HolProg 64 :=
.seq AllocBody784_523 AllocBody784_564

def AllocBody784_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody784_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody784_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody784_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody784_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody784_571 : StackLang.HolProg 64 :=
.seq AllocBody784_569 AllocBody784_570

def AllocBody784_572 : StackLang.HolProg 64 :=
.seq AllocBody784_568 AllocBody784_571

def AllocBody784_573 : StackLang.HolProg 64 :=
.seq AllocBody784_567 AllocBody784_572

def AllocBody784_574 : StackLang.HolProg 64 :=
.seq AllocBody784_566 AllocBody784_573

def AllocBody784_575 : StackLang.HolProg 64 :=
.seq AllocBody784_565 AllocBody784_574

def AllocBody784_576 : StackLang.HolProg 64 :=
.seq AllocBody784_522 AllocBody784_575

def AllocBody784_577 : StackLang.HolProg 64 :=
.seq AllocBody784_521 AllocBody784_576

def AllocBody784_578 : StackLang.HolProg 64 :=
.seq AllocBody784_520 AllocBody784_577

def AllocBody784_579 : StackLang.HolProg 64 :=
.seq AllocBody784_477 AllocBody784_578

def AllocBody784_580 : StackLang.HolProg 64 :=
.seq AllocBody784_468 AllocBody784_579

def AllocBody784_581 : StackLang.HolProg 64 :=
.seq AllocBody784_467 AllocBody784_580

def AllocBody784_582 : StackLang.HolProg 64 :=
.seq AllocBody784_179 AllocBody784_581

def AllocBody784_583 : StackLang.HolProg 64 :=
.seq AllocBody784_178 AllocBody784_582

def AllocBody784_584 : StackLang.HolProg 64 :=
.seq AllocBody784_177 AllocBody784_583

def AllocBody784_585 : StackLang.HolProg 64 :=
.seq AllocBody784_176 AllocBody784_584

def AllocBody784_586 : StackLang.HolProg 64 :=
.seq AllocBody784_175 AllocBody784_585

def AllocBody784_587 : StackLang.HolProg 64 :=
.seq AllocBody784_174 AllocBody784_586

def AllocBody784_588 : StackLang.HolProg 64 :=
.seq AllocBody784_173 AllocBody784_587

def AllocBody784_589 : StackLang.HolProg 64 :=
.seq AllocBody784_102 AllocBody784_588

def AllocBody784_590 : StackLang.HolProg 64 :=
.seq AllocBody784_99 AllocBody784_589

def AllocBody784_591 : StackLang.HolProg 64 :=
.seq AllocBody784_98 AllocBody784_590

def AllocBody784_592 : StackLang.HolProg 64 :=
.seq AllocBody784_55 AllocBody784_591

def AllocBody784_593 : StackLang.HolProg 64 :=
.seq AllocBody784_54 AllocBody784_592

def AllocBody784_594 : StackLang.HolProg 64 :=
.seq AllocBody784_53 AllocBody784_593

def AllocBody784_595 : StackLang.HolProg 64 :=
.seq AllocBody784_52 AllocBody784_594

def AllocBody784_596 : StackLang.HolProg 64 :=
.seq AllocBody784_9 AllocBody784_595

def AllocBody784_597 : StackLang.HolProg 64 :=
.seq AllocBody784_0 AllocBody784_596

def Alloc784 : Nat × StackLang.HolProg 64 := (784, AllocBody784_597)
theorem Alloc784_eq : StackAlloc.progComp (784, raw784) = Alloc784 := by
  kernel_rfl
#print axioms Alloc784_eq
end InitECandidate.Proofs.BackendStages
