import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw776
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody776_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody776_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody776_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody776_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody776_4 : StackLang.HolProg 64 :=
.seq AllocBody776_2 AllocBody776_3

def AllocBody776_5 : StackLang.HolProg 64 :=
.seq AllocBody776_1 AllocBody776_4

def AllocBody776_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3532#64)

def AllocBody776_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_9 : StackLang.HolProg 64 :=
.seq AllocBody776_7 AllocBody776_8

def AllocBody776_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 3

def AllocBody776_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_20 : StackLang.HolProg 64 :=
.seq AllocBody776_18 AllocBody776_19

def AllocBody776_21 : StackLang.HolProg 64 :=
.seq AllocBody776_17 AllocBody776_20

def AllocBody776_22 : StackLang.HolProg 64 :=
.seq AllocBody776_16 AllocBody776_21

def AllocBody776_23 : StackLang.HolProg 64 :=
.seq AllocBody776_15 AllocBody776_22

def AllocBody776_24 : StackLang.HolProg 64 :=
.seq AllocBody776_14 AllocBody776_23

def AllocBody776_25 : StackLang.HolProg 64 :=
.seq AllocBody776_13 AllocBody776_24

def AllocBody776_26 : StackLang.HolProg 64 :=
.seq AllocBody776_12 AllocBody776_25

def AllocBody776_27 : StackLang.HolProg 64 :=
.seq AllocBody776_11 AllocBody776_26

def AllocBody776_28 : StackLang.HolProg 64 :=
.seq AllocBody776_10 AllocBody776_27

def AllocBody776_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody776_36 : StackLang.HolProg 64 :=
.seq AllocBody776_34 AllocBody776_35

def AllocBody776_37 : StackLang.HolProg 64 :=
.seq AllocBody776_33 AllocBody776_36

def AllocBody776_38 : StackLang.HolProg 64 :=
.seq AllocBody776_32 AllocBody776_37

def AllocBody776_39 : StackLang.HolProg 64 :=
.seq AllocBody776_31 AllocBody776_38

def AllocBody776_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_42 : StackLang.HolProg 64 :=
.seq AllocBody776_40 AllocBody776_41

def AllocBody776_43 : StackLang.HolProg 64 :=
.call (some (AllocBody776_39, 0, 776, 2)) (Sum.inl 69) (some (AllocBody776_42, 776, 3))

def AllocBody776_44 : StackLang.HolProg 64 :=
.seq AllocBody776_30 AllocBody776_43

def AllocBody776_45 : StackLang.HolProg 64 :=
.seq AllocBody776_29 AllocBody776_44

def AllocBody776_46 : StackLang.HolProg 64 :=
.seq AllocBody776_28 AllocBody776_45

def AllocBody776_47 : StackLang.HolProg 64 :=
.seq AllocBody776_9 AllocBody776_46

def AllocBody776_48 : StackLang.HolProg 64 :=
.seq AllocBody776_6 AllocBody776_47

def AllocBody776_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody776_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody776_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3533#64)

def AllocBody776_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_55 : StackLang.HolProg 64 :=
.seq AllocBody776_53 AllocBody776_54

def AllocBody776_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 5

def AllocBody776_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_66 : StackLang.HolProg 64 :=
.seq AllocBody776_64 AllocBody776_65

def AllocBody776_67 : StackLang.HolProg 64 :=
.seq AllocBody776_63 AllocBody776_66

def AllocBody776_68 : StackLang.HolProg 64 :=
.seq AllocBody776_62 AllocBody776_67

def AllocBody776_69 : StackLang.HolProg 64 :=
.seq AllocBody776_61 AllocBody776_68

def AllocBody776_70 : StackLang.HolProg 64 :=
.seq AllocBody776_60 AllocBody776_69

def AllocBody776_71 : StackLang.HolProg 64 :=
.seq AllocBody776_59 AllocBody776_70

def AllocBody776_72 : StackLang.HolProg 64 :=
.seq AllocBody776_58 AllocBody776_71

def AllocBody776_73 : StackLang.HolProg 64 :=
.seq AllocBody776_57 AllocBody776_72

def AllocBody776_74 : StackLang.HolProg 64 :=
.seq AllocBody776_56 AllocBody776_73

def AllocBody776_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody776_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody776_83 : StackLang.HolProg 64 :=
.seq AllocBody776_81 AllocBody776_82

