import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw757
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody757_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody757_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody757_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody757_3 : StackLang.HolProg 64 :=
.seq AllocBody757_1 AllocBody757_2

def AllocBody757_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3374#64)

def AllocBody757_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_7 : StackLang.HolProg 64 :=
.seq AllocBody757_5 AllocBody757_6

def AllocBody757_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody757_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody757_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 3

def AllocBody757_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody757_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody757_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody757_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody757_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_18 : StackLang.HolProg 64 :=
.seq AllocBody757_16 AllocBody757_17

def AllocBody757_19 : StackLang.HolProg 64 :=
.seq AllocBody757_15 AllocBody757_18

def AllocBody757_20 : StackLang.HolProg 64 :=
.seq AllocBody757_14 AllocBody757_19

def AllocBody757_21 : StackLang.HolProg 64 :=
.seq AllocBody757_13 AllocBody757_20

def AllocBody757_22 : StackLang.HolProg 64 :=
.seq AllocBody757_12 AllocBody757_21

def AllocBody757_23 : StackLang.HolProg 64 :=
.seq AllocBody757_11 AllocBody757_22

def AllocBody757_24 : StackLang.HolProg 64 :=
.seq AllocBody757_10 AllocBody757_23

def AllocBody757_25 : StackLang.HolProg 64 :=
.seq AllocBody757_9 AllocBody757_24

def AllocBody757_26 : StackLang.HolProg 64 :=
.seq AllocBody757_8 AllocBody757_25

def AllocBody757_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody757_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody757_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody757_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody757_34 : StackLang.HolProg 64 :=
.seq AllocBody757_32 AllocBody757_33

def AllocBody757_35 : StackLang.HolProg 64 :=
.seq AllocBody757_31 AllocBody757_34

def AllocBody757_36 : StackLang.HolProg 64 :=
.seq AllocBody757_30 AllocBody757_35

def AllocBody757_37 : StackLang.HolProg 64 :=
.seq AllocBody757_29 AllocBody757_36

def AllocBody757_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody757_40 : StackLang.HolProg 64 :=
.seq AllocBody757_38 AllocBody757_39

def AllocBody757_41 : StackLang.HolProg 64 :=
.call (some (AllocBody757_37, 0, 757, 2)) (Sum.inl 69) (some (AllocBody757_40, 757, 3))

def AllocBody757_42 : StackLang.HolProg 64 :=
.seq AllocBody757_28 AllocBody757_41

def AllocBody757_43 : StackLang.HolProg 64 :=
.seq AllocBody757_27 AllocBody757_42

def AllocBody757_44 : StackLang.HolProg 64 :=
.seq AllocBody757_26 AllocBody757_43

def AllocBody757_45 : StackLang.HolProg 64 :=
.seq AllocBody757_7 AllocBody757_44

def AllocBody757_46 : StackLang.HolProg 64 :=
.seq AllocBody757_4 AllocBody757_45

def AllocBody757_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody757_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def AllocBody757_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody757_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3375#64)

def AllocBody757_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_53 : StackLang.HolProg 64 :=
.seq AllocBody757_51 AllocBody757_52

def AllocBody757_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody757_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody757_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 5

def AllocBody757_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody757_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody757_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody757_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody757_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_64 : StackLang.HolProg 64 :=
.seq AllocBody757_62 AllocBody757_63

def AllocBody757_65 : StackLang.HolProg 64 :=
.seq AllocBody757_61 AllocBody757_64

def AllocBody757_66 : StackLang.HolProg 64 :=
.seq AllocBody757_60 AllocBody757_65

def AllocBody757_67 : StackLang.HolProg 64 :=
.seq AllocBody757_59 AllocBody757_66

def AllocBody757_68 : StackLang.HolProg 64 :=
.seq AllocBody757_58 AllocBody757_67

def AllocBody757_69 : StackLang.HolProg 64 :=
.seq AllocBody757_57 AllocBody757_68

def AllocBody757_70 : StackLang.HolProg 64 :=
.seq AllocBody757_56 AllocBody757_69

def AllocBody757_71 : StackLang.HolProg 64 :=
.seq AllocBody757_55 AllocBody757_70

def AllocBody757_72 : StackLang.HolProg 64 :=
.seq AllocBody757_54 AllocBody757_71

def AllocBody757_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody757_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody757_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody757_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody757_80 : StackLang.HolProg 64 :=
.seq AllocBody757_78 AllocBody757_79

def AllocBody757_81 : StackLang.HolProg 64 :=
.seq AllocBody757_77 AllocBody757_80

