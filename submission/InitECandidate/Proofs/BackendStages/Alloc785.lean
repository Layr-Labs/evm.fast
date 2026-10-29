import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw785
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody785_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody785_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody785_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody785_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody785_4 : StackLang.HolProg 64 :=
.seq AllocBody785_2 AllocBody785_3

def AllocBody785_5 : StackLang.HolProg 64 :=
.seq AllocBody785_1 AllocBody785_4

def AllocBody785_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3625#64)

def AllocBody785_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_9 : StackLang.HolProg 64 :=
.seq AllocBody785_7 AllocBody785_8

def AllocBody785_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 3

def AllocBody785_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_20 : StackLang.HolProg 64 :=
.seq AllocBody785_18 AllocBody785_19

def AllocBody785_21 : StackLang.HolProg 64 :=
.seq AllocBody785_17 AllocBody785_20

def AllocBody785_22 : StackLang.HolProg 64 :=
.seq AllocBody785_16 AllocBody785_21

def AllocBody785_23 : StackLang.HolProg 64 :=
.seq AllocBody785_15 AllocBody785_22

def AllocBody785_24 : StackLang.HolProg 64 :=
.seq AllocBody785_14 AllocBody785_23

def AllocBody785_25 : StackLang.HolProg 64 :=
.seq AllocBody785_13 AllocBody785_24

def AllocBody785_26 : StackLang.HolProg 64 :=
.seq AllocBody785_12 AllocBody785_25

def AllocBody785_27 : StackLang.HolProg 64 :=
.seq AllocBody785_11 AllocBody785_26

def AllocBody785_28 : StackLang.HolProg 64 :=
.seq AllocBody785_10 AllocBody785_27

def AllocBody785_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody785_36 : StackLang.HolProg 64 :=
.seq AllocBody785_34 AllocBody785_35

def AllocBody785_37 : StackLang.HolProg 64 :=
.seq AllocBody785_33 AllocBody785_36

def AllocBody785_38 : StackLang.HolProg 64 :=
.seq AllocBody785_32 AllocBody785_37

def AllocBody785_39 : StackLang.HolProg 64 :=
.seq AllocBody785_31 AllocBody785_38

def AllocBody785_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_42 : StackLang.HolProg 64 :=
.seq AllocBody785_40 AllocBody785_41

def AllocBody785_43 : StackLang.HolProg 64 :=
.call (some (AllocBody785_39, 0, 785, 2)) (Sum.inl 69) (some (AllocBody785_42, 785, 3))

def AllocBody785_44 : StackLang.HolProg 64 :=
.seq AllocBody785_30 AllocBody785_43

def AllocBody785_45 : StackLang.HolProg 64 :=
.seq AllocBody785_29 AllocBody785_44

def AllocBody785_46 : StackLang.HolProg 64 :=
.seq AllocBody785_28 AllocBody785_45

def AllocBody785_47 : StackLang.HolProg 64 :=
.seq AllocBody785_9 AllocBody785_46

def AllocBody785_48 : StackLang.HolProg 64 :=
.seq AllocBody785_6 AllocBody785_47

def AllocBody785_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody785_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody785_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3626#64)

def AllocBody785_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_55 : StackLang.HolProg 64 :=
.seq AllocBody785_53 AllocBody785_54

def AllocBody785_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 5

def AllocBody785_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_66 : StackLang.HolProg 64 :=
.seq AllocBody785_64 AllocBody785_65

def AllocBody785_67 : StackLang.HolProg 64 :=
.seq AllocBody785_63 AllocBody785_66

def AllocBody785_68 : StackLang.HolProg 64 :=
.seq AllocBody785_62 AllocBody785_67

def AllocBody785_69 : StackLang.HolProg 64 :=
.seq AllocBody785_61 AllocBody785_68

def AllocBody785_70 : StackLang.HolProg 64 :=
.seq AllocBody785_60 AllocBody785_69

def AllocBody785_71 : StackLang.HolProg 64 :=
.seq AllocBody785_59 AllocBody785_70

def AllocBody785_72 : StackLang.HolProg 64 :=
.seq AllocBody785_58 AllocBody785_71

def AllocBody785_73 : StackLang.HolProg 64 :=
.seq AllocBody785_57 AllocBody785_72

