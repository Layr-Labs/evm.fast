import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw699
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody699_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody699_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody699_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody699_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody699_4 : StackLang.HolProg 64 :=
.seq AllocBody699_2 AllocBody699_3

def AllocBody699_5 : StackLang.HolProg 64 :=
.seq AllocBody699_1 AllocBody699_4

def AllocBody699_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3086#64)

def AllocBody699_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_9 : StackLang.HolProg 64 :=
.seq AllocBody699_7 AllocBody699_8

def AllocBody699_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 3

def AllocBody699_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_20 : StackLang.HolProg 64 :=
.seq AllocBody699_18 AllocBody699_19

def AllocBody699_21 : StackLang.HolProg 64 :=
.seq AllocBody699_17 AllocBody699_20

def AllocBody699_22 : StackLang.HolProg 64 :=
.seq AllocBody699_16 AllocBody699_21

def AllocBody699_23 : StackLang.HolProg 64 :=
.seq AllocBody699_15 AllocBody699_22

def AllocBody699_24 : StackLang.HolProg 64 :=
.seq AllocBody699_14 AllocBody699_23

def AllocBody699_25 : StackLang.HolProg 64 :=
.seq AllocBody699_13 AllocBody699_24

def AllocBody699_26 : StackLang.HolProg 64 :=
.seq AllocBody699_12 AllocBody699_25

def AllocBody699_27 : StackLang.HolProg 64 :=
.seq AllocBody699_11 AllocBody699_26

def AllocBody699_28 : StackLang.HolProg 64 :=
.seq AllocBody699_10 AllocBody699_27

def AllocBody699_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody699_36 : StackLang.HolProg 64 :=
.seq AllocBody699_34 AllocBody699_35

def AllocBody699_37 : StackLang.HolProg 64 :=
.seq AllocBody699_33 AllocBody699_36

def AllocBody699_38 : StackLang.HolProg 64 :=
.seq AllocBody699_32 AllocBody699_37

def AllocBody699_39 : StackLang.HolProg 64 :=
.seq AllocBody699_31 AllocBody699_38

def AllocBody699_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_42 : StackLang.HolProg 64 :=
.seq AllocBody699_40 AllocBody699_41

def AllocBody699_43 : StackLang.HolProg 64 :=
.call (some (AllocBody699_39, 0, 699, 2)) (Sum.inl 69) (some (AllocBody699_42, 699, 3))

def AllocBody699_44 : StackLang.HolProg 64 :=
.seq AllocBody699_30 AllocBody699_43

def AllocBody699_45 : StackLang.HolProg 64 :=
.seq AllocBody699_29 AllocBody699_44

def AllocBody699_46 : StackLang.HolProg 64 :=
.seq AllocBody699_28 AllocBody699_45

def AllocBody699_47 : StackLang.HolProg 64 :=
.seq AllocBody699_9 AllocBody699_46

def AllocBody699_48 : StackLang.HolProg 64 :=
.seq AllocBody699_6 AllocBody699_47

def AllocBody699_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody699_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody699_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3087#64)

def AllocBody699_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_55 : StackLang.HolProg 64 :=
.seq AllocBody699_53 AllocBody699_54

def AllocBody699_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 5

def AllocBody699_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_66 : StackLang.HolProg 64 :=
.seq AllocBody699_64 AllocBody699_65

def AllocBody699_67 : StackLang.HolProg 64 :=
.seq AllocBody699_63 AllocBody699_66

def AllocBody699_68 : StackLang.HolProg 64 :=
.seq AllocBody699_62 AllocBody699_67

def AllocBody699_69 : StackLang.HolProg 64 :=
.seq AllocBody699_61 AllocBody699_68

def AllocBody699_70 : StackLang.HolProg 64 :=
.seq AllocBody699_60 AllocBody699_69

def AllocBody699_71 : StackLang.HolProg 64 :=
.seq AllocBody699_59 AllocBody699_70

def AllocBody699_72 : StackLang.HolProg 64 :=
.seq AllocBody699_58 AllocBody699_71

def AllocBody699_73 : StackLang.HolProg 64 :=
.seq AllocBody699_57 AllocBody699_72

def AllocBody699_74 : StackLang.HolProg 64 :=
.seq AllocBody699_56 AllocBody699_73

