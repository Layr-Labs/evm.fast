import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw861
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody861_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody861_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody861_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody861_3 : StackLang.HolProg 64 :=
.seq AllocBody861_1 AllocBody861_2

def AllocBody861_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4378#64)

def AllocBody861_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_7 : StackLang.HolProg 64 :=
.seq AllocBody861_5 AllocBody861_6

def AllocBody861_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody861_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody861_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 3

def AllocBody861_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody861_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody861_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody861_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody861_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_18 : StackLang.HolProg 64 :=
.seq AllocBody861_16 AllocBody861_17

def AllocBody861_19 : StackLang.HolProg 64 :=
.seq AllocBody861_15 AllocBody861_18

def AllocBody861_20 : StackLang.HolProg 64 :=
.seq AllocBody861_14 AllocBody861_19

def AllocBody861_21 : StackLang.HolProg 64 :=
.seq AllocBody861_13 AllocBody861_20

def AllocBody861_22 : StackLang.HolProg 64 :=
.seq AllocBody861_12 AllocBody861_21

def AllocBody861_23 : StackLang.HolProg 64 :=
.seq AllocBody861_11 AllocBody861_22

def AllocBody861_24 : StackLang.HolProg 64 :=
.seq AllocBody861_10 AllocBody861_23

def AllocBody861_25 : StackLang.HolProg 64 :=
.seq AllocBody861_9 AllocBody861_24

def AllocBody861_26 : StackLang.HolProg 64 :=
.seq AllocBody861_8 AllocBody861_25

def AllocBody861_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody861_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody861_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody861_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody861_34 : StackLang.HolProg 64 :=
.seq AllocBody861_32 AllocBody861_33

def AllocBody861_35 : StackLang.HolProg 64 :=
.seq AllocBody861_31 AllocBody861_34

def AllocBody861_36 : StackLang.HolProg 64 :=
.seq AllocBody861_30 AllocBody861_35

def AllocBody861_37 : StackLang.HolProg 64 :=
.seq AllocBody861_29 AllocBody861_36

def AllocBody861_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody861_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_40 : StackLang.HolProg 64 :=
.seq AllocBody861_38 AllocBody861_39

def AllocBody861_41 : StackLang.HolProg 64 :=
.call (some (AllocBody861_37, 0, 861, 2)) (Sum.inl 387) (some (AllocBody861_40, 861, 3))

def AllocBody861_42 : StackLang.HolProg 64 :=
.seq AllocBody861_28 AllocBody861_41

def AllocBody861_43 : StackLang.HolProg 64 :=
.seq AllocBody861_27 AllocBody861_42

def AllocBody861_44 : StackLang.HolProg 64 :=
.seq AllocBody861_26 AllocBody861_43

def AllocBody861_45 : StackLang.HolProg 64 :=
.seq AllocBody861_7 AllocBody861_44

def AllocBody861_46 : StackLang.HolProg 64 :=
.seq AllocBody861_4 AllocBody861_45

def AllocBody861_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody861_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody861_50 : StackLang.HolProg 64 :=
.seq AllocBody861_48 AllocBody861_49

def AllocBody861_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4379#64)

def AllocBody861_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_54 : StackLang.HolProg 64 :=
.seq AllocBody861_52 AllocBody861_53

def AllocBody861_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody861_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody861_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 5

def AllocBody861_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody861_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody861_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody861_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody861_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_65 : StackLang.HolProg 64 :=
.seq AllocBody861_63 AllocBody861_64

def AllocBody861_66 : StackLang.HolProg 64 :=
.seq AllocBody861_62 AllocBody861_65

def AllocBody861_67 : StackLang.HolProg 64 :=
.seq AllocBody861_61 AllocBody861_66

def AllocBody861_68 : StackLang.HolProg 64 :=
.seq AllocBody861_60 AllocBody861_67

def AllocBody861_69 : StackLang.HolProg 64 :=
.seq AllocBody861_59 AllocBody861_68

def AllocBody861_70 : StackLang.HolProg 64 :=
.seq AllocBody861_58 AllocBody861_69

def AllocBody861_71 : StackLang.HolProg 64 :=
.seq AllocBody861_57 AllocBody861_70

def AllocBody861_72 : StackLang.HolProg 64 :=
.seq AllocBody861_56 AllocBody861_71