def AllocBody785_74 : StackLang.HolProg 64 :=
.seq AllocBody785_56 AllocBody785_73

def AllocBody785_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody785_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody785_83 : StackLang.HolProg 64 :=
.seq AllocBody785_81 AllocBody785_82

def AllocBody785_84 : StackLang.HolProg 64 :=
.seq AllocBody785_80 AllocBody785_83

def AllocBody785_85 : StackLang.HolProg 64 :=
.seq AllocBody785_79 AllocBody785_84

def AllocBody785_86 : StackLang.HolProg 64 :=
.seq AllocBody785_78 AllocBody785_85

def AllocBody785_87 : StackLang.HolProg 64 :=
.seq AllocBody785_77 AllocBody785_86

def AllocBody785_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody785_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_90 : StackLang.HolProg 64 :=
.seq AllocBody785_88 AllocBody785_89

def AllocBody785_91 : StackLang.HolProg 64 :=
.call (some (AllocBody785_87, 0, 785, 4)) (Sum.inl 68) (some (AllocBody785_90, 785, 5))

def AllocBody785_92 : StackLang.HolProg 64 :=
.seq AllocBody785_76 AllocBody785_91

def AllocBody785_93 : StackLang.HolProg 64 :=
.seq AllocBody785_75 AllocBody785_92

def AllocBody785_94 : StackLang.HolProg 64 :=
.seq AllocBody785_74 AllocBody785_93

def AllocBody785_95 : StackLang.HolProg 64 :=
.seq AllocBody785_55 AllocBody785_94

def AllocBody785_96 : StackLang.HolProg 64 :=
.seq AllocBody785_52 AllocBody785_95

def AllocBody785_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody785_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody785_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody785_101 : StackLang.HolProg 64 :=
.seq AllocBody785_99 AllocBody785_100

def AllocBody785_102 : StackLang.HolProg 64 :=
.seq AllocBody785_98 AllocBody785_101

def AllocBody785_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3627#64)

def AllocBody785_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_106 : StackLang.HolProg 64 :=
.seq AllocBody785_104 AllocBody785_105

def AllocBody785_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 7

def AllocBody785_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_117 : StackLang.HolProg 64 :=
.seq AllocBody785_115 AllocBody785_116

def AllocBody785_118 : StackLang.HolProg 64 :=
.seq AllocBody785_114 AllocBody785_117

def AllocBody785_119 : StackLang.HolProg 64 :=
.seq AllocBody785_113 AllocBody785_118

def AllocBody785_120 : StackLang.HolProg 64 :=
.seq AllocBody785_112 AllocBody785_119

def AllocBody785_121 : StackLang.HolProg 64 :=
.seq AllocBody785_111 AllocBody785_120

def AllocBody785_122 : StackLang.HolProg 64 :=
.seq AllocBody785_110 AllocBody785_121

def AllocBody785_123 : StackLang.HolProg 64 :=
.seq AllocBody785_109 AllocBody785_122

def AllocBody785_124 : StackLang.HolProg 64 :=
.seq AllocBody785_108 AllocBody785_123

def AllocBody785_125 : StackLang.HolProg 64 :=
.seq AllocBody785_107 AllocBody785_124

def AllocBody785_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody785_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody785_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody785_135 : StackLang.HolProg 64 :=
.seq AllocBody785_133 AllocBody785_134

def AllocBody785_136 : StackLang.HolProg 64 :=
.seq AllocBody785_132 AllocBody785_135

def AllocBody785_137 : StackLang.HolProg 64 :=
.seq AllocBody785_131 AllocBody785_136

def AllocBody785_138 : StackLang.HolProg 64 :=
.seq AllocBody785_130 AllocBody785_137

def AllocBody785_139 : StackLang.HolProg 64 :=
.seq AllocBody785_129 AllocBody785_138

def AllocBody785_140 : StackLang.HolProg 64 :=
.seq AllocBody785_128 AllocBody785_139

def AllocBody785_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody785_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody785_143 : StackLang.HolProg 64 :=
.seq AllocBody785_141 AllocBody785_142

def AllocBody785_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_145 : StackLang.HolProg 64 :=
.seq AllocBody785_143 AllocBody785_144