def AllocBody699_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody699_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_83 : StackLang.HolProg 64 :=
.seq AllocBody699_81 AllocBody699_82

def AllocBody699_84 : StackLang.HolProg 64 :=
.seq AllocBody699_80 AllocBody699_83

def AllocBody699_85 : StackLang.HolProg 64 :=
.seq AllocBody699_79 AllocBody699_84

def AllocBody699_86 : StackLang.HolProg 64 :=
.seq AllocBody699_78 AllocBody699_85

def AllocBody699_87 : StackLang.HolProg 64 :=
.seq AllocBody699_77 AllocBody699_86

def AllocBody699_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_90 : StackLang.HolProg 64 :=
.seq AllocBody699_88 AllocBody699_89

def AllocBody699_91 : StackLang.HolProg 64 :=
.call (some (AllocBody699_87, 0, 699, 4)) (Sum.inl 68) (some (AllocBody699_90, 699, 5))

def AllocBody699_92 : StackLang.HolProg 64 :=
.seq AllocBody699_76 AllocBody699_91

def AllocBody699_93 : StackLang.HolProg 64 :=
.seq AllocBody699_75 AllocBody699_92

def AllocBody699_94 : StackLang.HolProg 64 :=
.seq AllocBody699_74 AllocBody699_93

def AllocBody699_95 : StackLang.HolProg 64 :=
.seq AllocBody699_55 AllocBody699_94

def AllocBody699_96 : StackLang.HolProg 64 :=
.seq AllocBody699_52 AllocBody699_95

def AllocBody699_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody699_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody699_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody699_101 : StackLang.HolProg 64 :=
.seq AllocBody699_99 AllocBody699_100

def AllocBody699_102 : StackLang.HolProg 64 :=
.seq AllocBody699_98 AllocBody699_101

def AllocBody699_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3088#64)

def AllocBody699_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_106 : StackLang.HolProg 64 :=
.seq AllocBody699_104 AllocBody699_105

def AllocBody699_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 7

def AllocBody699_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_117 : StackLang.HolProg 64 :=
.seq AllocBody699_115 AllocBody699_116

def AllocBody699_118 : StackLang.HolProg 64 :=
.seq AllocBody699_114 AllocBody699_117

def AllocBody699_119 : StackLang.HolProg 64 :=
.seq AllocBody699_113 AllocBody699_118

def AllocBody699_120 : StackLang.HolProg 64 :=
.seq AllocBody699_112 AllocBody699_119

def AllocBody699_121 : StackLang.HolProg 64 :=
.seq AllocBody699_111 AllocBody699_120

def AllocBody699_122 : StackLang.HolProg 64 :=
.seq AllocBody699_110 AllocBody699_121

def AllocBody699_123 : StackLang.HolProg 64 :=
.seq AllocBody699_109 AllocBody699_122

def AllocBody699_124 : StackLang.HolProg 64 :=
.seq AllocBody699_108 AllocBody699_123

def AllocBody699_125 : StackLang.HolProg 64 :=
.seq AllocBody699_107 AllocBody699_124

def AllocBody699_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody699_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody699_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_136 : StackLang.HolProg 64 :=
.seq AllocBody699_134 AllocBody699_135

def AllocBody699_137 : StackLang.HolProg 64 :=
.seq AllocBody699_133 AllocBody699_136

def AllocBody699_138 : StackLang.HolProg 64 :=
.seq AllocBody699_132 AllocBody699_137

def AllocBody699_139 : StackLang.HolProg 64 :=
.seq AllocBody699_131 AllocBody699_138

def AllocBody699_140 : StackLang.HolProg 64 :=
.seq AllocBody699_130 AllocBody699_139

def AllocBody699_141 : StackLang.HolProg 64 :=
.seq AllocBody699_129 AllocBody699_140

def AllocBody699_142 : StackLang.HolProg 64 :=
.seq AllocBody699_128 AllocBody699_141

def AllocBody699_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody699_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_146 : StackLang.HolProg 64 :=
.seq AllocBody699_144 AllocBody699_145

def AllocBody699_147 : StackLang.HolProg 64 :=
.seq AllocBody699_143 AllocBody699_146

def AllocBody699_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_149 : StackLang.HolProg 64 :=
.seq AllocBody699_147 AllocBody699_148

def AllocBody699_150 : StackLang.HolProg 64 :=
.call (some (AllocBody699_142, 0, 699, 6)) (Sum.inl 695) (some (AllocBody699_149, 699, 7))