def AllocBody776_84 : StackLang.HolProg 64 :=
.seq AllocBody776_80 AllocBody776_83

def AllocBody776_85 : StackLang.HolProg 64 :=
.seq AllocBody776_79 AllocBody776_84

def AllocBody776_86 : StackLang.HolProg 64 :=
.seq AllocBody776_78 AllocBody776_85

def AllocBody776_87 : StackLang.HolProg 64 :=
.seq AllocBody776_77 AllocBody776_86

def AllocBody776_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody776_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_90 : StackLang.HolProg 64 :=
.seq AllocBody776_88 AllocBody776_89

def AllocBody776_91 : StackLang.HolProg 64 :=
.call (some (AllocBody776_87, 0, 776, 4)) (Sum.inl 68) (some (AllocBody776_90, 776, 5))

def AllocBody776_92 : StackLang.HolProg 64 :=
.seq AllocBody776_76 AllocBody776_91

def AllocBody776_93 : StackLang.HolProg 64 :=
.seq AllocBody776_75 AllocBody776_92

def AllocBody776_94 : StackLang.HolProg 64 :=
.seq AllocBody776_74 AllocBody776_93

def AllocBody776_95 : StackLang.HolProg 64 :=
.seq AllocBody776_55 AllocBody776_94

def AllocBody776_96 : StackLang.HolProg 64 :=
.seq AllocBody776_52 AllocBody776_95

def AllocBody776_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody776_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody776_100 : StackLang.HolProg 64 :=
.seq AllocBody776_98 AllocBody776_99

def AllocBody776_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3534#64)

def AllocBody776_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_104 : StackLang.HolProg 64 :=
.seq AllocBody776_102 AllocBody776_103

def AllocBody776_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 7

def AllocBody776_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_115 : StackLang.HolProg 64 :=
.seq AllocBody776_113 AllocBody776_114

def AllocBody776_116 : StackLang.HolProg 64 :=
.seq AllocBody776_112 AllocBody776_115

def AllocBody776_117 : StackLang.HolProg 64 :=
.seq AllocBody776_111 AllocBody776_116

def AllocBody776_118 : StackLang.HolProg 64 :=
.seq AllocBody776_110 AllocBody776_117

def AllocBody776_119 : StackLang.HolProg 64 :=
.seq AllocBody776_109 AllocBody776_118

def AllocBody776_120 : StackLang.HolProg 64 :=
.seq AllocBody776_108 AllocBody776_119

def AllocBody776_121 : StackLang.HolProg 64 :=
.seq AllocBody776_107 AllocBody776_120

def AllocBody776_122 : StackLang.HolProg 64 :=
.seq AllocBody776_106 AllocBody776_121

def AllocBody776_123 : StackLang.HolProg 64 :=
.seq AllocBody776_105 AllocBody776_122

def AllocBody776_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody776_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody776_132 : StackLang.HolProg 64 :=
.seq AllocBody776_130 AllocBody776_131

def AllocBody776_133 : StackLang.HolProg 64 :=
.seq AllocBody776_129 AllocBody776_132

def AllocBody776_134 : StackLang.HolProg 64 :=
.seq AllocBody776_128 AllocBody776_133

def AllocBody776_135 : StackLang.HolProg 64 :=
.seq AllocBody776_127 AllocBody776_134

def AllocBody776_136 : StackLang.HolProg 64 :=
.seq AllocBody776_126 AllocBody776_135

def AllocBody776_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody776_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody776_139 : StackLang.HolProg 64 :=
.seq AllocBody776_137 AllocBody776_138

def AllocBody776_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_141 : StackLang.HolProg 64 :=
.seq AllocBody776_139 AllocBody776_140

def AllocBody776_142 : StackLang.HolProg 64 :=
.call (some (AllocBody776_136, 0, 776, 6)) (Sum.inl 773) (some (AllocBody776_141, 776, 7))

def AllocBody776_143 : StackLang.HolProg 64 :=
.seq AllocBody776_125 AllocBody776_142

def AllocBody776_144 : StackLang.HolProg 64 :=
.seq AllocBody776_124 AllocBody776_143

def AllocBody776_145 : StackLang.HolProg 64 :=
.seq AllocBody776_123 AllocBody776_144