def AllocBody785_146 : StackLang.HolProg 64 :=
.call (some (AllocBody785_140, 0, 785, 6)) (Sum.inl 779) (some (AllocBody785_145, 785, 7))

def AllocBody785_147 : StackLang.HolProg 64 :=
.seq AllocBody785_127 AllocBody785_146

def AllocBody785_148 : StackLang.HolProg 64 :=
.seq AllocBody785_126 AllocBody785_147

def AllocBody785_149 : StackLang.HolProg 64 :=
.seq AllocBody785_125 AllocBody785_148

def AllocBody785_150 : StackLang.HolProg 64 :=
.seq AllocBody785_106 AllocBody785_149

def AllocBody785_151 : StackLang.HolProg 64 :=
.seq AllocBody785_103 AllocBody785_150

def AllocBody785_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody785_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 1

def AllocBody785_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def AllocBody785_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody785_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody785_160 : StackLang.HolProg 64 :=
.seq AllocBody785_158 AllocBody785_159

def AllocBody785_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody785_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody785_163 : StackLang.HolProg 64 :=
.seq AllocBody785_161 AllocBody785_162

def AllocBody785_164 : StackLang.HolProg 64 :=
.seq AllocBody785_160 AllocBody785_163

def AllocBody785_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3628#64)

def AllocBody785_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_168 : StackLang.HolProg 64 :=
.seq AllocBody785_166 AllocBody785_167

def AllocBody785_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 9

def AllocBody785_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_179 : StackLang.HolProg 64 :=
.seq AllocBody785_177 AllocBody785_178

def AllocBody785_180 : StackLang.HolProg 64 :=
.seq AllocBody785_176 AllocBody785_179

def AllocBody785_181 : StackLang.HolProg 64 :=
.seq AllocBody785_175 AllocBody785_180

def AllocBody785_182 : StackLang.HolProg 64 :=
.seq AllocBody785_174 AllocBody785_181

def AllocBody785_183 : StackLang.HolProg 64 :=
.seq AllocBody785_173 AllocBody785_182

def AllocBody785_184 : StackLang.HolProg 64 :=
.seq AllocBody785_172 AllocBody785_183

def AllocBody785_185 : StackLang.HolProg 64 :=
.seq AllocBody785_171 AllocBody785_184

def AllocBody785_186 : StackLang.HolProg 64 :=
.seq AllocBody785_170 AllocBody785_185

def AllocBody785_187 : StackLang.HolProg 64 :=
.seq AllocBody785_169 AllocBody785_186

def AllocBody785_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody785_195 : StackLang.HolProg 64 :=
.seq AllocBody785_193 AllocBody785_194

def AllocBody785_196 : StackLang.HolProg 64 :=
.seq AllocBody785_192 AllocBody785_195

def AllocBody785_197 : StackLang.HolProg 64 :=
.seq AllocBody785_191 AllocBody785_196

def AllocBody785_198 : StackLang.HolProg 64 :=
.seq AllocBody785_190 AllocBody785_197

def AllocBody785_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody785_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_201 : StackLang.HolProg 64 :=
.seq AllocBody785_199 AllocBody785_200

def AllocBody785_202 : StackLang.HolProg 64 :=
.call (some (AllocBody785_198, 0, 785, 8)) (Sum.inl 78) (some (AllocBody785_201, 785, 9))

def AllocBody785_203 : StackLang.HolProg 64 :=
.seq AllocBody785_189 AllocBody785_202

def AllocBody785_204 : StackLang.HolProg 64 :=
.seq AllocBody785_188 AllocBody785_203

def AllocBody785_205 : StackLang.HolProg 64 :=
.seq AllocBody785_187 AllocBody785_204

def AllocBody785_206 : StackLang.HolProg 64 :=
.seq AllocBody785_168 AllocBody785_205

def AllocBody785_207 : StackLang.HolProg 64 :=
.seq AllocBody785_165 AllocBody785_206

def AllocBody785_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody785_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3629#64)

def AllocBody785_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_213 : StackLang.HolProg 64 :=
.seq AllocBody785_211 AllocBody785_212

def AllocBody785_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 11

def AllocBody785_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_224 : StackLang.HolProg 64 :=
.seq AllocBody785_222 AllocBody785_223

