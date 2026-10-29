import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw319
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody319_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody319_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody319_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody319_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody319_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody319_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody319_6 : StackLang.HolProg 64 :=
.seq AllocBody319_4 AllocBody319_5

def AllocBody319_7 : StackLang.HolProg 64 :=
.seq AllocBody319_3 AllocBody319_6

def AllocBody319_8 : StackLang.HolProg 64 :=
.seq AllocBody319_2 AllocBody319_7

def AllocBody319_9 : StackLang.HolProg 64 :=
.seq AllocBody319_1 AllocBody319_8

def AllocBody319_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 892#64)

def AllocBody319_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_13 : StackLang.HolProg 64 :=
.seq AllocBody319_11 AllocBody319_12

def AllocBody319_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody319_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody319_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 3

def AllocBody319_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody319_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody319_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody319_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody319_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_24 : StackLang.HolProg 64 :=
.seq AllocBody319_22 AllocBody319_23

def AllocBody319_25 : StackLang.HolProg 64 :=
.seq AllocBody319_21 AllocBody319_24

def AllocBody319_26 : StackLang.HolProg 64 :=
.seq AllocBody319_20 AllocBody319_25

def AllocBody319_27 : StackLang.HolProg 64 :=
.seq AllocBody319_19 AllocBody319_26

def AllocBody319_28 : StackLang.HolProg 64 :=
.seq AllocBody319_18 AllocBody319_27

def AllocBody319_29 : StackLang.HolProg 64 :=
.seq AllocBody319_17 AllocBody319_28

def AllocBody319_30 : StackLang.HolProg 64 :=
.seq AllocBody319_16 AllocBody319_29

def AllocBody319_31 : StackLang.HolProg 64 :=
.seq AllocBody319_15 AllocBody319_30

def AllocBody319_32 : StackLang.HolProg 64 :=
.seq AllocBody319_14 AllocBody319_31

def AllocBody319_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody319_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody319_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody319_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody319_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody319_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody319_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody319_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody319_44 : StackLang.HolProg 64 :=
.seq AllocBody319_42 AllocBody319_43

def AllocBody319_45 : StackLang.HolProg 64 :=
.seq AllocBody319_41 AllocBody319_44

def AllocBody319_46 : StackLang.HolProg 64 :=
.seq AllocBody319_40 AllocBody319_45

def AllocBody319_47 : StackLang.HolProg 64 :=
.seq AllocBody319_39 AllocBody319_46

def AllocBody319_48 : StackLang.HolProg 64 :=
.seq AllocBody319_38 AllocBody319_47

def AllocBody319_49 : StackLang.HolProg 64 :=
.seq AllocBody319_37 AllocBody319_48

def AllocBody319_50 : StackLang.HolProg 64 :=
.seq AllocBody319_36 AllocBody319_49

def AllocBody319_51 : StackLang.HolProg 64 :=
.seq AllocBody319_35 AllocBody319_50

def AllocBody319_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody319_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody319_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody319_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody319_56 : StackLang.HolProg 64 :=
.seq AllocBody319_54 AllocBody319_55

def AllocBody319_57 : StackLang.HolProg 64 :=
.seq AllocBody319_53 AllocBody319_56

def AllocBody319_58 : StackLang.HolProg 64 :=
.seq AllocBody319_52 AllocBody319_57

def AllocBody319_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody319_60 : StackLang.HolProg 64 :=
.seq AllocBody319_58 AllocBody319_59

def AllocBody319_61 : StackLang.HolProg 64 :=
.call (some (AllocBody319_51, 0, 319, 2)) (Sum.inl 75) (some (AllocBody319_60, 319, 3))

def AllocBody319_62 : StackLang.HolProg 64 :=
.seq AllocBody319_34 AllocBody319_61

def AllocBody319_63 : StackLang.HolProg 64 :=
.seq AllocBody319_33 AllocBody319_62

def AllocBody319_64 : StackLang.HolProg 64 :=
.seq AllocBody319_32 AllocBody319_63

def AllocBody319_65 : StackLang.HolProg 64 :=
.seq AllocBody319_13 AllocBody319_64

def AllocBody319_66 : StackLang.HolProg 64 :=
.seq AllocBody319_10 AllocBody319_65