def AllocBody776_146 : StackLang.HolProg 64 :=
.seq AllocBody776_104 AllocBody776_145

def AllocBody776_147 : StackLang.HolProg 64 :=
.seq AllocBody776_101 AllocBody776_146

def AllocBody776_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody776_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody776_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody776_152 : StackLang.HolProg 64 :=
.seq AllocBody776_150 AllocBody776_151

def AllocBody776_153 : StackLang.HolProg 64 :=
.seq AllocBody776_149 AllocBody776_152

def AllocBody776_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3535#64)

def AllocBody776_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_157 : StackLang.HolProg 64 :=
.seq AllocBody776_155 AllocBody776_156

def AllocBody776_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 9

def AllocBody776_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_168 : StackLang.HolProg 64 :=
.seq AllocBody776_166 AllocBody776_167

def AllocBody776_169 : StackLang.HolProg 64 :=
.seq AllocBody776_165 AllocBody776_168

def AllocBody776_170 : StackLang.HolProg 64 :=
.seq AllocBody776_164 AllocBody776_169

def AllocBody776_171 : StackLang.HolProg 64 :=
.seq AllocBody776_163 AllocBody776_170

def AllocBody776_172 : StackLang.HolProg 64 :=
.seq AllocBody776_162 AllocBody776_171

def AllocBody776_173 : StackLang.HolProg 64 :=
.seq AllocBody776_161 AllocBody776_172

def AllocBody776_174 : StackLang.HolProg 64 :=
.seq AllocBody776_160 AllocBody776_173

def AllocBody776_175 : StackLang.HolProg 64 :=
.seq AllocBody776_159 AllocBody776_174

def AllocBody776_176 : StackLang.HolProg 64 :=
.seq AllocBody776_158 AllocBody776_175

def AllocBody776_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody776_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody776_186 : StackLang.HolProg 64 :=
.seq AllocBody776_184 AllocBody776_185

def AllocBody776_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody776_188 : StackLang.HolProg 64 :=
.seq AllocBody776_186 AllocBody776_187

def AllocBody776_189 : StackLang.HolProg 64 :=
.seq AllocBody776_183 AllocBody776_188

def AllocBody776_190 : StackLang.HolProg 64 :=
.seq AllocBody776_182 AllocBody776_189

def AllocBody776_191 : StackLang.HolProg 64 :=
.seq AllocBody776_181 AllocBody776_190

def AllocBody776_192 : StackLang.HolProg 64 :=
.seq AllocBody776_180 AllocBody776_191

def AllocBody776_193 : StackLang.HolProg 64 :=
.seq AllocBody776_179 AllocBody776_192

def AllocBody776_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody776_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody776_197 : StackLang.HolProg 64 :=
.seq AllocBody776_195 AllocBody776_196

def AllocBody776_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody776_199 : StackLang.HolProg 64 :=
.seq AllocBody776_197 AllocBody776_198

def AllocBody776_200 : StackLang.HolProg 64 :=
.seq AllocBody776_194 AllocBody776_199

def AllocBody776_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_202 : StackLang.HolProg 64 :=
.seq AllocBody776_200 AllocBody776_201

def AllocBody776_203 : StackLang.HolProg 64 :=
.call (some (AllocBody776_193, 0, 776, 8)) (Sum.inl 728) (some (AllocBody776_202, 776, 9))

def AllocBody776_204 : StackLang.HolProg 64 :=
.seq AllocBody776_178 AllocBody776_203

def AllocBody776_205 : StackLang.HolProg 64 :=
.seq AllocBody776_177 AllocBody776_204

def AllocBody776_206 : StackLang.HolProg 64 :=
.seq AllocBody776_176 AllocBody776_205

def AllocBody776_207 : StackLang.HolProg 64 :=
.seq AllocBody776_157 AllocBody776_206

def AllocBody776_208 : StackLang.HolProg 64 :=
.seq AllocBody776_154 AllocBody776_207

def AllocBody776_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody776_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody776_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3536#64)

def AllocBody776_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_218 : StackLang.HolProg 64 :=
.seq AllocBody776_216 AllocBody776_217

def AllocBody776_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 11

def AllocBody776_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_229 : StackLang.HolProg 64 :=
.seq AllocBody776_227 AllocBody776_228

def AllocBody776_230 : StackLang.HolProg 64 :=
.seq AllocBody776_226 AllocBody776_229