def AllocBody861_73 : StackLang.HolProg 64 :=
.seq AllocBody861_55 AllocBody861_72

def AllocBody861_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody861_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody861_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody861_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_81 : StackLang.HolProg 64 :=
.seq AllocBody861_79 AllocBody861_80

def AllocBody861_82 : StackLang.HolProg 64 :=
.seq AllocBody861_78 AllocBody861_81

def AllocBody861_83 : StackLang.HolProg 64 :=
.seq AllocBody861_77 AllocBody861_82

def AllocBody861_84 : StackLang.HolProg 64 :=
.seq AllocBody861_76 AllocBody861_83

def AllocBody861_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_87 : StackLang.HolProg 64 :=
.seq AllocBody861_85 AllocBody861_86

def AllocBody861_88 : StackLang.HolProg 64 :=
.call (some (AllocBody861_84, 0, 861, 4)) (Sum.inl 565) (some (AllocBody861_87, 861, 5))

def AllocBody861_89 : StackLang.HolProg 64 :=
.seq AllocBody861_75 AllocBody861_88

def AllocBody861_90 : StackLang.HolProg 64 :=
.seq AllocBody861_74 AllocBody861_89

def AllocBody861_91 : StackLang.HolProg 64 :=
.seq AllocBody861_73 AllocBody861_90

def AllocBody861_92 : StackLang.HolProg 64 :=
.seq AllocBody861_54 AllocBody861_91

def AllocBody861_93 : StackLang.HolProg 64 :=
.seq AllocBody861_51 AllocBody861_92

def AllocBody861_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody861_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 70#64)

def AllocBody861_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody861_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody861_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_104 : StackLang.HolProg 64 :=
.seq AllocBody861_102 AllocBody861_103

def AllocBody861_105 : StackLang.HolProg 64 :=
.seq AllocBody861_101 AllocBody861_104

def AllocBody861_106 : StackLang.HolProg 64 :=
.seq AllocBody861_100 AllocBody861_105

def AllocBody861_107 : StackLang.HolProg 64 :=
.seq AllocBody861_99 AllocBody861_106

def AllocBody861_108 : StackLang.HolProg 64 :=
.seq AllocBody861_98 AllocBody861_107

def AllocBody861_109 : StackLang.HolProg 64 :=
.seq AllocBody861_97 AllocBody861_108

def AllocBody861_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody861_109 AllocBody861_110

def AllocBody861_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody861_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4380#64)

def AllocBody861_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_119 : StackLang.HolProg 64 :=
.seq AllocBody861_117 AllocBody861_118

def AllocBody861_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody861_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody861_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 7

def AllocBody861_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody861_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody861_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody861_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody861_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_130 : StackLang.HolProg 64 :=
.seq AllocBody861_128 AllocBody861_129

def AllocBody861_131 : StackLang.HolProg 64 :=
.seq AllocBody861_127 AllocBody861_130

def AllocBody861_132 : StackLang.HolProg 64 :=
.seq AllocBody861_126 AllocBody861_131

def AllocBody861_133 : StackLang.HolProg 64 :=
.seq AllocBody861_125 AllocBody861_132

def AllocBody861_134 : StackLang.HolProg 64 :=
.seq AllocBody861_124 AllocBody861_133

def AllocBody861_135 : StackLang.HolProg 64 :=
.seq AllocBody861_123 AllocBody861_134

def AllocBody861_136 : StackLang.HolProg 64 :=
.seq AllocBody861_122 AllocBody861_135

def AllocBody861_137 : StackLang.HolProg 64 :=
.seq AllocBody861_121 AllocBody861_136

def AllocBody861_138 : StackLang.HolProg 64 :=
.seq AllocBody861_120 AllocBody861_137

def AllocBody861_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody861_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody861_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody861_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody861_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody861_147 : StackLang.HolProg 64 :=
.seq AllocBody861_145 AllocBody861_146

def AllocBody861_148 : StackLang.HolProg 64 :=
.seq AllocBody861_144 AllocBody861_147

def AllocBody861_149 : StackLang.HolProg 64 :=
.seq AllocBody861_143 AllocBody861_148

def AllocBody861_150 : StackLang.HolProg 64 :=
.seq AllocBody861_142 AllocBody861_149

