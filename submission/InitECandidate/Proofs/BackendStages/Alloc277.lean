import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw277
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody277_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody277_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody277_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody277_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody277_4 : StackLang.HolProg 64 :=
.seq AllocBody277_2 AllocBody277_3

def AllocBody277_5 : StackLang.HolProg 64 :=
.seq AllocBody277_1 AllocBody277_4

def AllocBody277_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 722#64)

def AllocBody277_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_9 : StackLang.HolProg 64 :=
.seq AllocBody277_7 AllocBody277_8

def AllocBody277_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody277_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody277_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 3

def AllocBody277_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody277_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody277_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody277_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody277_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_20 : StackLang.HolProg 64 :=
.seq AllocBody277_18 AllocBody277_19

def AllocBody277_21 : StackLang.HolProg 64 :=
.seq AllocBody277_17 AllocBody277_20

def AllocBody277_22 : StackLang.HolProg 64 :=
.seq AllocBody277_16 AllocBody277_21

def AllocBody277_23 : StackLang.HolProg 64 :=
.seq AllocBody277_15 AllocBody277_22

def AllocBody277_24 : StackLang.HolProg 64 :=
.seq AllocBody277_14 AllocBody277_23

def AllocBody277_25 : StackLang.HolProg 64 :=
.seq AllocBody277_13 AllocBody277_24

def AllocBody277_26 : StackLang.HolProg 64 :=
.seq AllocBody277_12 AllocBody277_25

def AllocBody277_27 : StackLang.HolProg 64 :=
.seq AllocBody277_11 AllocBody277_26

def AllocBody277_28 : StackLang.HolProg 64 :=
.seq AllocBody277_10 AllocBody277_27

def AllocBody277_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody277_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody277_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody277_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody277_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody277_37 : StackLang.HolProg 64 :=
.seq AllocBody277_35 AllocBody277_36

def AllocBody277_38 : StackLang.HolProg 64 :=
.seq AllocBody277_34 AllocBody277_37

def AllocBody277_39 : StackLang.HolProg 64 :=
.seq AllocBody277_33 AllocBody277_38

def AllocBody277_40 : StackLang.HolProg 64 :=
.seq AllocBody277_32 AllocBody277_39

def AllocBody277_41 : StackLang.HolProg 64 :=
.seq AllocBody277_31 AllocBody277_40

def AllocBody277_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody277_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody277_44 : StackLang.HolProg 64 :=
.seq AllocBody277_42 AllocBody277_43

def AllocBody277_45 : StackLang.HolProg 64 :=
.call (some (AllocBody277_41, 0, 277, 2)) (Sum.inl 69) (some (AllocBody277_44, 277, 3))

def AllocBody277_46 : StackLang.HolProg 64 :=
.seq AllocBody277_30 AllocBody277_45

def AllocBody277_47 : StackLang.HolProg 64 :=
.seq AllocBody277_29 AllocBody277_46

def AllocBody277_48 : StackLang.HolProg 64 :=
.seq AllocBody277_28 AllocBody277_47

def AllocBody277_49 : StackLang.HolProg 64 :=
.seq AllocBody277_9 AllocBody277_48

def AllocBody277_50 : StackLang.HolProg 64 :=
.seq AllocBody277_6 AllocBody277_49

def AllocBody277_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody277_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody277_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody277_54 : StackLang.HolProg 64 :=
.seq AllocBody277_52 AllocBody277_53

def AllocBody277_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 723#64)

def AllocBody277_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_58 : StackLang.HolProg 64 :=
.seq AllocBody277_56 AllocBody277_57

def AllocBody277_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody277_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody277_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 5

def AllocBody277_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody277_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody277_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody277_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody277_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_69 : StackLang.HolProg 64 :=
.seq AllocBody277_67 AllocBody277_68

def AllocBody277_70 : StackLang.HolProg 64 :=
.seq AllocBody277_66 AllocBody277_69

def AllocBody277_71 : StackLang.HolProg 64 :=
.seq AllocBody277_65 AllocBody277_70

def AllocBody277_72 : StackLang.HolProg 64 :=
.seq AllocBody277_64 AllocBody277_71

def AllocBody277_73 : StackLang.HolProg 64 :=
.seq AllocBody277_63 AllocBody277_72

def AllocBody277_74 : StackLang.HolProg 64 :=
.seq AllocBody277_62 AllocBody277_73

def AllocBody277_75 : StackLang.HolProg 64 :=
.seq AllocBody277_61 AllocBody277_74

def AllocBody277_76 : StackLang.HolProg 64 :=
.seq AllocBody277_60 AllocBody277_75

def AllocBody277_77 : StackLang.HolProg 64 :=
.seq AllocBody277_59 AllocBody277_76