def AllocBody757_82 : StackLang.HolProg 64 :=
.seq AllocBody757_76 AllocBody757_81

def AllocBody757_83 : StackLang.HolProg 64 :=
.seq AllocBody757_75 AllocBody757_82

def AllocBody757_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody757_86 : StackLang.HolProg 64 :=
.seq AllocBody757_84 AllocBody757_85

def AllocBody757_87 : StackLang.HolProg 64 :=
.call (some (AllocBody757_83, 0, 757, 4)) (Sum.inl 68) (some (AllocBody757_86, 757, 5))

def AllocBody757_88 : StackLang.HolProg 64 :=
.seq AllocBody757_74 AllocBody757_87

def AllocBody757_89 : StackLang.HolProg 64 :=
.seq AllocBody757_73 AllocBody757_88

def AllocBody757_90 : StackLang.HolProg 64 :=
.seq AllocBody757_72 AllocBody757_89

def AllocBody757_91 : StackLang.HolProg 64 :=
.seq AllocBody757_53 AllocBody757_90

def AllocBody757_92 : StackLang.HolProg 64 :=
.seq AllocBody757_50 AllocBody757_91

def AllocBody757_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody757_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody757_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody757_96 : StackLang.HolProg 64 :=
.seq AllocBody757_94 AllocBody757_95

def AllocBody757_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3376#64)

def AllocBody757_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_100 : StackLang.HolProg 64 :=
.seq AllocBody757_98 AllocBody757_99

def AllocBody757_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody757_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody757_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 7

def AllocBody757_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody757_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody757_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody757_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody757_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_111 : StackLang.HolProg 64 :=
.seq AllocBody757_109 AllocBody757_110

def AllocBody757_112 : StackLang.HolProg 64 :=
.seq AllocBody757_108 AllocBody757_111

def AllocBody757_113 : StackLang.HolProg 64 :=
.seq AllocBody757_107 AllocBody757_112

def AllocBody757_114 : StackLang.HolProg 64 :=
.seq AllocBody757_106 AllocBody757_113

def AllocBody757_115 : StackLang.HolProg 64 :=
.seq AllocBody757_105 AllocBody757_114

def AllocBody757_116 : StackLang.HolProg 64 :=
.seq AllocBody757_104 AllocBody757_115

def AllocBody757_117 : StackLang.HolProg 64 :=
.seq AllocBody757_103 AllocBody757_116

def AllocBody757_118 : StackLang.HolProg 64 :=
.seq AllocBody757_102 AllocBody757_117

def AllocBody757_119 : StackLang.HolProg 64 :=
.seq AllocBody757_101 AllocBody757_118

def AllocBody757_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody757_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody757_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody757_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody757_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody757_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody757_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody757_130 : StackLang.HolProg 64 :=
.seq AllocBody757_128 AllocBody757_129

def AllocBody757_131 : StackLang.HolProg 64 :=
.seq AllocBody757_127 AllocBody757_130

def AllocBody757_132 : StackLang.HolProg 64 :=
.seq AllocBody757_126 AllocBody757_131

def AllocBody757_133 : StackLang.HolProg 64 :=
.seq AllocBody757_125 AllocBody757_132

def AllocBody757_134 : StackLang.HolProg 64 :=
.seq AllocBody757_124 AllocBody757_133

def AllocBody757_135 : StackLang.HolProg 64 :=
.seq AllocBody757_123 AllocBody757_134

def AllocBody757_136 : StackLang.HolProg 64 :=
.seq AllocBody757_122 AllocBody757_135

def AllocBody757_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody757_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody757_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody757_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody757_141 : StackLang.HolProg 64 :=
.seq AllocBody757_139 AllocBody757_140

def AllocBody757_142 : StackLang.HolProg 64 :=
.seq AllocBody757_138 AllocBody757_141

def AllocBody757_143 : StackLang.HolProg 64 :=
.seq AllocBody757_137 AllocBody757_142

def AllocBody757_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody757_145 : StackLang.HolProg 64 :=
.seq AllocBody757_143 AllocBody757_144

def AllocBody757_146 : StackLang.HolProg 64 :=
.call (some (AllocBody757_136, 0, 757, 6)) (Sum.inl 756) (some (AllocBody757_145, 757, 7))

def AllocBody757_147 : StackLang.HolProg 64 :=
.seq AllocBody757_121 AllocBody757_146

def AllocBody757_148 : StackLang.HolProg 64 :=
.seq AllocBody757_120 AllocBody757_147

def AllocBody757_149 : StackLang.HolProg 64 :=
.seq AllocBody757_119 AllocBody757_148