def AllocBody861_151 : StackLang.HolProg 64 :=
.seq AllocBody861_141 AllocBody861_150

def AllocBody861_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody861_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_154 : StackLang.HolProg 64 :=
.seq AllocBody861_152 AllocBody861_153

def AllocBody861_155 : StackLang.HolProg 64 :=
.call (some (AllocBody861_151, 0, 861, 6)) (Sum.inl 68) (some (AllocBody861_154, 861, 7))

def AllocBody861_156 : StackLang.HolProg 64 :=
.seq AllocBody861_140 AllocBody861_155

def AllocBody861_157 : StackLang.HolProg 64 :=
.seq AllocBody861_139 AllocBody861_156

def AllocBody861_158 : StackLang.HolProg 64 :=
.seq AllocBody861_138 AllocBody861_157

def AllocBody861_159 : StackLang.HolProg 64 :=
.seq AllocBody861_119 AllocBody861_158

def AllocBody861_160 : StackLang.HolProg 64 :=
.seq AllocBody861_116 AllocBody861_159

def AllocBody861_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody861_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody861_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4381#64)

def AllocBody861_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_168 : StackLang.HolProg 64 :=
.seq AllocBody861_166 AllocBody861_167

def AllocBody861_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody861_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody861_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody861_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 9

def AllocBody861_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody861_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody861_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody861_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody861_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_179 : StackLang.HolProg 64 :=
.seq AllocBody861_177 AllocBody861_178

def AllocBody861_180 : StackLang.HolProg 64 :=
.seq AllocBody861_176 AllocBody861_179

def AllocBody861_181 : StackLang.HolProg 64 :=
.seq AllocBody861_175 AllocBody861_180

def AllocBody861_182 : StackLang.HolProg 64 :=
.seq AllocBody861_174 AllocBody861_181

def AllocBody861_183 : StackLang.HolProg 64 :=
.seq AllocBody861_173 AllocBody861_182

def AllocBody861_184 : StackLang.HolProg 64 :=
.seq AllocBody861_172 AllocBody861_183

def AllocBody861_185 : StackLang.HolProg 64 :=
.seq AllocBody861_171 AllocBody861_184

def AllocBody861_186 : StackLang.HolProg 64 :=
.seq AllocBody861_170 AllocBody861_185

def AllocBody861_187 : StackLang.HolProg 64 :=
.seq AllocBody861_169 AllocBody861_186

def AllocBody861_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody861_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody861_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody861_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody861_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody861_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody861_196 : StackLang.HolProg 64 :=
.seq AllocBody861_194 AllocBody861_195

def AllocBody861_197 : StackLang.HolProg 64 :=
.seq AllocBody861_193 AllocBody861_196

def AllocBody861_198 : StackLang.HolProg 64 :=
.seq AllocBody861_192 AllocBody861_197

def AllocBody861_199 : StackLang.HolProg 64 :=
.seq AllocBody861_191 AllocBody861_198

def AllocBody861_200 : StackLang.HolProg 64 :=
.seq AllocBody861_190 AllocBody861_199

def AllocBody861_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody861_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_203 : StackLang.HolProg 64 :=
.seq AllocBody861_201 AllocBody861_202

def AllocBody861_204 : StackLang.HolProg 64 :=
.call (some (AllocBody861_200, 0, 861, 8)) (Sum.inl 860) (some (AllocBody861_203, 861, 9))

def AllocBody861_205 : StackLang.HolProg 64 :=
.seq AllocBody861_189 AllocBody861_204

def AllocBody861_206 : StackLang.HolProg 64 :=
.seq AllocBody861_188 AllocBody861_205

def AllocBody861_207 : StackLang.HolProg 64 :=
.seq AllocBody861_187 AllocBody861_206

def AllocBody861_208 : StackLang.HolProg 64 :=
.seq AllocBody861_168 AllocBody861_207

def AllocBody861_209 : StackLang.HolProg 64 :=
.seq AllocBody861_165 AllocBody861_208

def AllocBody861_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody861_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody861_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 71#64)

def AllocBody861_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody861_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody861_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody861_221 : StackLang.HolProg 64 :=
.seq AllocBody861_219 AllocBody861_220

def AllocBody861_222 : StackLang.HolProg 64 :=
.seq AllocBody861_218 AllocBody861_221