def AllocBody277_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody277_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody277_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody277_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody277_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody277_86 : StackLang.HolProg 64 :=
.seq AllocBody277_84 AllocBody277_85

def AllocBody277_87 : StackLang.HolProg 64 :=
.seq AllocBody277_83 AllocBody277_86

def AllocBody277_88 : StackLang.HolProg 64 :=
.seq AllocBody277_82 AllocBody277_87

def AllocBody277_89 : StackLang.HolProg 64 :=
.seq AllocBody277_81 AllocBody277_88

def AllocBody277_90 : StackLang.HolProg 64 :=
.seq AllocBody277_80 AllocBody277_89

def AllocBody277_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody277_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody277_93 : StackLang.HolProg 64 :=
.seq AllocBody277_91 AllocBody277_92

def AllocBody277_94 : StackLang.HolProg 64 :=
.call (some (AllocBody277_90, 0, 277, 4)) (Sum.inl 276) (some (AllocBody277_93, 277, 5))

def AllocBody277_95 : StackLang.HolProg 64 :=
.seq AllocBody277_79 AllocBody277_94

def AllocBody277_96 : StackLang.HolProg 64 :=
.seq AllocBody277_78 AllocBody277_95

def AllocBody277_97 : StackLang.HolProg 64 :=
.seq AllocBody277_77 AllocBody277_96

def AllocBody277_98 : StackLang.HolProg 64 :=
.seq AllocBody277_58 AllocBody277_97

def AllocBody277_99 : StackLang.HolProg 64 :=
.seq AllocBody277_55 AllocBody277_98

def AllocBody277_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody277_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody277_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 724#64)

def AllocBody277_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_105 : StackLang.HolProg 64 :=
.seq AllocBody277_103 AllocBody277_104

def AllocBody277_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody277_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody277_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 7

def AllocBody277_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody277_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody277_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody277_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody277_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_116 : StackLang.HolProg 64 :=
.seq AllocBody277_114 AllocBody277_115

def AllocBody277_117 : StackLang.HolProg 64 :=
.seq AllocBody277_113 AllocBody277_116

def AllocBody277_118 : StackLang.HolProg 64 :=
.seq AllocBody277_112 AllocBody277_117

def AllocBody277_119 : StackLang.HolProg 64 :=
.seq AllocBody277_111 AllocBody277_118

def AllocBody277_120 : StackLang.HolProg 64 :=
.seq AllocBody277_110 AllocBody277_119

def AllocBody277_121 : StackLang.HolProg 64 :=
.seq AllocBody277_109 AllocBody277_120

def AllocBody277_122 : StackLang.HolProg 64 :=
.seq AllocBody277_108 AllocBody277_121

def AllocBody277_123 : StackLang.HolProg 64 :=
.seq AllocBody277_107 AllocBody277_122

def AllocBody277_124 : StackLang.HolProg 64 :=
.seq AllocBody277_106 AllocBody277_123

def AllocBody277_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody277_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody277_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody277_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody277_132 : StackLang.HolProg 64 :=
.seq AllocBody277_130 AllocBody277_131

def AllocBody277_133 : StackLang.HolProg 64 :=
.seq AllocBody277_129 AllocBody277_132

def AllocBody277_134 : StackLang.HolProg 64 :=
.seq AllocBody277_128 AllocBody277_133

def AllocBody277_135 : StackLang.HolProg 64 :=
.seq AllocBody277_127 AllocBody277_134

def AllocBody277_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody277_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody277_138 : StackLang.HolProg 64 :=
.seq AllocBody277_136 AllocBody277_137

def AllocBody277_139 : StackLang.HolProg 64 :=
.call (some (AllocBody277_135, 0, 277, 6)) (Sum.inl 158) (some (AllocBody277_138, 277, 7))

def AllocBody277_140 : StackLang.HolProg 64 :=
.seq AllocBody277_126 AllocBody277_139

def AllocBody277_141 : StackLang.HolProg 64 :=
.seq AllocBody277_125 AllocBody277_140

def AllocBody277_142 : StackLang.HolProg 64 :=
.seq AllocBody277_124 AllocBody277_141

def AllocBody277_143 : StackLang.HolProg 64 :=
.seq AllocBody277_105 AllocBody277_142

def AllocBody277_144 : StackLang.HolProg 64 :=
.seq AllocBody277_102 AllocBody277_143

def AllocBody277_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody277_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody277_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 725#64)

def AllocBody277_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_150 : StackLang.HolProg 64 :=
.seq AllocBody277_148 AllocBody277_149

def AllocBody277_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody277_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody277_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody277_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 277 9