def AllocBody785_225 : StackLang.HolProg 64 :=
.seq AllocBody785_221 AllocBody785_224

def AllocBody785_226 : StackLang.HolProg 64 :=
.seq AllocBody785_220 AllocBody785_225

def AllocBody785_227 : StackLang.HolProg 64 :=
.seq AllocBody785_219 AllocBody785_226

def AllocBody785_228 : StackLang.HolProg 64 :=
.seq AllocBody785_218 AllocBody785_227

def AllocBody785_229 : StackLang.HolProg 64 :=
.seq AllocBody785_217 AllocBody785_228

def AllocBody785_230 : StackLang.HolProg 64 :=
.seq AllocBody785_216 AllocBody785_229

def AllocBody785_231 : StackLang.HolProg 64 :=
.seq AllocBody785_215 AllocBody785_230

def AllocBody785_232 : StackLang.HolProg 64 :=
.seq AllocBody785_214 AllocBody785_231

def AllocBody785_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_240 : StackLang.HolProg 64 :=
.seq AllocBody785_238 AllocBody785_239

def AllocBody785_241 : StackLang.HolProg 64 :=
.seq AllocBody785_237 AllocBody785_240

def AllocBody785_242 : StackLang.HolProg 64 :=
.seq AllocBody785_236 AllocBody785_241

def AllocBody785_243 : StackLang.HolProg 64 :=
.seq AllocBody785_235 AllocBody785_242

def AllocBody785_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_246 : StackLang.HolProg 64 :=
.seq AllocBody785_244 AllocBody785_245

def AllocBody785_247 : StackLang.HolProg 64 :=
.call (some (AllocBody785_243, 0, 785, 10)) (Sum.inl 70) (some (AllocBody785_246, 785, 11))

def AllocBody785_248 : StackLang.HolProg 64 :=
.seq AllocBody785_234 AllocBody785_247

def AllocBody785_249 : StackLang.HolProg 64 :=
.seq AllocBody785_233 AllocBody785_248

def AllocBody785_250 : StackLang.HolProg 64 :=
.seq AllocBody785_232 AllocBody785_249

def AllocBody785_251 : StackLang.HolProg 64 :=
.seq AllocBody785_213 AllocBody785_250

def AllocBody785_252 : StackLang.HolProg 64 :=
.seq AllocBody785_210 AllocBody785_251

def AllocBody785_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody785_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody785_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody785_258 : StackLang.HolProg 64 :=
.seq AllocBody785_256 AllocBody785_257

def AllocBody785_259 : StackLang.HolProg 64 :=
.seq AllocBody785_255 AllocBody785_258

def AllocBody785_260 : StackLang.HolProg 64 :=
.seq AllocBody785_254 AllocBody785_259

def AllocBody785_261 : StackLang.HolProg 64 :=
.seq AllocBody785_253 AllocBody785_260

def AllocBody785_262 : StackLang.HolProg 64 :=
.seq AllocBody785_252 AllocBody785_261

def AllocBody785_263 : StackLang.HolProg 64 :=
.seq AllocBody785_209 AllocBody785_262

def AllocBody785_264 : StackLang.HolProg 64 :=
.seq AllocBody785_208 AllocBody785_263

def AllocBody785_265 : StackLang.HolProg 64 :=
.seq AllocBody785_207 AllocBody785_264

def AllocBody785_266 : StackLang.HolProg 64 :=
.seq AllocBody785_164 AllocBody785_265

def AllocBody785_267 : StackLang.HolProg 64 :=
.seq AllocBody785_157 AllocBody785_266

def AllocBody785_268 : StackLang.HolProg 64 :=
.seq AllocBody785_156 AllocBody785_267

def AllocBody785_269 : StackLang.HolProg 64 :=
.seq AllocBody785_155 AllocBody785_268

def AllocBody785_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody785_269 AllocBody785_270

def AllocBody785_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody785_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody785_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody785_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody785_278 : StackLang.HolProg 64 :=
.seq AllocBody785_276 AllocBody785_277

def AllocBody785_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3630#64)

def AllocBody785_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_282 : StackLang.HolProg 64 :=
.seq AllocBody785_280 AllocBody785_281