def AllocBody699_151 : StackLang.HolProg 64 :=
.seq AllocBody699_127 AllocBody699_150

def AllocBody699_152 : StackLang.HolProg 64 :=
.seq AllocBody699_126 AllocBody699_151

def AllocBody699_153 : StackLang.HolProg 64 :=
.seq AllocBody699_125 AllocBody699_152

def AllocBody699_154 : StackLang.HolProg 64 :=
.seq AllocBody699_106 AllocBody699_153

def AllocBody699_155 : StackLang.HolProg 64 :=
.seq AllocBody699_103 AllocBody699_154

def AllocBody699_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody699_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 3

def AllocBody699_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody699_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_163 : StackLang.HolProg 64 :=
.seq AllocBody699_161 AllocBody699_162

def AllocBody699_164 : StackLang.HolProg 64 :=
.seq AllocBody699_160 AllocBody699_163

def AllocBody699_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3089#64)

def AllocBody699_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_168 : StackLang.HolProg 64 :=
.seq AllocBody699_166 AllocBody699_167

def AllocBody699_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 9

def AllocBody699_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_179 : StackLang.HolProg 64 :=
.seq AllocBody699_177 AllocBody699_178

def AllocBody699_180 : StackLang.HolProg 64 :=
.seq AllocBody699_176 AllocBody699_179

def AllocBody699_181 : StackLang.HolProg 64 :=
.seq AllocBody699_175 AllocBody699_180

def AllocBody699_182 : StackLang.HolProg 64 :=
.seq AllocBody699_174 AllocBody699_181

def AllocBody699_183 : StackLang.HolProg 64 :=
.seq AllocBody699_173 AllocBody699_182

def AllocBody699_184 : StackLang.HolProg 64 :=
.seq AllocBody699_172 AllocBody699_183

def AllocBody699_185 : StackLang.HolProg 64 :=
.seq AllocBody699_171 AllocBody699_184

def AllocBody699_186 : StackLang.HolProg 64 :=
.seq AllocBody699_170 AllocBody699_185

def AllocBody699_187 : StackLang.HolProg 64 :=
.seq AllocBody699_169 AllocBody699_186

def AllocBody699_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody699_195 : StackLang.HolProg 64 :=
.seq AllocBody699_193 AllocBody699_194

def AllocBody699_196 : StackLang.HolProg 64 :=
.seq AllocBody699_192 AllocBody699_195

def AllocBody699_197 : StackLang.HolProg 64 :=
.seq AllocBody699_191 AllocBody699_196

def AllocBody699_198 : StackLang.HolProg 64 :=
.seq AllocBody699_190 AllocBody699_197

def AllocBody699_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody699_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_201 : StackLang.HolProg 64 :=
.seq AllocBody699_199 AllocBody699_200

def AllocBody699_202 : StackLang.HolProg 64 :=
.call (some (AllocBody699_198, 0, 699, 8)) (Sum.inl 70) (some (AllocBody699_201, 699, 9))

def AllocBody699_203 : StackLang.HolProg 64 :=
.seq AllocBody699_189 AllocBody699_202

def AllocBody699_204 : StackLang.HolProg 64 :=
.seq AllocBody699_188 AllocBody699_203

def AllocBody699_205 : StackLang.HolProg 64 :=
.seq AllocBody699_187 AllocBody699_204

def AllocBody699_206 : StackLang.HolProg 64 :=
.seq AllocBody699_168 AllocBody699_205

def AllocBody699_207 : StackLang.HolProg 64 :=
.seq AllocBody699_165 AllocBody699_206

def AllocBody699_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody699_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody699_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody699_213 : StackLang.HolProg 64 :=
.seq AllocBody699_211 AllocBody699_212

def AllocBody699_214 : StackLang.HolProg 64 :=
.seq AllocBody699_210 AllocBody699_213

def AllocBody699_215 : StackLang.HolProg 64 :=
.seq AllocBody699_209 AllocBody699_214

def AllocBody699_216 : StackLang.HolProg 64 :=
.seq AllocBody699_208 AllocBody699_215

def AllocBody699_217 : StackLang.HolProg 64 :=
.seq AllocBody699_207 AllocBody699_216

def AllocBody699_218 : StackLang.HolProg 64 :=
.seq AllocBody699_164 AllocBody699_217