def AllocBody776_231 : StackLang.HolProg 64 :=
.seq AllocBody776_225 AllocBody776_230

def AllocBody776_232 : StackLang.HolProg 64 :=
.seq AllocBody776_224 AllocBody776_231

def AllocBody776_233 : StackLang.HolProg 64 :=
.seq AllocBody776_223 AllocBody776_232

def AllocBody776_234 : StackLang.HolProg 64 :=
.seq AllocBody776_222 AllocBody776_233

def AllocBody776_235 : StackLang.HolProg 64 :=
.seq AllocBody776_221 AllocBody776_234

def AllocBody776_236 : StackLang.HolProg 64 :=
.seq AllocBody776_220 AllocBody776_235

def AllocBody776_237 : StackLang.HolProg 64 :=
.seq AllocBody776_219 AllocBody776_236

def AllocBody776_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody776_245 : StackLang.HolProg 64 :=
.seq AllocBody776_243 AllocBody776_244

def AllocBody776_246 : StackLang.HolProg 64 :=
.seq AllocBody776_242 AllocBody776_245

def AllocBody776_247 : StackLang.HolProg 64 :=
.seq AllocBody776_241 AllocBody776_246

def AllocBody776_248 : StackLang.HolProg 64 :=
.seq AllocBody776_240 AllocBody776_247

def AllocBody776_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody776_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_251 : StackLang.HolProg 64 :=
.seq AllocBody776_249 AllocBody776_250

def AllocBody776_252 : StackLang.HolProg 64 :=
.call (some (AllocBody776_248, 0, 776, 10)) (Sum.inl 728) (some (AllocBody776_251, 776, 11))

def AllocBody776_253 : StackLang.HolProg 64 :=
.seq AllocBody776_239 AllocBody776_252

def AllocBody776_254 : StackLang.HolProg 64 :=
.seq AllocBody776_238 AllocBody776_253

def AllocBody776_255 : StackLang.HolProg 64 :=
.seq AllocBody776_237 AllocBody776_254

def AllocBody776_256 : StackLang.HolProg 64 :=
.seq AllocBody776_218 AllocBody776_255

def AllocBody776_257 : StackLang.HolProg 64 :=
.seq AllocBody776_215 AllocBody776_256

def AllocBody776_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody776_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3537#64)

def AllocBody776_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_263 : StackLang.HolProg 64 :=
.seq AllocBody776_261 AllocBody776_262

def AllocBody776_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody776_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody776_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody776_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 13

def AllocBody776_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody776_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody776_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody776_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody776_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_274 : StackLang.HolProg 64 :=
.seq AllocBody776_272 AllocBody776_273

def AllocBody776_275 : StackLang.HolProg 64 :=
.seq AllocBody776_271 AllocBody776_274

def AllocBody776_276 : StackLang.HolProg 64 :=
.seq AllocBody776_270 AllocBody776_275

def AllocBody776_277 : StackLang.HolProg 64 :=
.seq AllocBody776_269 AllocBody776_276

def AllocBody776_278 : StackLang.HolProg 64 :=
.seq AllocBody776_268 AllocBody776_277

def AllocBody776_279 : StackLang.HolProg 64 :=
.seq AllocBody776_267 AllocBody776_278

def AllocBody776_280 : StackLang.HolProg 64 :=
.seq AllocBody776_266 AllocBody776_279

def AllocBody776_281 : StackLang.HolProg 64 :=
.seq AllocBody776_265 AllocBody776_280

def AllocBody776_282 : StackLang.HolProg 64 :=
.seq AllocBody776_264 AllocBody776_281

def AllocBody776_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody776_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody776_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody776_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody776_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody776_290 : StackLang.HolProg 64 :=
.seq AllocBody776_288 AllocBody776_289

def AllocBody776_291 : StackLang.HolProg 64 :=
.seq AllocBody776_287 AllocBody776_290

def AllocBody776_292 : StackLang.HolProg 64 :=
.seq AllocBody776_286 AllocBody776_291

def AllocBody776_293 : StackLang.HolProg 64 :=
.seq AllocBody776_285 AllocBody776_292

def AllocBody776_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody776_295 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody776_296 : StackLang.HolProg 64 :=
.seq AllocBody776_294 AllocBody776_295