def AllocBody757_150 : StackLang.HolProg 64 :=
.seq AllocBody757_100 AllocBody757_149

def AllocBody757_151 : StackLang.HolProg 64 :=
.seq AllocBody757_97 AllocBody757_150

def AllocBody757_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody757_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody757_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def AllocBody757_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3377#64)

def AllocBody757_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_159 : StackLang.HolProg 64 :=
.seq AllocBody757_157 AllocBody757_158

def AllocBody757_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody757_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody757_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 9

def AllocBody757_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody757_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody757_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody757_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody757_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_170 : StackLang.HolProg 64 :=
.seq AllocBody757_168 AllocBody757_169

def AllocBody757_171 : StackLang.HolProg 64 :=
.seq AllocBody757_167 AllocBody757_170

def AllocBody757_172 : StackLang.HolProg 64 :=
.seq AllocBody757_166 AllocBody757_171

def AllocBody757_173 : StackLang.HolProg 64 :=
.seq AllocBody757_165 AllocBody757_172

def AllocBody757_174 : StackLang.HolProg 64 :=
.seq AllocBody757_164 AllocBody757_173

def AllocBody757_175 : StackLang.HolProg 64 :=
.seq AllocBody757_163 AllocBody757_174

def AllocBody757_176 : StackLang.HolProg 64 :=
.seq AllocBody757_162 AllocBody757_175

def AllocBody757_177 : StackLang.HolProg 64 :=
.seq AllocBody757_161 AllocBody757_176

def AllocBody757_178 : StackLang.HolProg 64 :=
.seq AllocBody757_160 AllocBody757_177

def AllocBody757_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody757_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody757_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody757_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody757_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody757_187 : StackLang.HolProg 64 :=
.seq AllocBody757_185 AllocBody757_186

def AllocBody757_188 : StackLang.HolProg 64 :=
.seq AllocBody757_184 AllocBody757_187

def AllocBody757_189 : StackLang.HolProg 64 :=
.seq AllocBody757_183 AllocBody757_188

def AllocBody757_190 : StackLang.HolProg 64 :=
.seq AllocBody757_182 AllocBody757_189

def AllocBody757_191 : StackLang.HolProg 64 :=
.seq AllocBody757_181 AllocBody757_190

def AllocBody757_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody757_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody757_194 : StackLang.HolProg 64 :=
.seq AllocBody757_192 AllocBody757_193

def AllocBody757_195 : StackLang.HolProg 64 :=
.call (some (AllocBody757_191, 0, 757, 8)) (Sum.inl 79) (some (AllocBody757_194, 757, 9))

def AllocBody757_196 : StackLang.HolProg 64 :=
.seq AllocBody757_180 AllocBody757_195

def AllocBody757_197 : StackLang.HolProg 64 :=
.seq AllocBody757_179 AllocBody757_196

def AllocBody757_198 : StackLang.HolProg 64 :=
.seq AllocBody757_178 AllocBody757_197

def AllocBody757_199 : StackLang.HolProg 64 :=
.seq AllocBody757_159 AllocBody757_198

def AllocBody757_200 : StackLang.HolProg 64 :=
.seq AllocBody757_156 AllocBody757_199

def AllocBody757_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody757_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody757_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody757_204 : StackLang.HolProg 64 :=
.seq AllocBody757_202 AllocBody757_203

def AllocBody757_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3378#64)

def AllocBody757_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_208 : StackLang.HolProg 64 :=
.seq AllocBody757_206 AllocBody757_207

def AllocBody757_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody757_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody757_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody757_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 11

def AllocBody757_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody757_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody757_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody757_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody757_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_219 : StackLang.HolProg 64 :=
.seq AllocBody757_217 AllocBody757_218

def AllocBody757_220 : StackLang.HolProg 64 :=
.seq AllocBody757_216 AllocBody757_219

def AllocBody757_221 : StackLang.HolProg 64 :=
.seq AllocBody757_215 AllocBody757_220

def AllocBody757_222 : StackLang.HolProg 64 :=
.seq AllocBody757_214 AllocBody757_221

def AllocBody757_223 : StackLang.HolProg 64 :=
.seq AllocBody757_213 AllocBody757_222

def AllocBody757_224 : StackLang.HolProg 64 :=
.seq AllocBody757_212 AllocBody757_223

def AllocBody757_225 : StackLang.HolProg 64 :=
.seq AllocBody757_211 AllocBody757_224

def AllocBody757_226 : StackLang.HolProg 64 :=
.seq AllocBody757_210 AllocBody757_225