def AllocBody785_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 13

def AllocBody785_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_293 : StackLang.HolProg 64 :=
.seq AllocBody785_291 AllocBody785_292

def AllocBody785_294 : StackLang.HolProg 64 :=
.seq AllocBody785_290 AllocBody785_293

def AllocBody785_295 : StackLang.HolProg 64 :=
.seq AllocBody785_289 AllocBody785_294

def AllocBody785_296 : StackLang.HolProg 64 :=
.seq AllocBody785_288 AllocBody785_295

def AllocBody785_297 : StackLang.HolProg 64 :=
.seq AllocBody785_287 AllocBody785_296

def AllocBody785_298 : StackLang.HolProg 64 :=
.seq AllocBody785_286 AllocBody785_297

def AllocBody785_299 : StackLang.HolProg 64 :=
.seq AllocBody785_285 AllocBody785_298

def AllocBody785_300 : StackLang.HolProg 64 :=
.seq AllocBody785_284 AllocBody785_299

def AllocBody785_301 : StackLang.HolProg 64 :=
.seq AllocBody785_283 AllocBody785_300

def AllocBody785_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody785_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody785_311 : StackLang.HolProg 64 :=
.seq AllocBody785_309 AllocBody785_310

def AllocBody785_312 : StackLang.HolProg 64 :=
.seq AllocBody785_308 AllocBody785_311

def AllocBody785_313 : StackLang.HolProg 64 :=
.seq AllocBody785_307 AllocBody785_312

def AllocBody785_314 : StackLang.HolProg 64 :=
.seq AllocBody785_306 AllocBody785_313

def AllocBody785_315 : StackLang.HolProg 64 :=
.seq AllocBody785_305 AllocBody785_314

def AllocBody785_316 : StackLang.HolProg 64 :=
.seq AllocBody785_304 AllocBody785_315

def AllocBody785_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody785_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody785_320 : StackLang.HolProg 64 :=
.seq AllocBody785_318 AllocBody785_319

def AllocBody785_321 : StackLang.HolProg 64 :=
.seq AllocBody785_317 AllocBody785_320

def AllocBody785_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_323 : StackLang.HolProg 64 :=
.seq AllocBody785_321 AllocBody785_322

def AllocBody785_324 : StackLang.HolProg 64 :=
.call (some (AllocBody785_316, 0, 785, 12)) (Sum.inl 743) (some (AllocBody785_323, 785, 13))

def AllocBody785_325 : StackLang.HolProg 64 :=
.seq AllocBody785_303 AllocBody785_324

def AllocBody785_326 : StackLang.HolProg 64 :=
.seq AllocBody785_302 AllocBody785_325

def AllocBody785_327 : StackLang.HolProg 64 :=
.seq AllocBody785_301 AllocBody785_326

def AllocBody785_328 : StackLang.HolProg 64 :=
.seq AllocBody785_282 AllocBody785_327

def AllocBody785_329 : StackLang.HolProg 64 :=
.seq AllocBody785_279 AllocBody785_328

def AllocBody785_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody785_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody785_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody785_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody785_335 : StackLang.HolProg 64 :=
.seq AllocBody785_333 AllocBody785_334

def AllocBody785_336 : StackLang.HolProg 64 :=
.seq AllocBody785_332 AllocBody785_335

def AllocBody785_337 : StackLang.HolProg 64 :=
.seq AllocBody785_331 AllocBody785_336

def AllocBody785_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3631#64)

def AllocBody785_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_341 : StackLang.HolProg 64 :=
.seq AllocBody785_339 AllocBody785_340

def AllocBody785_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 15

def AllocBody785_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_352 : StackLang.HolProg 64 :=
.seq AllocBody785_350 AllocBody785_351

def AllocBody785_353 : StackLang.HolProg 64 :=
.seq AllocBody785_349 AllocBody785_352

def AllocBody785_354 : StackLang.HolProg 64 :=
.seq AllocBody785_348 AllocBody785_353

def AllocBody785_355 : StackLang.HolProg 64 :=
.seq AllocBody785_347 AllocBody785_354

def AllocBody785_356 : StackLang.HolProg 64 :=
.seq AllocBody785_346 AllocBody785_355