def AllocBody861_223 : StackLang.HolProg 64 :=
.seq AllocBody861_217 AllocBody861_222

def AllocBody861_224 : StackLang.HolProg 64 :=
.seq AllocBody861_216 AllocBody861_223

def AllocBody861_225 : StackLang.HolProg 64 :=
.seq AllocBody861_215 AllocBody861_224

def AllocBody861_226 : StackLang.HolProg 64 :=
.seq AllocBody861_214 AllocBody861_225

def AllocBody861_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody861_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody861_226 AllocBody861_227

def AllocBody861_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody861_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody861_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody861_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody861_234 : StackLang.HolProg 64 :=
.seq AllocBody861_232 AllocBody861_233

def AllocBody861_235 : StackLang.HolProg 64 :=
.seq AllocBody861_231 AllocBody861_234

def AllocBody861_236 : StackLang.HolProg 64 :=
.seq AllocBody861_230 AllocBody861_235

def AllocBody861_237 : StackLang.HolProg 64 :=
.seq AllocBody861_229 AllocBody861_236

def AllocBody861_238 : StackLang.HolProg 64 :=
.seq AllocBody861_228 AllocBody861_237

def AllocBody861_239 : StackLang.HolProg 64 :=
.seq AllocBody861_213 AllocBody861_238

def AllocBody861_240 : StackLang.HolProg 64 :=
.seq AllocBody861_212 AllocBody861_239

def AllocBody861_241 : StackLang.HolProg 64 :=
.seq AllocBody861_211 AllocBody861_240

def AllocBody861_242 : StackLang.HolProg 64 :=
.seq AllocBody861_210 AllocBody861_241

def AllocBody861_243 : StackLang.HolProg 64 :=
.seq AllocBody861_209 AllocBody861_242

def AllocBody861_244 : StackLang.HolProg 64 :=
.seq AllocBody861_164 AllocBody861_243

def AllocBody861_245 : StackLang.HolProg 64 :=
.seq AllocBody861_163 AllocBody861_244

def AllocBody861_246 : StackLang.HolProg 64 :=
.seq AllocBody861_162 AllocBody861_245

def AllocBody861_247 : StackLang.HolProg 64 :=
.seq AllocBody861_161 AllocBody861_246

def AllocBody861_248 : StackLang.HolProg 64 :=
.seq AllocBody861_160 AllocBody861_247

def AllocBody861_249 : StackLang.HolProg 64 :=
.seq AllocBody861_115 AllocBody861_248

def AllocBody861_250 : StackLang.HolProg 64 :=
.seq AllocBody861_114 AllocBody861_249

def AllocBody861_251 : StackLang.HolProg 64 :=
.seq AllocBody861_113 AllocBody861_250

def AllocBody861_252 : StackLang.HolProg 64 :=
.seq AllocBody861_112 AllocBody861_251

def AllocBody861_253 : StackLang.HolProg 64 :=
.seq AllocBody861_111 AllocBody861_252

def AllocBody861_254 : StackLang.HolProg 64 :=
.seq AllocBody861_96 AllocBody861_253

def AllocBody861_255 : StackLang.HolProg 64 :=
.seq AllocBody861_95 AllocBody861_254

def AllocBody861_256 : StackLang.HolProg 64 :=
.seq AllocBody861_94 AllocBody861_255

def AllocBody861_257 : StackLang.HolProg 64 :=
.seq AllocBody861_93 AllocBody861_256

def AllocBody861_258 : StackLang.HolProg 64 :=
.seq AllocBody861_50 AllocBody861_257

def AllocBody861_259 : StackLang.HolProg 64 :=
.seq AllocBody861_47 AllocBody861_258

def AllocBody861_260 : StackLang.HolProg 64 :=
.seq AllocBody861_46 AllocBody861_259

def AllocBody861_261 : StackLang.HolProg 64 :=
.seq AllocBody861_3 AllocBody861_260

def AllocBody861_262 : StackLang.HolProg 64 :=
.seq AllocBody861_0 AllocBody861_261

def Alloc861 : Nat × StackLang.HolProg 64 := (861, AllocBody861_262)
theorem Alloc861_eq : StackAlloc.progComp (861, raw861) = Alloc861 := by
  kernel_rfl
#print axioms Alloc861_eq
end InitECandidate.Proofs.BackendStages