def AllocBody699_219 : StackLang.HolProg 64 :=
.seq AllocBody699_159 AllocBody699_218

def AllocBody699_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody699_219 AllocBody699_220

def AllocBody699_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody699_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody699_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3090#64)

def AllocBody699_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_231 : StackLang.HolProg 64 :=
.seq AllocBody699_229 AllocBody699_230

def AllocBody699_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 11

def AllocBody699_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_242 : StackLang.HolProg 64 :=
.seq AllocBody699_240 AllocBody699_241

def AllocBody699_243 : StackLang.HolProg 64 :=
.seq AllocBody699_239 AllocBody699_242

def AllocBody699_244 : StackLang.HolProg 64 :=
.seq AllocBody699_238 AllocBody699_243

def AllocBody699_245 : StackLang.HolProg 64 :=
.seq AllocBody699_237 AllocBody699_244

def AllocBody699_246 : StackLang.HolProg 64 :=
.seq AllocBody699_236 AllocBody699_245

def AllocBody699_247 : StackLang.HolProg 64 :=
.seq AllocBody699_235 AllocBody699_246

def AllocBody699_248 : StackLang.HolProg 64 :=
.seq AllocBody699_234 AllocBody699_247

def AllocBody699_249 : StackLang.HolProg 64 :=
.seq AllocBody699_233 AllocBody699_248

def AllocBody699_250 : StackLang.HolProg 64 :=
.seq AllocBody699_232 AllocBody699_249

def AllocBody699_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody699_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody699_259 : StackLang.HolProg 64 :=
.seq AllocBody699_257 AllocBody699_258

def AllocBody699_260 : StackLang.HolProg 64 :=
.seq AllocBody699_256 AllocBody699_259

def AllocBody699_261 : StackLang.HolProg 64 :=
.seq AllocBody699_255 AllocBody699_260

def AllocBody699_262 : StackLang.HolProg 64 :=
.seq AllocBody699_254 AllocBody699_261

def AllocBody699_263 : StackLang.HolProg 64 :=
.seq AllocBody699_253 AllocBody699_262

def AllocBody699_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody699_265 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_266 : StackLang.HolProg 64 :=
.seq AllocBody699_264 AllocBody699_265

def AllocBody699_267 : StackLang.HolProg 64 :=
.call (some (AllocBody699_263, 0, 699, 10)) (Sum.inl 146) (some (AllocBody699_266, 699, 11))

def AllocBody699_268 : StackLang.HolProg 64 :=
.seq AllocBody699_252 AllocBody699_267

def AllocBody699_269 : StackLang.HolProg 64 :=
.seq AllocBody699_251 AllocBody699_268

def AllocBody699_270 : StackLang.HolProg 64 :=
.seq AllocBody699_250 AllocBody699_269

def AllocBody699_271 : StackLang.HolProg 64 :=
.seq AllocBody699_231 AllocBody699_270

def AllocBody699_272 : StackLang.HolProg 64 :=
.seq AllocBody699_228 AllocBody699_271

def AllocBody699_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody699_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody699_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody699_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody699_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody699_279 : StackLang.HolProg 64 :=
.seq AllocBody699_277 AllocBody699_278

def AllocBody699_280 : StackLang.HolProg 64 :=
.seq AllocBody699_276 AllocBody699_279

def AllocBody699_281 : StackLang.HolProg 64 :=
.seq AllocBody699_275 AllocBody699_280

def AllocBody699_282 : StackLang.HolProg 64 :=
.seq AllocBody699_274 AllocBody699_281

def AllocBody699_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody699_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody699_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody699_286 : StackLang.HolProg 64 :=
.seq AllocBody699_284 AllocBody699_285

def AllocBody699_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3091#64)

def AllocBody699_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_290 : StackLang.HolProg 64 :=
.seq AllocBody699_288 AllocBody699_289

def AllocBody699_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 13

def AllocBody699_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_301 : StackLang.HolProg 64 :=
.seq AllocBody699_299 AllocBody699_300

def AllocBody699_302 : StackLang.HolProg 64 :=
.seq AllocBody699_298 AllocBody699_301

def AllocBody699_303 : StackLang.HolProg 64 :=
.seq AllocBody699_297 AllocBody699_302