def AllocBody319_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody319_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody319_70 : StackLang.HolProg 64 :=
.seq AllocBody319_68 AllocBody319_69

def AllocBody319_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 893#64)

def AllocBody319_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_74 : StackLang.HolProg 64 :=
.seq AllocBody319_72 AllocBody319_73

def AllocBody319_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody319_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody319_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 7

def AllocBody319_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody319_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody319_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody319_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody319_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_85 : StackLang.HolProg 64 :=
.seq AllocBody319_83 AllocBody319_84

def AllocBody319_86 : StackLang.HolProg 64 :=
.seq AllocBody319_82 AllocBody319_85

def AllocBody319_87 : StackLang.HolProg 64 :=
.seq AllocBody319_81 AllocBody319_86

def AllocBody319_88 : StackLang.HolProg 64 :=
.seq AllocBody319_80 AllocBody319_87

def AllocBody319_89 : StackLang.HolProg 64 :=
.seq AllocBody319_79 AllocBody319_88

def AllocBody319_90 : StackLang.HolProg 64 :=
.seq AllocBody319_78 AllocBody319_89

def AllocBody319_91 : StackLang.HolProg 64 :=
.seq AllocBody319_77 AllocBody319_90

def AllocBody319_92 : StackLang.HolProg 64 :=
.seq AllocBody319_76 AllocBody319_91

def AllocBody319_93 : StackLang.HolProg 64 :=
.seq AllocBody319_75 AllocBody319_92

def AllocBody319_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody319_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody319_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody319_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody319_101 : StackLang.HolProg 64 :=
.seq AllocBody319_99 AllocBody319_100

def AllocBody319_102 : StackLang.HolProg 64 :=
.seq AllocBody319_98 AllocBody319_101

def AllocBody319_103 : StackLang.HolProg 64 :=
.seq AllocBody319_97 AllocBody319_102

def AllocBody319_104 : StackLang.HolProg 64 :=
.seq AllocBody319_96 AllocBody319_103

def AllocBody319_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody319_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody319_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody319_108 : StackLang.HolProg 64 :=
.seq AllocBody319_106 AllocBody319_107

def AllocBody319_109 : StackLang.HolProg 64 :=
.seq AllocBody319_105 AllocBody319_108

def AllocBody319_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody319_112 : StackLang.HolProg 64 :=
.seq AllocBody319_110 AllocBody319_111

def AllocBody319_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody319_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody319_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody319_117 : StackLang.HolProg 64 :=
.seq AllocBody319_115 AllocBody319_116

def AllocBody319_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 894#64)

def AllocBody319_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_121 : StackLang.HolProg 64 :=
.seq AllocBody319_119 AllocBody319_120

def AllocBody319_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody319_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody319_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 6

def AllocBody319_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody319_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody319_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody319_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody319_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_132 : StackLang.HolProg 64 :=
.seq AllocBody319_130 AllocBody319_131

def AllocBody319_133 : StackLang.HolProg 64 :=
.seq AllocBody319_129 AllocBody319_132

def AllocBody319_134 : StackLang.HolProg 64 :=
.seq AllocBody319_128 AllocBody319_133

def AllocBody319_135 : StackLang.HolProg 64 :=
.seq AllocBody319_127 AllocBody319_134

def AllocBody319_136 : StackLang.HolProg 64 :=
.seq AllocBody319_126 AllocBody319_135

def AllocBody319_137 : StackLang.HolProg 64 :=
.seq AllocBody319_125 AllocBody319_136

def AllocBody319_138 : StackLang.HolProg 64 :=
.seq AllocBody319_124 AllocBody319_137

def AllocBody319_139 : StackLang.HolProg 64 :=
.seq AllocBody319_123 AllocBody319_138

def AllocBody319_140 : StackLang.HolProg 64 :=
.seq AllocBody319_122 AllocBody319_139

def AllocBody319_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody319_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody319_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody319_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody319_148 : StackLang.HolProg 64 :=
.seq AllocBody319_146 AllocBody319_147

def AllocBody319_149 : StackLang.HolProg 64 :=
.seq AllocBody319_145 AllocBody319_148

def AllocBody319_150 : StackLang.HolProg 64 :=
.seq AllocBody319_144 AllocBody319_149