def AllocBody785_357 : StackLang.HolProg 64 :=
.seq AllocBody785_345 AllocBody785_356

def AllocBody785_358 : StackLang.HolProg 64 :=
.seq AllocBody785_344 AllocBody785_357

def AllocBody785_359 : StackLang.HolProg 64 :=
.seq AllocBody785_343 AllocBody785_358

def AllocBody785_360 : StackLang.HolProg 64 :=
.seq AllocBody785_342 AllocBody785_359

def AllocBody785_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody785_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody785_370 : StackLang.HolProg 64 :=
.seq AllocBody785_368 AllocBody785_369

def AllocBody785_371 : StackLang.HolProg 64 :=
.seq AllocBody785_367 AllocBody785_370

def AllocBody785_372 : StackLang.HolProg 64 :=
.seq AllocBody785_366 AllocBody785_371

def AllocBody785_373 : StackLang.HolProg 64 :=
.seq AllocBody785_365 AllocBody785_372

def AllocBody785_374 : StackLang.HolProg 64 :=
.seq AllocBody785_364 AllocBody785_373

def AllocBody785_375 : StackLang.HolProg 64 :=
.seq AllocBody785_363 AllocBody785_374

def AllocBody785_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody785_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody785_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody785_379 : StackLang.HolProg 64 :=
.seq AllocBody785_377 AllocBody785_378

def AllocBody785_380 : StackLang.HolProg 64 :=
.seq AllocBody785_376 AllocBody785_379

def AllocBody785_381 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_382 : StackLang.HolProg 64 :=
.seq AllocBody785_380 AllocBody785_381

def AllocBody785_383 : StackLang.HolProg 64 :=
.call (some (AllocBody785_375, 0, 785, 14)) (Sum.inl 739) (some (AllocBody785_382, 785, 15))

def AllocBody785_384 : StackLang.HolProg 64 :=
.seq AllocBody785_362 AllocBody785_383

def AllocBody785_385 : StackLang.HolProg 64 :=
.seq AllocBody785_361 AllocBody785_384

def AllocBody785_386 : StackLang.HolProg 64 :=
.seq AllocBody785_360 AllocBody785_385

def AllocBody785_387 : StackLang.HolProg 64 :=
.seq AllocBody785_341 AllocBody785_386

def AllocBody785_388 : StackLang.HolProg 64 :=
.seq AllocBody785_338 AllocBody785_387

def AllocBody785_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody785_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody785_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3632#64)

def AllocBody785_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_398 : StackLang.HolProg 64 :=
.seq AllocBody785_396 AllocBody785_397

def AllocBody785_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 17

def AllocBody785_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_409 : StackLang.HolProg 64 :=
.seq AllocBody785_407 AllocBody785_408

def AllocBody785_410 : StackLang.HolProg 64 :=
.seq AllocBody785_406 AllocBody785_409

def AllocBody785_411 : StackLang.HolProg 64 :=
.seq AllocBody785_405 AllocBody785_410

def AllocBody785_412 : StackLang.HolProg 64 :=
.seq AllocBody785_404 AllocBody785_411

def AllocBody785_413 : StackLang.HolProg 64 :=
.seq AllocBody785_403 AllocBody785_412

def AllocBody785_414 : StackLang.HolProg 64 :=
.seq AllocBody785_402 AllocBody785_413

def AllocBody785_415 : StackLang.HolProg 64 :=
.seq AllocBody785_401 AllocBody785_414

def AllocBody785_416 : StackLang.HolProg 64 :=
.seq AllocBody785_400 AllocBody785_415

def AllocBody785_417 : StackLang.HolProg 64 :=
.seq AllocBody785_399 AllocBody785_416

def AllocBody785_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody785_425 : StackLang.HolProg 64 :=
.seq AllocBody785_423 AllocBody785_424

def AllocBody785_426 : StackLang.HolProg 64 :=
.seq AllocBody785_422 AllocBody785_425

def AllocBody785_427 : StackLang.HolProg 64 :=
.seq AllocBody785_421 AllocBody785_426

def AllocBody785_428 : StackLang.HolProg 64 :=
.seq AllocBody785_420 AllocBody785_427