def AllocBody699_304 : StackLang.HolProg 64 :=
.seq AllocBody699_296 AllocBody699_303

def AllocBody699_305 : StackLang.HolProg 64 :=
.seq AllocBody699_295 AllocBody699_304

def AllocBody699_306 : StackLang.HolProg 64 :=
.seq AllocBody699_294 AllocBody699_305

def AllocBody699_307 : StackLang.HolProg 64 :=
.seq AllocBody699_293 AllocBody699_306

def AllocBody699_308 : StackLang.HolProg 64 :=
.seq AllocBody699_292 AllocBody699_307

def AllocBody699_309 : StackLang.HolProg 64 :=
.seq AllocBody699_291 AllocBody699_308

def AllocBody699_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody699_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody699_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody699_319 : StackLang.HolProg 64 :=
.seq AllocBody699_317 AllocBody699_318

def AllocBody699_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_321 : StackLang.HolProg 64 :=
.seq AllocBody699_319 AllocBody699_320

def AllocBody699_322 : StackLang.HolProg 64 :=
.seq AllocBody699_316 AllocBody699_321

def AllocBody699_323 : StackLang.HolProg 64 :=
.seq AllocBody699_315 AllocBody699_322

def AllocBody699_324 : StackLang.HolProg 64 :=
.seq AllocBody699_314 AllocBody699_323

def AllocBody699_325 : StackLang.HolProg 64 :=
.seq AllocBody699_313 AllocBody699_324

def AllocBody699_326 : StackLang.HolProg 64 :=
.seq AllocBody699_312 AllocBody699_325

def AllocBody699_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody699_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody699_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody699_330 : StackLang.HolProg 64 :=
.seq AllocBody699_328 AllocBody699_329

def AllocBody699_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody699_332 : StackLang.HolProg 64 :=
.seq AllocBody699_330 AllocBody699_331

def AllocBody699_333 : StackLang.HolProg 64 :=
.seq AllocBody699_327 AllocBody699_332

def AllocBody699_334 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_335 : StackLang.HolProg 64 :=
.seq AllocBody699_333 AllocBody699_334

def AllocBody699_336 : StackLang.HolProg 64 :=
.call (some (AllocBody699_326, 0, 699, 12)) (Sum.inl 684) (some (AllocBody699_335, 699, 13))

def AllocBody699_337 : StackLang.HolProg 64 :=
.seq AllocBody699_311 AllocBody699_336

def AllocBody699_338 : StackLang.HolProg 64 :=
.seq AllocBody699_310 AllocBody699_337

def AllocBody699_339 : StackLang.HolProg 64 :=
.seq AllocBody699_309 AllocBody699_338

def AllocBody699_340 : StackLang.HolProg 64 :=
.seq AllocBody699_290 AllocBody699_339

def AllocBody699_341 : StackLang.HolProg 64 :=
.seq AllocBody699_287 AllocBody699_340

def AllocBody699_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody699_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3092#64)

def AllocBody699_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_347 : StackLang.HolProg 64 :=
.seq AllocBody699_345 AllocBody699_346

def AllocBody699_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 15

def AllocBody699_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_358 : StackLang.HolProg 64 :=
.seq AllocBody699_356 AllocBody699_357

def AllocBody699_359 : StackLang.HolProg 64 :=
.seq AllocBody699_355 AllocBody699_358

def AllocBody699_360 : StackLang.HolProg 64 :=
.seq AllocBody699_354 AllocBody699_359

def AllocBody699_361 : StackLang.HolProg 64 :=
.seq AllocBody699_353 AllocBody699_360

def AllocBody699_362 : StackLang.HolProg 64 :=
.seq AllocBody699_352 AllocBody699_361

def AllocBody699_363 : StackLang.HolProg 64 :=
.seq AllocBody699_351 AllocBody699_362

def AllocBody699_364 : StackLang.HolProg 64 :=
.seq AllocBody699_350 AllocBody699_363

def AllocBody699_365 : StackLang.HolProg 64 :=
.seq AllocBody699_349 AllocBody699_364

def AllocBody699_366 : StackLang.HolProg 64 :=
.seq AllocBody699_348 AllocBody699_365

def AllocBody699_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody699_374 : StackLang.HolProg 64 :=
.seq AllocBody699_372 AllocBody699_373

def AllocBody699_375 : StackLang.HolProg 64 :=
.seq AllocBody699_371 AllocBody699_374