def AllocBody319_151 : StackLang.HolProg 64 :=
.seq AllocBody319_143 AllocBody319_150

def AllocBody319_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody319_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody319_154 : StackLang.HolProg 64 :=
.seq AllocBody319_152 AllocBody319_153

def AllocBody319_155 : StackLang.HolProg 64 :=
.call (some (AllocBody319_151, 0, 319, 5)) (Sum.inl 76) (some (AllocBody319_154, 319, 6))

def AllocBody319_156 : StackLang.HolProg 64 :=
.seq AllocBody319_142 AllocBody319_155

def AllocBody319_157 : StackLang.HolProg 64 :=
.seq AllocBody319_141 AllocBody319_156

def AllocBody319_158 : StackLang.HolProg 64 :=
.seq AllocBody319_140 AllocBody319_157

def AllocBody319_159 : StackLang.HolProg 64 :=
.seq AllocBody319_121 AllocBody319_158

def AllocBody319_160 : StackLang.HolProg 64 :=
.seq AllocBody319_118 AllocBody319_159

def AllocBody319_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def AllocBody319_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody319_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody319_167 : StackLang.HolProg 64 :=
.seq AllocBody319_165 AllocBody319_166

def AllocBody319_168 : StackLang.HolProg 64 :=
.seq AllocBody319_164 AllocBody319_167

def AllocBody319_169 : StackLang.HolProg 64 :=
.seq AllocBody319_163 AllocBody319_168

def AllocBody319_170 : StackLang.HolProg 64 :=
.seq AllocBody319_162 AllocBody319_169

def AllocBody319_171 : StackLang.HolProg 64 :=
.seq AllocBody319_161 AllocBody319_170

def AllocBody319_172 : StackLang.HolProg 64 :=
.seq AllocBody319_160 AllocBody319_171

def AllocBody319_173 : StackLang.HolProg 64 :=
.seq AllocBody319_117 AllocBody319_172

def AllocBody319_174 : StackLang.HolProg 64 :=
.seq AllocBody319_114 AllocBody319_173

def AllocBody319_175 : StackLang.HolProg 64 :=
.seq AllocBody319_113 AllocBody319_174

def AllocBody319_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) AllocBody319_112 AllocBody319_175

def AllocBody319_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody319_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody319_180 : StackLang.HolProg 64 :=
.seq AllocBody319_178 AllocBody319_179

def AllocBody319_181 : StackLang.HolProg 64 :=
.seq AllocBody319_177 AllocBody319_180

def AllocBody319_182 : StackLang.HolProg 64 :=
.seq AllocBody319_176 AllocBody319_181

def AllocBody319_183 : StackLang.HolProg 64 :=
.seq AllocBody319_109 AllocBody319_182

def AllocBody319_184 : StackLang.HolProg 64 :=
.call (some (AllocBody319_104, 0, 319, 4)) (Sum.inl 318) (some (AllocBody319_183, 319, 7))

def AllocBody319_185 : StackLang.HolProg 64 :=
.seq AllocBody319_95 AllocBody319_184

def AllocBody319_186 : StackLang.HolProg 64 :=
.seq AllocBody319_94 AllocBody319_185

def AllocBody319_187 : StackLang.HolProg 64 :=
.seq AllocBody319_93 AllocBody319_186

def AllocBody319_188 : StackLang.HolProg 64 :=
.seq AllocBody319_74 AllocBody319_187

def AllocBody319_189 : StackLang.HolProg 64 :=
.seq AllocBody319_71 AllocBody319_188

def AllocBody319_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody319_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody319_193 : StackLang.HolProg 64 :=
.seq AllocBody319_191 AllocBody319_192

def AllocBody319_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 895#64)

def AllocBody319_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_197 : StackLang.HolProg 64 :=
.seq AllocBody319_195 AllocBody319_196

def AllocBody319_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody319_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody319_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody319_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 319 9

def AllocBody319_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody319_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody319_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody319_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody319_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_208 : StackLang.HolProg 64 :=
.seq AllocBody319_206 AllocBody319_207

def AllocBody319_209 : StackLang.HolProg 64 :=
.seq AllocBody319_205 AllocBody319_208