def AllocBody757_227 : StackLang.HolProg 64 :=
.seq AllocBody757_209 AllocBody757_226

def AllocBody757_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody757_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody757_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody757_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody757_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody757_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody757_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody757_236 : StackLang.HolProg 64 :=
.seq AllocBody757_234 AllocBody757_235

def AllocBody757_237 : StackLang.HolProg 64 :=
.seq AllocBody757_233 AllocBody757_236

def AllocBody757_238 : StackLang.HolProg 64 :=
.seq AllocBody757_232 AllocBody757_237

def AllocBody757_239 : StackLang.HolProg 64 :=
.seq AllocBody757_231 AllocBody757_238

def AllocBody757_240 : StackLang.HolProg 64 :=
.seq AllocBody757_230 AllocBody757_239

def AllocBody757_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody757_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody757_243 : StackLang.HolProg 64 :=
.seq AllocBody757_241 AllocBody757_242

def AllocBody757_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody757_245 : StackLang.HolProg 64 :=
.seq AllocBody757_243 AllocBody757_244

def AllocBody757_246 : StackLang.HolProg 64 :=
.call (some (AllocBody757_240, 0, 757, 10)) (Sum.inl 70) (some (AllocBody757_245, 757, 11))

def AllocBody757_247 : StackLang.HolProg 64 :=
.seq AllocBody757_229 AllocBody757_246

def AllocBody757_248 : StackLang.HolProg 64 :=
.seq AllocBody757_228 AllocBody757_247

def AllocBody757_249 : StackLang.HolProg 64 :=
.seq AllocBody757_227 AllocBody757_248

def AllocBody757_250 : StackLang.HolProg 64 :=
.seq AllocBody757_208 AllocBody757_249

def AllocBody757_251 : StackLang.HolProg 64 :=
.seq AllocBody757_205 AllocBody757_250

def AllocBody757_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody757_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody757_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody757_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody757_256 : StackLang.HolProg 64 :=
.seq AllocBody757_254 AllocBody757_255

def AllocBody757_257 : StackLang.HolProg 64 :=
.seq AllocBody757_253 AllocBody757_256

def AllocBody757_258 : StackLang.HolProg 64 :=
.seq AllocBody757_252 AllocBody757_257

def AllocBody757_259 : StackLang.HolProg 64 :=
.seq AllocBody757_251 AllocBody757_258

def AllocBody757_260 : StackLang.HolProg 64 :=
.seq AllocBody757_204 AllocBody757_259

def AllocBody757_261 : StackLang.HolProg 64 :=
.seq AllocBody757_201 AllocBody757_260

def AllocBody757_262 : StackLang.HolProg 64 :=
.seq AllocBody757_200 AllocBody757_261

def AllocBody757_263 : StackLang.HolProg 64 :=
.seq AllocBody757_155 AllocBody757_262

def AllocBody757_264 : StackLang.HolProg 64 :=
.seq AllocBody757_154 AllocBody757_263

def AllocBody757_265 : StackLang.HolProg 64 :=
.seq AllocBody757_153 AllocBody757_264

def AllocBody757_266 : StackLang.HolProg 64 :=
.seq AllocBody757_152 AllocBody757_265

def AllocBody757_267 : StackLang.HolProg 64 :=
.seq AllocBody757_151 AllocBody757_266

def AllocBody757_268 : StackLang.HolProg 64 :=
.seq AllocBody757_96 AllocBody757_267

def AllocBody757_269 : StackLang.HolProg 64 :=
.seq AllocBody757_93 AllocBody757_268

def AllocBody757_270 : StackLang.HolProg 64 :=
.seq AllocBody757_92 AllocBody757_269

def AllocBody757_271 : StackLang.HolProg 64 :=
.seq AllocBody757_49 AllocBody757_270

def AllocBody757_272 : StackLang.HolProg 64 :=
.seq AllocBody757_48 AllocBody757_271

def AllocBody757_273 : StackLang.HolProg 64 :=
.seq AllocBody757_47 AllocBody757_272

def AllocBody757_274 : StackLang.HolProg 64 :=
.seq AllocBody757_46 AllocBody757_273

def AllocBody757_275 : StackLang.HolProg 64 :=
.seq AllocBody757_3 AllocBody757_274

def AllocBody757_276 : StackLang.HolProg 64 :=
.seq AllocBody757_0 AllocBody757_275

def Alloc757 : Nat × StackLang.HolProg 64 := (757, AllocBody757_276)
theorem Alloc757_eq : StackAlloc.progComp (757, raw757) = Alloc757 := by
  kernel_rfl
#print axioms Alloc757_eq
end InitECandidate.Proofs.BackendStages