def AllocBody699_376 : StackLang.HolProg 64 :=
.seq AllocBody699_370 AllocBody699_375

def AllocBody699_377 : StackLang.HolProg 64 :=
.seq AllocBody699_369 AllocBody699_376

def AllocBody699_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody699_379 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_380 : StackLang.HolProg 64 :=
.seq AllocBody699_378 AllocBody699_379

def AllocBody699_381 : StackLang.HolProg 64 :=
.call (some (AllocBody699_377, 0, 699, 14)) (Sum.inl 697) (some (AllocBody699_380, 699, 15))

def AllocBody699_382 : StackLang.HolProg 64 :=
.seq AllocBody699_368 AllocBody699_381

def AllocBody699_383 : StackLang.HolProg 64 :=
.seq AllocBody699_367 AllocBody699_382

def AllocBody699_384 : StackLang.HolProg 64 :=
.seq AllocBody699_366 AllocBody699_383

def AllocBody699_385 : StackLang.HolProg 64 :=
.seq AllocBody699_347 AllocBody699_384

def AllocBody699_386 : StackLang.HolProg 64 :=
.seq AllocBody699_344 AllocBody699_385

def AllocBody699_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody699_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3093#64)

def AllocBody699_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_392 : StackLang.HolProg 64 :=
.seq AllocBody699_390 AllocBody699_391

def AllocBody699_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody699_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody699_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody699_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 699 17

def AllocBody699_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody699_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody699_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody699_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody699_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_403 : StackLang.HolProg 64 :=
.seq AllocBody699_401 AllocBody699_402

def AllocBody699_404 : StackLang.HolProg 64 :=
.seq AllocBody699_400 AllocBody699_403

def AllocBody699_405 : StackLang.HolProg 64 :=
.seq AllocBody699_399 AllocBody699_404

def AllocBody699_406 : StackLang.HolProg 64 :=
.seq AllocBody699_398 AllocBody699_405

def AllocBody699_407 : StackLang.HolProg 64 :=
.seq AllocBody699_397 AllocBody699_406

def AllocBody699_408 : StackLang.HolProg 64 :=
.seq AllocBody699_396 AllocBody699_407

def AllocBody699_409 : StackLang.HolProg 64 :=
.seq AllocBody699_395 AllocBody699_408

def AllocBody699_410 : StackLang.HolProg 64 :=
.seq AllocBody699_394 AllocBody699_409

def AllocBody699_411 : StackLang.HolProg 64 :=
.seq AllocBody699_393 AllocBody699_410

def AllocBody699_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody699_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody699_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody699_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody699_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody699_419 : StackLang.HolProg 64 :=
.seq AllocBody699_417 AllocBody699_418

def AllocBody699_420 : StackLang.HolProg 64 :=
.seq AllocBody699_416 AllocBody699_419

def AllocBody699_421 : StackLang.HolProg 64 :=
.seq AllocBody699_415 AllocBody699_420

def AllocBody699_422 : StackLang.HolProg 64 :=
.seq AllocBody699_414 AllocBody699_421

def AllocBody699_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody699_424 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody699_425 : StackLang.HolProg 64 :=
.seq AllocBody699_423 AllocBody699_424

def AllocBody699_426 : StackLang.HolProg 64 :=
.call (some (AllocBody699_422, 0, 699, 16)) (Sum.inl 70) (some (AllocBody699_425, 699, 17))

def AllocBody699_427 : StackLang.HolProg 64 :=
.seq AllocBody699_413 AllocBody699_426

def AllocBody699_428 : StackLang.HolProg 64 :=
.seq AllocBody699_412 AllocBody699_427

def AllocBody699_429 : StackLang.HolProg 64 :=
.seq AllocBody699_411 AllocBody699_428

def AllocBody699_430 : StackLang.HolProg 64 :=
.seq AllocBody699_392 AllocBody699_429

def AllocBody699_431 : StackLang.HolProg 64 :=
.seq AllocBody699_389 AllocBody699_430

def AllocBody699_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody699_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody699_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody699_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody699_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody699_437 : StackLang.HolProg 64 :=
.seq AllocBody699_435 AllocBody699_436

def AllocBody699_438 : StackLang.HolProg 64 :=
.seq AllocBody699_434 AllocBody699_437