def AllocBody785_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody785_430 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_431 : StackLang.HolProg 64 :=
.seq AllocBody785_429 AllocBody785_430

def AllocBody785_432 : StackLang.HolProg 64 :=
.call (some (AllocBody785_428, 0, 785, 16)) (Sum.inl 739) (some (AllocBody785_431, 785, 17))

def AllocBody785_433 : StackLang.HolProg 64 :=
.seq AllocBody785_419 AllocBody785_432

def AllocBody785_434 : StackLang.HolProg 64 :=
.seq AllocBody785_418 AllocBody785_433

def AllocBody785_435 : StackLang.HolProg 64 :=
.seq AllocBody785_417 AllocBody785_434

def AllocBody785_436 : StackLang.HolProg 64 :=
.seq AllocBody785_398 AllocBody785_435

def AllocBody785_437 : StackLang.HolProg 64 :=
.seq AllocBody785_395 AllocBody785_436

def AllocBody785_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody785_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3633#64)

def AllocBody785_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_443 : StackLang.HolProg 64 :=
.seq AllocBody785_441 AllocBody785_442

def AllocBody785_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody785_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody785_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody785_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 785 19

def AllocBody785_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody785_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody785_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody785_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody785_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_454 : StackLang.HolProg 64 :=
.seq AllocBody785_452 AllocBody785_453

def AllocBody785_455 : StackLang.HolProg 64 :=
.seq AllocBody785_451 AllocBody785_454

def AllocBody785_456 : StackLang.HolProg 64 :=
.seq AllocBody785_450 AllocBody785_455

def AllocBody785_457 : StackLang.HolProg 64 :=
.seq AllocBody785_449 AllocBody785_456

def AllocBody785_458 : StackLang.HolProg 64 :=
.seq AllocBody785_448 AllocBody785_457

def AllocBody785_459 : StackLang.HolProg 64 :=
.seq AllocBody785_447 AllocBody785_458

def AllocBody785_460 : StackLang.HolProg 64 :=
.seq AllocBody785_446 AllocBody785_459

def AllocBody785_461 : StackLang.HolProg 64 :=
.seq AllocBody785_445 AllocBody785_460

def AllocBody785_462 : StackLang.HolProg 64 :=
.seq AllocBody785_444 AllocBody785_461

def AllocBody785_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody785_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody785_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody785_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody785_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody785_470 : StackLang.HolProg 64 :=
.seq AllocBody785_468 AllocBody785_469

def AllocBody785_471 : StackLang.HolProg 64 :=
.seq AllocBody785_467 AllocBody785_470

def AllocBody785_472 : StackLang.HolProg 64 :=
.seq AllocBody785_466 AllocBody785_471

def AllocBody785_473 : StackLang.HolProg 64 :=
.seq AllocBody785_465 AllocBody785_472

def AllocBody785_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody785_475 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody785_476 : StackLang.HolProg 64 :=
.seq AllocBody785_474 AllocBody785_475

def AllocBody785_477 : StackLang.HolProg 64 :=
.call (some (AllocBody785_473, 0, 785, 18)) (Sum.inl 70) (some (AllocBody785_476, 785, 19))

def AllocBody785_478 : StackLang.HolProg 64 :=
.seq AllocBody785_464 AllocBody785_477

def AllocBody785_479 : StackLang.HolProg 64 :=
.seq AllocBody785_463 AllocBody785_478

def AllocBody785_480 : StackLang.HolProg 64 :=
.seq AllocBody785_462 AllocBody785_479

def AllocBody785_481 : StackLang.HolProg 64 :=
.seq AllocBody785_443 AllocBody785_480

def AllocBody785_482 : StackLang.HolProg 64 :=
.seq AllocBody785_440 AllocBody785_481

def AllocBody785_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody785_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody785_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody785_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody785_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody785_488 : StackLang.HolProg 64 :=
.seq AllocBody785_486 AllocBody785_487

def AllocBody785_489 : StackLang.HolProg 64 :=
.seq AllocBody785_485 AllocBody785_488

def AllocBody785_490 : StackLang.HolProg 64 :=
.seq AllocBody785_484 AllocBody785_489

def AllocBody785_491 : StackLang.HolProg 64 :=
.seq AllocBody785_483 AllocBody785_490