def AllocBody277_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody277_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody277_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody277_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody277_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_161 : StackLang.HolProg 64 :=
.seq AllocBody277_159 AllocBody277_160

def AllocBody277_162 : StackLang.HolProg 64 :=
.seq AllocBody277_158 AllocBody277_161

def AllocBody277_163 : StackLang.HolProg 64 :=
.seq AllocBody277_157 AllocBody277_162

def AllocBody277_164 : StackLang.HolProg 64 :=
.seq AllocBody277_156 AllocBody277_163

def AllocBody277_165 : StackLang.HolProg 64 :=
.seq AllocBody277_155 AllocBody277_164

def AllocBody277_166 : StackLang.HolProg 64 :=
.seq AllocBody277_154 AllocBody277_165

def AllocBody277_167 : StackLang.HolProg 64 :=
.seq AllocBody277_153 AllocBody277_166

def AllocBody277_168 : StackLang.HolProg 64 :=
.seq AllocBody277_152 AllocBody277_167

def AllocBody277_169 : StackLang.HolProg 64 :=
.seq AllocBody277_151 AllocBody277_168

def AllocBody277_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody277_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody277_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody277_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody277_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody277_177 : StackLang.HolProg 64 :=
.seq AllocBody277_175 AllocBody277_176

def AllocBody277_178 : StackLang.HolProg 64 :=
.seq AllocBody277_174 AllocBody277_177

def AllocBody277_179 : StackLang.HolProg 64 :=
.seq AllocBody277_173 AllocBody277_178

def AllocBody277_180 : StackLang.HolProg 64 :=
.seq AllocBody277_172 AllocBody277_179

def AllocBody277_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody277_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody277_183 : StackLang.HolProg 64 :=
.seq AllocBody277_181 AllocBody277_182

def AllocBody277_184 : StackLang.HolProg 64 :=
.call (some (AllocBody277_180, 0, 277, 8)) (Sum.inl 70) (some (AllocBody277_183, 277, 9))

def AllocBody277_185 : StackLang.HolProg 64 :=
.seq AllocBody277_171 AllocBody277_184

def AllocBody277_186 : StackLang.HolProg 64 :=
.seq AllocBody277_170 AllocBody277_185

def AllocBody277_187 : StackLang.HolProg 64 :=
.seq AllocBody277_169 AllocBody277_186

def AllocBody277_188 : StackLang.HolProg 64 :=
.seq AllocBody277_150 AllocBody277_187

def AllocBody277_189 : StackLang.HolProg 64 :=
.seq AllocBody277_147 AllocBody277_188

def AllocBody277_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody277_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody277_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody277_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody277_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody277_195 : StackLang.HolProg 64 :=
.seq AllocBody277_193 AllocBody277_194

def AllocBody277_196 : StackLang.HolProg 64 :=
.seq AllocBody277_192 AllocBody277_195

def AllocBody277_197 : StackLang.HolProg 64 :=
.seq AllocBody277_191 AllocBody277_196

def AllocBody277_198 : StackLang.HolProg 64 :=
.seq AllocBody277_190 AllocBody277_197

def AllocBody277_199 : StackLang.HolProg 64 :=
.seq AllocBody277_189 AllocBody277_198

def AllocBody277_200 : StackLang.HolProg 64 :=
.seq AllocBody277_146 AllocBody277_199

def AllocBody277_201 : StackLang.HolProg 64 :=
.seq AllocBody277_145 AllocBody277_200

def AllocBody277_202 : StackLang.HolProg 64 :=
.seq AllocBody277_144 AllocBody277_201

def AllocBody277_203 : StackLang.HolProg 64 :=
.seq AllocBody277_101 AllocBody277_202

def AllocBody277_204 : StackLang.HolProg 64 :=
.seq AllocBody277_100 AllocBody277_203

def AllocBody277_205 : StackLang.HolProg 64 :=
.seq AllocBody277_99 AllocBody277_204

def AllocBody277_206 : StackLang.HolProg 64 :=
.seq AllocBody277_54 AllocBody277_205

def AllocBody277_207 : StackLang.HolProg 64 :=
.seq AllocBody277_51 AllocBody277_206

def AllocBody277_208 : StackLang.HolProg 64 :=
.seq AllocBody277_50 AllocBody277_207

def AllocBody277_209 : StackLang.HolProg 64 :=
.seq AllocBody277_5 AllocBody277_208

def AllocBody277_210 : StackLang.HolProg 64 :=
.seq AllocBody277_0 AllocBody277_209

def Alloc277 : Nat × StackLang.HolProg 64 := (277, AllocBody277_210)
theorem Alloc277_eq : StackAlloc.progComp (277, raw277) = Alloc277 := by
  kernel_rfl
#print axioms Alloc277_eq
end InitECandidate.Proofs.BackendStages