def AllocBody699_439 : StackLang.HolProg 64 :=
.seq AllocBody699_433 AllocBody699_438

def AllocBody699_440 : StackLang.HolProg 64 :=
.seq AllocBody699_432 AllocBody699_439

def AllocBody699_441 : StackLang.HolProg 64 :=
.seq AllocBody699_431 AllocBody699_440

def AllocBody699_442 : StackLang.HolProg 64 :=
.seq AllocBody699_388 AllocBody699_441

def AllocBody699_443 : StackLang.HolProg 64 :=
.seq AllocBody699_387 AllocBody699_442

def AllocBody699_444 : StackLang.HolProg 64 :=
.seq AllocBody699_386 AllocBody699_443

def AllocBody699_445 : StackLang.HolProg 64 :=
.seq AllocBody699_343 AllocBody699_444

def AllocBody699_446 : StackLang.HolProg 64 :=
.seq AllocBody699_342 AllocBody699_445

def AllocBody699_447 : StackLang.HolProg 64 :=
.seq AllocBody699_341 AllocBody699_446

def AllocBody699_448 : StackLang.HolProg 64 :=
.seq AllocBody699_286 AllocBody699_447

def AllocBody699_449 : StackLang.HolProg 64 :=
.seq AllocBody699_283 AllocBody699_448

def AllocBody699_450 : StackLang.HolProg 64 :=
.seq AllocBody699_282 AllocBody699_449

def AllocBody699_451 : StackLang.HolProg 64 :=
.seq AllocBody699_273 AllocBody699_450

def AllocBody699_452 : StackLang.HolProg 64 :=
.seq AllocBody699_272 AllocBody699_451

def AllocBody699_453 : StackLang.HolProg 64 :=
.seq AllocBody699_227 AllocBody699_452

def AllocBody699_454 : StackLang.HolProg 64 :=
.seq AllocBody699_226 AllocBody699_453

def AllocBody699_455 : StackLang.HolProg 64 :=
.seq AllocBody699_225 AllocBody699_454

def AllocBody699_456 : StackLang.HolProg 64 :=
.seq AllocBody699_224 AllocBody699_455

def AllocBody699_457 : StackLang.HolProg 64 :=
.seq AllocBody699_223 AllocBody699_456

def AllocBody699_458 : StackLang.HolProg 64 :=
.seq AllocBody699_222 AllocBody699_457

def AllocBody699_459 : StackLang.HolProg 64 :=
.seq AllocBody699_221 AllocBody699_458

def AllocBody699_460 : StackLang.HolProg 64 :=
.seq AllocBody699_158 AllocBody699_459

def AllocBody699_461 : StackLang.HolProg 64 :=
.seq AllocBody699_157 AllocBody699_460

def AllocBody699_462 : StackLang.HolProg 64 :=
.seq AllocBody699_156 AllocBody699_461

def AllocBody699_463 : StackLang.HolProg 64 :=
.seq AllocBody699_155 AllocBody699_462

def AllocBody699_464 : StackLang.HolProg 64 :=
.seq AllocBody699_102 AllocBody699_463

def AllocBody699_465 : StackLang.HolProg 64 :=
.seq AllocBody699_97 AllocBody699_464

def AllocBody699_466 : StackLang.HolProg 64 :=
.seq AllocBody699_96 AllocBody699_465

def AllocBody699_467 : StackLang.HolProg 64 :=
.seq AllocBody699_51 AllocBody699_466

def AllocBody699_468 : StackLang.HolProg 64 :=
.seq AllocBody699_50 AllocBody699_467

def AllocBody699_469 : StackLang.HolProg 64 :=
.seq AllocBody699_49 AllocBody699_468

def AllocBody699_470 : StackLang.HolProg 64 :=
.seq AllocBody699_48 AllocBody699_469

def AllocBody699_471 : StackLang.HolProg 64 :=
.seq AllocBody699_5 AllocBody699_470

def AllocBody699_472 : StackLang.HolProg 64 :=
.seq AllocBody699_0 AllocBody699_471

def Alloc699 : Nat × StackLang.HolProg 64 := (699, AllocBody699_472)
theorem Alloc699_eq : StackAlloc.progComp (699, raw699) = Alloc699 := by
  kernel_rfl
#print axioms Alloc699_eq
end InitECandidate.Proofs.BackendStages