def AllocBody776_297 : StackLang.HolProg 64 :=
.call (some (AllocBody776_293, 0, 776, 12)) (Sum.inl 70) (some (AllocBody776_296, 776, 13))

def AllocBody776_298 : StackLang.HolProg 64 :=
.seq AllocBody776_284 AllocBody776_297

def AllocBody776_299 : StackLang.HolProg 64 :=
.seq AllocBody776_283 AllocBody776_298

def AllocBody776_300 : StackLang.HolProg 64 :=
.seq AllocBody776_282 AllocBody776_299

def AllocBody776_301 : StackLang.HolProg 64 :=
.seq AllocBody776_263 AllocBody776_300

def AllocBody776_302 : StackLang.HolProg 64 :=
.seq AllocBody776_260 AllocBody776_301

def AllocBody776_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody776_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody776_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody776_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody776_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody776_308 : StackLang.HolProg 64 :=
.seq AllocBody776_306 AllocBody776_307

def AllocBody776_309 : StackLang.HolProg 64 :=
.seq AllocBody776_305 AllocBody776_308

def AllocBody776_310 : StackLang.HolProg 64 :=
.seq AllocBody776_304 AllocBody776_309

def AllocBody776_311 : StackLang.HolProg 64 :=
.seq AllocBody776_303 AllocBody776_310

def AllocBody776_312 : StackLang.HolProg 64 :=
.seq AllocBody776_302 AllocBody776_311

def AllocBody776_313 : StackLang.HolProg 64 :=
.seq AllocBody776_259 AllocBody776_312

def AllocBody776_314 : StackLang.HolProg 64 :=
.seq AllocBody776_258 AllocBody776_313

def AllocBody776_315 : StackLang.HolProg 64 :=
.seq AllocBody776_257 AllocBody776_314

def AllocBody776_316 : StackLang.HolProg 64 :=
.seq AllocBody776_214 AllocBody776_315

def AllocBody776_317 : StackLang.HolProg 64 :=
.seq AllocBody776_213 AllocBody776_316

def AllocBody776_318 : StackLang.HolProg 64 :=
.seq AllocBody776_212 AllocBody776_317

def AllocBody776_319 : StackLang.HolProg 64 :=
.seq AllocBody776_211 AllocBody776_318

def AllocBody776_320 : StackLang.HolProg 64 :=
.seq AllocBody776_210 AllocBody776_319

def AllocBody776_321 : StackLang.HolProg 64 :=
.seq AllocBody776_209 AllocBody776_320

def AllocBody776_322 : StackLang.HolProg 64 :=
.seq AllocBody776_208 AllocBody776_321

def AllocBody776_323 : StackLang.HolProg 64 :=
.seq AllocBody776_153 AllocBody776_322

def AllocBody776_324 : StackLang.HolProg 64 :=
.seq AllocBody776_148 AllocBody776_323

def AllocBody776_325 : StackLang.HolProg 64 :=
.seq AllocBody776_147 AllocBody776_324

def AllocBody776_326 : StackLang.HolProg 64 :=
.seq AllocBody776_100 AllocBody776_325

def AllocBody776_327 : StackLang.HolProg 64 :=
.seq AllocBody776_97 AllocBody776_326

def AllocBody776_328 : StackLang.HolProg 64 :=
.seq AllocBody776_96 AllocBody776_327

def AllocBody776_329 : StackLang.HolProg 64 :=
.seq AllocBody776_51 AllocBody776_328

def AllocBody776_330 : StackLang.HolProg 64 :=
.seq AllocBody776_50 AllocBody776_329

def AllocBody776_331 : StackLang.HolProg 64 :=
.seq AllocBody776_49 AllocBody776_330

def AllocBody776_332 : StackLang.HolProg 64 :=
.seq AllocBody776_48 AllocBody776_331

def AllocBody776_333 : StackLang.HolProg 64 :=
.seq AllocBody776_5 AllocBody776_332

def AllocBody776_334 : StackLang.HolProg 64 :=
.seq AllocBody776_0 AllocBody776_333

def Alloc776 : Nat × StackLang.HolProg 64 := (776, AllocBody776_334)
theorem Alloc776_eq : StackAlloc.progComp (776, raw776) = Alloc776 := by
  kernel_rfl
#print axioms Alloc776_eq
end InitECandidate.Proofs.BackendStages