def AllocBody785_492 : StackLang.HolProg 64 :=
.seq AllocBody785_482 AllocBody785_491

def AllocBody785_493 : StackLang.HolProg 64 :=
.seq AllocBody785_439 AllocBody785_492

def AllocBody785_494 : StackLang.HolProg 64 :=
.seq AllocBody785_438 AllocBody785_493

def AllocBody785_495 : StackLang.HolProg 64 :=
.seq AllocBody785_437 AllocBody785_494

def AllocBody785_496 : StackLang.HolProg 64 :=
.seq AllocBody785_394 AllocBody785_495

def AllocBody785_497 : StackLang.HolProg 64 :=
.seq AllocBody785_393 AllocBody785_496

def AllocBody785_498 : StackLang.HolProg 64 :=
.seq AllocBody785_392 AllocBody785_497

def AllocBody785_499 : StackLang.HolProg 64 :=
.seq AllocBody785_391 AllocBody785_498

def AllocBody785_500 : StackLang.HolProg 64 :=
.seq AllocBody785_390 AllocBody785_499

def AllocBody785_501 : StackLang.HolProg 64 :=
.seq AllocBody785_389 AllocBody785_500

def AllocBody785_502 : StackLang.HolProg 64 :=
.seq AllocBody785_388 AllocBody785_501

def AllocBody785_503 : StackLang.HolProg 64 :=
.seq AllocBody785_337 AllocBody785_502

def AllocBody785_504 : StackLang.HolProg 64 :=
.seq AllocBody785_330 AllocBody785_503

def AllocBody785_505 : StackLang.HolProg 64 :=
.seq AllocBody785_329 AllocBody785_504

def AllocBody785_506 : StackLang.HolProg 64 :=
.seq AllocBody785_278 AllocBody785_505

def AllocBody785_507 : StackLang.HolProg 64 :=
.seq AllocBody785_275 AllocBody785_506

def AllocBody785_508 : StackLang.HolProg 64 :=
.seq AllocBody785_274 AllocBody785_507

def AllocBody785_509 : StackLang.HolProg 64 :=
.seq AllocBody785_273 AllocBody785_508

def AllocBody785_510 : StackLang.HolProg 64 :=
.seq AllocBody785_272 AllocBody785_509

def AllocBody785_511 : StackLang.HolProg 64 :=
.seq AllocBody785_271 AllocBody785_510

def AllocBody785_512 : StackLang.HolProg 64 :=
.seq AllocBody785_154 AllocBody785_511

def AllocBody785_513 : StackLang.HolProg 64 :=
.seq AllocBody785_153 AllocBody785_512

def AllocBody785_514 : StackLang.HolProg 64 :=
.seq AllocBody785_152 AllocBody785_513

def AllocBody785_515 : StackLang.HolProg 64 :=
.seq AllocBody785_151 AllocBody785_514

def AllocBody785_516 : StackLang.HolProg 64 :=
.seq AllocBody785_102 AllocBody785_515

def AllocBody785_517 : StackLang.HolProg 64 :=
.seq AllocBody785_97 AllocBody785_516

def AllocBody785_518 : StackLang.HolProg 64 :=
.seq AllocBody785_96 AllocBody785_517

def AllocBody785_519 : StackLang.HolProg 64 :=
.seq AllocBody785_51 AllocBody785_518

def AllocBody785_520 : StackLang.HolProg 64 :=
.seq AllocBody785_50 AllocBody785_519

def AllocBody785_521 : StackLang.HolProg 64 :=
.seq AllocBody785_49 AllocBody785_520

def AllocBody785_522 : StackLang.HolProg 64 :=
.seq AllocBody785_48 AllocBody785_521

def AllocBody785_523 : StackLang.HolProg 64 :=
.seq AllocBody785_5 AllocBody785_522

def AllocBody785_524 : StackLang.HolProg 64 :=
.seq AllocBody785_0 AllocBody785_523

def Alloc785 : Nat × StackLang.HolProg 64 := (785, AllocBody785_524)
theorem Alloc785_eq : StackAlloc.progComp (785, raw785) = Alloc785 := by
  kernel_rfl
#print axioms Alloc785_eq
end InitECandidate.Proofs.BackendStages