def AllocBody319_210 : StackLang.HolProg 64 :=
.seq AllocBody319_204 AllocBody319_209

def AllocBody319_211 : StackLang.HolProg 64 :=
.seq AllocBody319_203 AllocBody319_210

def AllocBody319_212 : StackLang.HolProg 64 :=
.seq AllocBody319_202 AllocBody319_211

def AllocBody319_213 : StackLang.HolProg 64 :=
.seq AllocBody319_201 AllocBody319_212

def AllocBody319_214 : StackLang.HolProg 64 :=
.seq AllocBody319_200 AllocBody319_213

def AllocBody319_215 : StackLang.HolProg 64 :=
.seq AllocBody319_199 AllocBody319_214

def AllocBody319_216 : StackLang.HolProg 64 :=
.seq AllocBody319_198 AllocBody319_215

def AllocBody319_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody319_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody319_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody319_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody319_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody319_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody319_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody319_225 : StackLang.HolProg 64 :=
.seq AllocBody319_223 AllocBody319_224

def AllocBody319_226 : StackLang.HolProg 64 :=
.seq AllocBody319_222 AllocBody319_225

def AllocBody319_227 : StackLang.HolProg 64 :=
.seq AllocBody319_221 AllocBody319_226

def AllocBody319_228 : StackLang.HolProg 64 :=
.seq AllocBody319_220 AllocBody319_227

def AllocBody319_229 : StackLang.HolProg 64 :=
.seq AllocBody319_219 AllocBody319_228

def AllocBody319_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody319_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody319_232 : StackLang.HolProg 64 :=
.seq AllocBody319_230 AllocBody319_231

def AllocBody319_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody319_234 : StackLang.HolProg 64 :=
.seq AllocBody319_232 AllocBody319_233

def AllocBody319_235 : StackLang.HolProg 64 :=
.call (some (AllocBody319_229, 0, 319, 8)) (Sum.inl 76) (some (AllocBody319_234, 319, 9))

def AllocBody319_236 : StackLang.HolProg 64 :=
.seq AllocBody319_218 AllocBody319_235

def AllocBody319_237 : StackLang.HolProg 64 :=
.seq AllocBody319_217 AllocBody319_236

def AllocBody319_238 : StackLang.HolProg 64 :=
.seq AllocBody319_216 AllocBody319_237

def AllocBody319_239 : StackLang.HolProg 64 :=
.seq AllocBody319_197 AllocBody319_238

def AllocBody319_240 : StackLang.HolProg 64 :=
.seq AllocBody319_194 AllocBody319_239

def AllocBody319_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody319_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody319_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody319_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody319_245 : StackLang.HolProg 64 :=
.seq AllocBody319_243 AllocBody319_244

def AllocBody319_246 : StackLang.HolProg 64 :=
.seq AllocBody319_242 AllocBody319_245

def AllocBody319_247 : StackLang.HolProg 64 :=
.seq AllocBody319_241 AllocBody319_246

def AllocBody319_248 : StackLang.HolProg 64 :=
.seq AllocBody319_240 AllocBody319_247

def AllocBody319_249 : StackLang.HolProg 64 :=
.seq AllocBody319_193 AllocBody319_248

def AllocBody319_250 : StackLang.HolProg 64 :=
.seq AllocBody319_190 AllocBody319_249

def AllocBody319_251 : StackLang.HolProg 64 :=
.seq AllocBody319_189 AllocBody319_250

def AllocBody319_252 : StackLang.HolProg 64 :=
.seq AllocBody319_70 AllocBody319_251

def AllocBody319_253 : StackLang.HolProg 64 :=
.seq AllocBody319_67 AllocBody319_252

def AllocBody319_254 : StackLang.HolProg 64 :=
.seq AllocBody319_66 AllocBody319_253

def AllocBody319_255 : StackLang.HolProg 64 :=
.seq AllocBody319_9 AllocBody319_254

def AllocBody319_256 : StackLang.HolProg 64 :=
.seq AllocBody319_0 AllocBody319_255

def Alloc319 : Nat × StackLang.HolProg 64 := (319, AllocBody319_256)
theorem Alloc319_eq : StackAlloc.progComp (319, raw319) = Alloc319 := by
  kernel_rfl
#print axioms Alloc319_eq
end InitECandidate.Proofs.BackendStages
