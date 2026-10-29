import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw786
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody786_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody786_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody786_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody786_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody786_4 : StackLang.HolProg 64 :=
.seq AllocBody786_2 AllocBody786_3

def AllocBody786_5 : StackLang.HolProg 64 :=
.seq AllocBody786_1 AllocBody786_4

def AllocBody786_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3634#64)

def AllocBody786_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_9 : StackLang.HolProg 64 :=
.seq AllocBody786_7 AllocBody786_8

def AllocBody786_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 3

def AllocBody786_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_20 : StackLang.HolProg 64 :=
.seq AllocBody786_18 AllocBody786_19

def AllocBody786_21 : StackLang.HolProg 64 :=
.seq AllocBody786_17 AllocBody786_20

def AllocBody786_22 : StackLang.HolProg 64 :=
.seq AllocBody786_16 AllocBody786_21

def AllocBody786_23 : StackLang.HolProg 64 :=
.seq AllocBody786_15 AllocBody786_22

def AllocBody786_24 : StackLang.HolProg 64 :=
.seq AllocBody786_14 AllocBody786_23

def AllocBody786_25 : StackLang.HolProg 64 :=
.seq AllocBody786_13 AllocBody786_24

def AllocBody786_26 : StackLang.HolProg 64 :=
.seq AllocBody786_12 AllocBody786_25

def AllocBody786_27 : StackLang.HolProg 64 :=
.seq AllocBody786_11 AllocBody786_26

def AllocBody786_28 : StackLang.HolProg 64 :=
.seq AllocBody786_10 AllocBody786_27

def AllocBody786_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody786_36 : StackLang.HolProg 64 :=
.seq AllocBody786_34 AllocBody786_35

def AllocBody786_37 : StackLang.HolProg 64 :=
.seq AllocBody786_33 AllocBody786_36

def AllocBody786_38 : StackLang.HolProg 64 :=
.seq AllocBody786_32 AllocBody786_37

def AllocBody786_39 : StackLang.HolProg 64 :=
.seq AllocBody786_31 AllocBody786_38

def AllocBody786_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_42 : StackLang.HolProg 64 :=
.seq AllocBody786_40 AllocBody786_41

def AllocBody786_43 : StackLang.HolProg 64 :=
.call (some (AllocBody786_39, 0, 786, 2)) (Sum.inl 69) (some (AllocBody786_42, 786, 3))

def AllocBody786_44 : StackLang.HolProg 64 :=
.seq AllocBody786_30 AllocBody786_43

def AllocBody786_45 : StackLang.HolProg 64 :=
.seq AllocBody786_29 AllocBody786_44

def AllocBody786_46 : StackLang.HolProg 64 :=
.seq AllocBody786_28 AllocBody786_45

def AllocBody786_47 : StackLang.HolProg 64 :=
.seq AllocBody786_9 AllocBody786_46

def AllocBody786_48 : StackLang.HolProg 64 :=
.seq AllocBody786_6 AllocBody786_47

def AllocBody786_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody786_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody786_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3635#64)

def AllocBody786_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_55 : StackLang.HolProg 64 :=
.seq AllocBody786_53 AllocBody786_54

def AllocBody786_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 5

def AllocBody786_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_66 : StackLang.HolProg 64 :=
.seq AllocBody786_64 AllocBody786_65

def AllocBody786_67 : StackLang.HolProg 64 :=
.seq AllocBody786_63 AllocBody786_66

def AllocBody786_68 : StackLang.HolProg 64 :=
.seq AllocBody786_62 AllocBody786_67

def AllocBody786_69 : StackLang.HolProg 64 :=
.seq AllocBody786_61 AllocBody786_68

def AllocBody786_70 : StackLang.HolProg 64 :=
.seq AllocBody786_60 AllocBody786_69

def AllocBody786_71 : StackLang.HolProg 64 :=
.seq AllocBody786_59 AllocBody786_70

def AllocBody786_72 : StackLang.HolProg 64 :=
.seq AllocBody786_58 AllocBody786_71

def AllocBody786_73 : StackLang.HolProg 64 :=
.seq AllocBody786_57 AllocBody786_72

def AllocBody786_74 : StackLang.HolProg 64 :=
.seq AllocBody786_56 AllocBody786_73

def AllocBody786_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody786_82 : StackLang.HolProg 64 :=
.seq AllocBody786_80 AllocBody786_81

def AllocBody786_83 : StackLang.HolProg 64 :=
.seq AllocBody786_79 AllocBody786_82

def AllocBody786_84 : StackLang.HolProg 64 :=
.seq AllocBody786_78 AllocBody786_83

def AllocBody786_85 : StackLang.HolProg 64 :=
.seq AllocBody786_77 AllocBody786_84

def AllocBody786_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_88 : StackLang.HolProg 64 :=
.seq AllocBody786_86 AllocBody786_87

def AllocBody786_89 : StackLang.HolProg 64 :=
.call (some (AllocBody786_85, 0, 786, 4)) (Sum.inl 68) (some (AllocBody786_88, 786, 5))

def AllocBody786_90 : StackLang.HolProg 64 :=
.seq AllocBody786_76 AllocBody786_89

def AllocBody786_91 : StackLang.HolProg 64 :=
.seq AllocBody786_75 AllocBody786_90

def AllocBody786_92 : StackLang.HolProg 64 :=
.seq AllocBody786_74 AllocBody786_91

def AllocBody786_93 : StackLang.HolProg 64 :=
.seq AllocBody786_55 AllocBody786_92

def AllocBody786_94 : StackLang.HolProg 64 :=
.seq AllocBody786_52 AllocBody786_93

def AllocBody786_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody786_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody786_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3636#64)

def AllocBody786_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_101 : StackLang.HolProg 64 :=
.seq AllocBody786_99 AllocBody786_100

def AllocBody786_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 7

def AllocBody786_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_112 : StackLang.HolProg 64 :=
.seq AllocBody786_110 AllocBody786_111

def AllocBody786_113 : StackLang.HolProg 64 :=
.seq AllocBody786_109 AllocBody786_112

def AllocBody786_114 : StackLang.HolProg 64 :=
.seq AllocBody786_108 AllocBody786_113

def AllocBody786_115 : StackLang.HolProg 64 :=
.seq AllocBody786_107 AllocBody786_114

def AllocBody786_116 : StackLang.HolProg 64 :=
.seq AllocBody786_106 AllocBody786_115

def AllocBody786_117 : StackLang.HolProg 64 :=
.seq AllocBody786_105 AllocBody786_116

def AllocBody786_118 : StackLang.HolProg 64 :=
.seq AllocBody786_104 AllocBody786_117

def AllocBody786_119 : StackLang.HolProg 64 :=
.seq AllocBody786_103 AllocBody786_118

def AllocBody786_120 : StackLang.HolProg 64 :=
.seq AllocBody786_102 AllocBody786_119

def AllocBody786_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody786_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody786_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody786_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_132 : StackLang.HolProg 64 :=
.seq AllocBody786_130 AllocBody786_131

def AllocBody786_133 : StackLang.HolProg 64 :=
.seq AllocBody786_129 AllocBody786_132

def AllocBody786_134 : StackLang.HolProg 64 :=
.seq AllocBody786_128 AllocBody786_133

def AllocBody786_135 : StackLang.HolProg 64 :=
.seq AllocBody786_127 AllocBody786_134

def AllocBody786_136 : StackLang.HolProg 64 :=
.seq AllocBody786_126 AllocBody786_135

def AllocBody786_137 : StackLang.HolProg 64 :=
.seq AllocBody786_125 AllocBody786_136

def AllocBody786_138 : StackLang.HolProg 64 :=
.seq AllocBody786_124 AllocBody786_137

def AllocBody786_139 : StackLang.HolProg 64 :=
.seq AllocBody786_123 AllocBody786_138

def AllocBody786_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody786_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody786_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_144 : StackLang.HolProg 64 :=
.seq AllocBody786_142 AllocBody786_143

def AllocBody786_145 : StackLang.HolProg 64 :=
.seq AllocBody786_141 AllocBody786_144

def AllocBody786_146 : StackLang.HolProg 64 :=
.seq AllocBody786_140 AllocBody786_145

def AllocBody786_147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_148 : StackLang.HolProg 64 :=
.seq AllocBody786_146 AllocBody786_147

def AllocBody786_149 : StackLang.HolProg 64 :=
.call (some (AllocBody786_139, 0, 786, 6)) (Sum.inl 68) (some (AllocBody786_148, 786, 7))

def AllocBody786_150 : StackLang.HolProg 64 :=
.seq AllocBody786_122 AllocBody786_149

def AllocBody786_151 : StackLang.HolProg 64 :=
.seq AllocBody786_121 AllocBody786_150

def AllocBody786_152 : StackLang.HolProg 64 :=
.seq AllocBody786_120 AllocBody786_151

def AllocBody786_153 : StackLang.HolProg 64 :=
.seq AllocBody786_101 AllocBody786_152

def AllocBody786_154 : StackLang.HolProg 64 :=
.seq AllocBody786_98 AllocBody786_153

def AllocBody786_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody786_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody786_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody786_159 : StackLang.HolProg 64 :=
.seq AllocBody786_157 AllocBody786_158

def AllocBody786_160 : StackLang.HolProg 64 :=
.seq AllocBody786_156 AllocBody786_159

def AllocBody786_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3637#64)

def AllocBody786_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_164 : StackLang.HolProg 64 :=
.seq AllocBody786_162 AllocBody786_163

def AllocBody786_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 9

def AllocBody786_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_175 : StackLang.HolProg 64 :=
.seq AllocBody786_173 AllocBody786_174

def AllocBody786_176 : StackLang.HolProg 64 :=
.seq AllocBody786_172 AllocBody786_175

def AllocBody786_177 : StackLang.HolProg 64 :=
.seq AllocBody786_171 AllocBody786_176

def AllocBody786_178 : StackLang.HolProg 64 :=
.seq AllocBody786_170 AllocBody786_177

def AllocBody786_179 : StackLang.HolProg 64 :=
.seq AllocBody786_169 AllocBody786_178

def AllocBody786_180 : StackLang.HolProg 64 :=
.seq AllocBody786_168 AllocBody786_179

def AllocBody786_181 : StackLang.HolProg 64 :=
.seq AllocBody786_167 AllocBody786_180

def AllocBody786_182 : StackLang.HolProg 64 :=
.seq AllocBody786_166 AllocBody786_181

def AllocBody786_183 : StackLang.HolProg 64 :=
.seq AllocBody786_165 AllocBody786_182

def AllocBody786_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody786_192 : StackLang.HolProg 64 :=
.seq AllocBody786_190 AllocBody786_191

def AllocBody786_193 : StackLang.HolProg 64 :=
.seq AllocBody786_189 AllocBody786_192

def AllocBody786_194 : StackLang.HolProg 64 :=
.seq AllocBody786_188 AllocBody786_193

def AllocBody786_195 : StackLang.HolProg 64 :=
.seq AllocBody786_187 AllocBody786_194

def AllocBody786_196 : StackLang.HolProg 64 :=
.seq AllocBody786_186 AllocBody786_195

def AllocBody786_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody786_199 : StackLang.HolProg 64 :=
.seq AllocBody786_197 AllocBody786_198

def AllocBody786_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_201 : StackLang.HolProg 64 :=
.seq AllocBody786_199 AllocBody786_200

def AllocBody786_202 : StackLang.HolProg 64 :=
.call (some (AllocBody786_196, 0, 786, 8)) (Sum.inl 740) (some (AllocBody786_201, 786, 9))

def AllocBody786_203 : StackLang.HolProg 64 :=
.seq AllocBody786_185 AllocBody786_202

def AllocBody786_204 : StackLang.HolProg 64 :=
.seq AllocBody786_184 AllocBody786_203

def AllocBody786_205 : StackLang.HolProg 64 :=
.seq AllocBody786_183 AllocBody786_204

def AllocBody786_206 : StackLang.HolProg 64 :=
.seq AllocBody786_164 AllocBody786_205

def AllocBody786_207 : StackLang.HolProg 64 :=
.seq AllocBody786_161 AllocBody786_206

def AllocBody786_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody786_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody786_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody786_212 : StackLang.HolProg 64 :=
.seq AllocBody786_210 AllocBody786_211

def AllocBody786_213 : StackLang.HolProg 64 :=
.seq AllocBody786_209 AllocBody786_212

def AllocBody786_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3638#64)

def AllocBody786_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_217 : StackLang.HolProg 64 :=
.seq AllocBody786_215 AllocBody786_216

def AllocBody786_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 11

def AllocBody786_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_228 : StackLang.HolProg 64 :=
.seq AllocBody786_226 AllocBody786_227

def AllocBody786_229 : StackLang.HolProg 64 :=
.seq AllocBody786_225 AllocBody786_228

def AllocBody786_230 : StackLang.HolProg 64 :=
.seq AllocBody786_224 AllocBody786_229

def AllocBody786_231 : StackLang.HolProg 64 :=
.seq AllocBody786_223 AllocBody786_230

def AllocBody786_232 : StackLang.HolProg 64 :=
.seq AllocBody786_222 AllocBody786_231

def AllocBody786_233 : StackLang.HolProg 64 :=
.seq AllocBody786_221 AllocBody786_232

def AllocBody786_234 : StackLang.HolProg 64 :=
.seq AllocBody786_220 AllocBody786_233

def AllocBody786_235 : StackLang.HolProg 64 :=
.seq AllocBody786_219 AllocBody786_234

def AllocBody786_236 : StackLang.HolProg 64 :=
.seq AllocBody786_218 AllocBody786_235

def AllocBody786_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody786_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody786_245 : StackLang.HolProg 64 :=
.seq AllocBody786_243 AllocBody786_244

def AllocBody786_246 : StackLang.HolProg 64 :=
.seq AllocBody786_242 AllocBody786_245

def AllocBody786_247 : StackLang.HolProg 64 :=
.seq AllocBody786_241 AllocBody786_246

def AllocBody786_248 : StackLang.HolProg 64 :=
.seq AllocBody786_240 AllocBody786_247

def AllocBody786_249 : StackLang.HolProg 64 :=
.seq AllocBody786_239 AllocBody786_248

def AllocBody786_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody786_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody786_252 : StackLang.HolProg 64 :=
.seq AllocBody786_250 AllocBody786_251

def AllocBody786_253 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_254 : StackLang.HolProg 64 :=
.seq AllocBody786_252 AllocBody786_253

def AllocBody786_255 : StackLang.HolProg 64 :=
.call (some (AllocBody786_249, 0, 786, 10)) (Sum.inl 740) (some (AllocBody786_254, 786, 11))

def AllocBody786_256 : StackLang.HolProg 64 :=
.seq AllocBody786_238 AllocBody786_255

def AllocBody786_257 : StackLang.HolProg 64 :=
.seq AllocBody786_237 AllocBody786_256

def AllocBody786_258 : StackLang.HolProg 64 :=
.seq AllocBody786_236 AllocBody786_257

def AllocBody786_259 : StackLang.HolProg 64 :=
.seq AllocBody786_217 AllocBody786_258

def AllocBody786_260 : StackLang.HolProg 64 :=
.seq AllocBody786_214 AllocBody786_259

def AllocBody786_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody786_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody786_264 : StackLang.HolProg 64 :=
.seq AllocBody786_262 AllocBody786_263

def AllocBody786_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3639#64)

def AllocBody786_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_268 : StackLang.HolProg 64 :=
.seq AllocBody786_266 AllocBody786_267

def AllocBody786_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 13

def AllocBody786_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_279 : StackLang.HolProg 64 :=
.seq AllocBody786_277 AllocBody786_278

def AllocBody786_280 : StackLang.HolProg 64 :=
.seq AllocBody786_276 AllocBody786_279

def AllocBody786_281 : StackLang.HolProg 64 :=
.seq AllocBody786_275 AllocBody786_280

def AllocBody786_282 : StackLang.HolProg 64 :=
.seq AllocBody786_274 AllocBody786_281

def AllocBody786_283 : StackLang.HolProg 64 :=
.seq AllocBody786_273 AllocBody786_282

def AllocBody786_284 : StackLang.HolProg 64 :=
.seq AllocBody786_272 AllocBody786_283

def AllocBody786_285 : StackLang.HolProg 64 :=
.seq AllocBody786_271 AllocBody786_284

def AllocBody786_286 : StackLang.HolProg 64 :=
.seq AllocBody786_270 AllocBody786_285

def AllocBody786_287 : StackLang.HolProg 64 :=
.seq AllocBody786_269 AllocBody786_286

def AllocBody786_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_295 : StackLang.HolProg 64 :=
.seq AllocBody786_293 AllocBody786_294

def AllocBody786_296 : StackLang.HolProg 64 :=
.seq AllocBody786_292 AllocBody786_295

def AllocBody786_297 : StackLang.HolProg 64 :=
.seq AllocBody786_291 AllocBody786_296

def AllocBody786_298 : StackLang.HolProg 64 :=
.seq AllocBody786_290 AllocBody786_297

def AllocBody786_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_301 : StackLang.HolProg 64 :=
.seq AllocBody786_299 AllocBody786_300

def AllocBody786_302 : StackLang.HolProg 64 :=
.call (some (AllocBody786_298, 0, 786, 12)) (Sum.inl 739) (some (AllocBody786_301, 786, 13))

def AllocBody786_303 : StackLang.HolProg 64 :=
.seq AllocBody786_289 AllocBody786_302

def AllocBody786_304 : StackLang.HolProg 64 :=
.seq AllocBody786_288 AllocBody786_303

def AllocBody786_305 : StackLang.HolProg 64 :=
.seq AllocBody786_287 AllocBody786_304

def AllocBody786_306 : StackLang.HolProg 64 :=
.seq AllocBody786_268 AllocBody786_305

def AllocBody786_307 : StackLang.HolProg 64 :=
.seq AllocBody786_265 AllocBody786_306

def AllocBody786_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody786_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody786_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody786_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody786_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody786_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody786_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody786_317 : StackLang.HolProg 64 :=
.seq AllocBody786_315 AllocBody786_316

def AllocBody786_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3640#64)

def AllocBody786_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_321 : StackLang.HolProg 64 :=
.seq AllocBody786_319 AllocBody786_320

def AllocBody786_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 15

def AllocBody786_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_332 : StackLang.HolProg 64 :=
.seq AllocBody786_330 AllocBody786_331

def AllocBody786_333 : StackLang.HolProg 64 :=
.seq AllocBody786_329 AllocBody786_332

def AllocBody786_334 : StackLang.HolProg 64 :=
.seq AllocBody786_328 AllocBody786_333

def AllocBody786_335 : StackLang.HolProg 64 :=
.seq AllocBody786_327 AllocBody786_334

def AllocBody786_336 : StackLang.HolProg 64 :=
.seq AllocBody786_326 AllocBody786_335

def AllocBody786_337 : StackLang.HolProg 64 :=
.seq AllocBody786_325 AllocBody786_336

def AllocBody786_338 : StackLang.HolProg 64 :=
.seq AllocBody786_324 AllocBody786_337

def AllocBody786_339 : StackLang.HolProg 64 :=
.seq AllocBody786_323 AllocBody786_338

def AllocBody786_340 : StackLang.HolProg 64 :=
.seq AllocBody786_322 AllocBody786_339

def AllocBody786_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody786_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_349 : StackLang.HolProg 64 :=
.seq AllocBody786_347 AllocBody786_348

def AllocBody786_350 : StackLang.HolProg 64 :=
.seq AllocBody786_346 AllocBody786_349

def AllocBody786_351 : StackLang.HolProg 64 :=
.seq AllocBody786_345 AllocBody786_350

def AllocBody786_352 : StackLang.HolProg 64 :=
.seq AllocBody786_344 AllocBody786_351

def AllocBody786_353 : StackLang.HolProg 64 :=
.seq AllocBody786_343 AllocBody786_352

def AllocBody786_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody786_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody786_356 : StackLang.HolProg 64 :=
.seq AllocBody786_354 AllocBody786_355

def AllocBody786_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_358 : StackLang.HolProg 64 :=
.seq AllocBody786_356 AllocBody786_357

def AllocBody786_359 : StackLang.HolProg 64 :=
.call (some (AllocBody786_353, 0, 786, 14)) (Sum.inl 734) (some (AllocBody786_358, 786, 15))

def AllocBody786_360 : StackLang.HolProg 64 :=
.seq AllocBody786_342 AllocBody786_359

def AllocBody786_361 : StackLang.HolProg 64 :=
.seq AllocBody786_341 AllocBody786_360

def AllocBody786_362 : StackLang.HolProg 64 :=
.seq AllocBody786_340 AllocBody786_361

def AllocBody786_363 : StackLang.HolProg 64 :=
.seq AllocBody786_321 AllocBody786_362

def AllocBody786_364 : StackLang.HolProg 64 :=
.seq AllocBody786_318 AllocBody786_363

def AllocBody786_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody786_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3641#64)

def AllocBody786_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_370 : StackLang.HolProg 64 :=
.seq AllocBody786_368 AllocBody786_369

def AllocBody786_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 17

def AllocBody786_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_381 : StackLang.HolProg 64 :=
.seq AllocBody786_379 AllocBody786_380

def AllocBody786_382 : StackLang.HolProg 64 :=
.seq AllocBody786_378 AllocBody786_381

def AllocBody786_383 : StackLang.HolProg 64 :=
.seq AllocBody786_377 AllocBody786_382

def AllocBody786_384 : StackLang.HolProg 64 :=
.seq AllocBody786_376 AllocBody786_383

def AllocBody786_385 : StackLang.HolProg 64 :=
.seq AllocBody786_375 AllocBody786_384

def AllocBody786_386 : StackLang.HolProg 64 :=
.seq AllocBody786_374 AllocBody786_385

def AllocBody786_387 : StackLang.HolProg 64 :=
.seq AllocBody786_373 AllocBody786_386

def AllocBody786_388 : StackLang.HolProg 64 :=
.seq AllocBody786_372 AllocBody786_387

def AllocBody786_389 : StackLang.HolProg 64 :=
.seq AllocBody786_371 AllocBody786_388

def AllocBody786_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody786_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody786_398 : StackLang.HolProg 64 :=
.seq AllocBody786_396 AllocBody786_397

def AllocBody786_399 : StackLang.HolProg 64 :=
.seq AllocBody786_395 AllocBody786_398

def AllocBody786_400 : StackLang.HolProg 64 :=
.seq AllocBody786_394 AllocBody786_399

def AllocBody786_401 : StackLang.HolProg 64 :=
.seq AllocBody786_393 AllocBody786_400

def AllocBody786_402 : StackLang.HolProg 64 :=
.seq AllocBody786_392 AllocBody786_401

def AllocBody786_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody786_404 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_405 : StackLang.HolProg 64 :=
.seq AllocBody786_403 AllocBody786_404

def AllocBody786_406 : StackLang.HolProg 64 :=
.call (some (AllocBody786_402, 0, 786, 16)) (Sum.inl 733) (some (AllocBody786_405, 786, 17))

def AllocBody786_407 : StackLang.HolProg 64 :=
.seq AllocBody786_391 AllocBody786_406

def AllocBody786_408 : StackLang.HolProg 64 :=
.seq AllocBody786_390 AllocBody786_407

def AllocBody786_409 : StackLang.HolProg 64 :=
.seq AllocBody786_389 AllocBody786_408

def AllocBody786_410 : StackLang.HolProg 64 :=
.seq AllocBody786_370 AllocBody786_409

def AllocBody786_411 : StackLang.HolProg 64 :=
.seq AllocBody786_367 AllocBody786_410

def AllocBody786_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody786_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody786_415 : StackLang.HolProg 64 :=
.seq AllocBody786_413 AllocBody786_414

def AllocBody786_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3642#64)

def AllocBody786_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_419 : StackLang.HolProg 64 :=
.seq AllocBody786_417 AllocBody786_418

def AllocBody786_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody786_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody786_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody786_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 786 19

def AllocBody786_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody786_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody786_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody786_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody786_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_430 : StackLang.HolProg 64 :=
.seq AllocBody786_428 AllocBody786_429

def AllocBody786_431 : StackLang.HolProg 64 :=
.seq AllocBody786_427 AllocBody786_430

def AllocBody786_432 : StackLang.HolProg 64 :=
.seq AllocBody786_426 AllocBody786_431

def AllocBody786_433 : StackLang.HolProg 64 :=
.seq AllocBody786_425 AllocBody786_432

def AllocBody786_434 : StackLang.HolProg 64 :=
.seq AllocBody786_424 AllocBody786_433

def AllocBody786_435 : StackLang.HolProg 64 :=
.seq AllocBody786_423 AllocBody786_434

def AllocBody786_436 : StackLang.HolProg 64 :=
.seq AllocBody786_422 AllocBody786_435

def AllocBody786_437 : StackLang.HolProg 64 :=
.seq AllocBody786_421 AllocBody786_436

def AllocBody786_438 : StackLang.HolProg 64 :=
.seq AllocBody786_420 AllocBody786_437

def AllocBody786_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody786_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody786_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody786_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody786_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody786_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody786_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody786_447 : StackLang.HolProg 64 :=
.seq AllocBody786_445 AllocBody786_446

def AllocBody786_448 : StackLang.HolProg 64 :=
.seq AllocBody786_444 AllocBody786_447

def AllocBody786_449 : StackLang.HolProg 64 :=
.seq AllocBody786_443 AllocBody786_448

def AllocBody786_450 : StackLang.HolProg 64 :=
.seq AllocBody786_442 AllocBody786_449

def AllocBody786_451 : StackLang.HolProg 64 :=
.seq AllocBody786_441 AllocBody786_450

def AllocBody786_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody786_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody786_454 : StackLang.HolProg 64 :=
.seq AllocBody786_452 AllocBody786_453

def AllocBody786_455 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody786_456 : StackLang.HolProg 64 :=
.seq AllocBody786_454 AllocBody786_455

def AllocBody786_457 : StackLang.HolProg 64 :=
.call (some (AllocBody786_451, 0, 786, 18)) (Sum.inl 70) (some (AllocBody786_456, 786, 19))

def AllocBody786_458 : StackLang.HolProg 64 :=
.seq AllocBody786_440 AllocBody786_457

def AllocBody786_459 : StackLang.HolProg 64 :=
.seq AllocBody786_439 AllocBody786_458

def AllocBody786_460 : StackLang.HolProg 64 :=
.seq AllocBody786_438 AllocBody786_459

def AllocBody786_461 : StackLang.HolProg 64 :=
.seq AllocBody786_419 AllocBody786_460

def AllocBody786_462 : StackLang.HolProg 64 :=
.seq AllocBody786_416 AllocBody786_461

def AllocBody786_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody786_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody786_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody786_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody786_467 : StackLang.HolProg 64 :=
.seq AllocBody786_465 AllocBody786_466

def AllocBody786_468 : StackLang.HolProg 64 :=
.seq AllocBody786_464 AllocBody786_467

def AllocBody786_469 : StackLang.HolProg 64 :=
.seq AllocBody786_463 AllocBody786_468

def AllocBody786_470 : StackLang.HolProg 64 :=
.seq AllocBody786_462 AllocBody786_469

def AllocBody786_471 : StackLang.HolProg 64 :=
.seq AllocBody786_415 AllocBody786_470

def AllocBody786_472 : StackLang.HolProg 64 :=
.seq AllocBody786_412 AllocBody786_471

def AllocBody786_473 : StackLang.HolProg 64 :=
.seq AllocBody786_411 AllocBody786_472

def AllocBody786_474 : StackLang.HolProg 64 :=
.seq AllocBody786_366 AllocBody786_473

def AllocBody786_475 : StackLang.HolProg 64 :=
.seq AllocBody786_365 AllocBody786_474

def AllocBody786_476 : StackLang.HolProg 64 :=
.seq AllocBody786_364 AllocBody786_475

def AllocBody786_477 : StackLang.HolProg 64 :=
.seq AllocBody786_317 AllocBody786_476

def AllocBody786_478 : StackLang.HolProg 64 :=
.seq AllocBody786_314 AllocBody786_477

def AllocBody786_479 : StackLang.HolProg 64 :=
.seq AllocBody786_313 AllocBody786_478

def AllocBody786_480 : StackLang.HolProg 64 :=
.seq AllocBody786_312 AllocBody786_479

def AllocBody786_481 : StackLang.HolProg 64 :=
.seq AllocBody786_311 AllocBody786_480

def AllocBody786_482 : StackLang.HolProg 64 :=
.seq AllocBody786_310 AllocBody786_481

def AllocBody786_483 : StackLang.HolProg 64 :=
.seq AllocBody786_309 AllocBody786_482

def AllocBody786_484 : StackLang.HolProg 64 :=
.seq AllocBody786_308 AllocBody786_483

def AllocBody786_485 : StackLang.HolProg 64 :=
.seq AllocBody786_307 AllocBody786_484

def AllocBody786_486 : StackLang.HolProg 64 :=
.seq AllocBody786_264 AllocBody786_485

def AllocBody786_487 : StackLang.HolProg 64 :=
.seq AllocBody786_261 AllocBody786_486

def AllocBody786_488 : StackLang.HolProg 64 :=
.seq AllocBody786_260 AllocBody786_487

def AllocBody786_489 : StackLang.HolProg 64 :=
.seq AllocBody786_213 AllocBody786_488

def AllocBody786_490 : StackLang.HolProg 64 :=
.seq AllocBody786_208 AllocBody786_489

def AllocBody786_491 : StackLang.HolProg 64 :=
.seq AllocBody786_207 AllocBody786_490

def AllocBody786_492 : StackLang.HolProg 64 :=
.seq AllocBody786_160 AllocBody786_491

def AllocBody786_493 : StackLang.HolProg 64 :=
.seq AllocBody786_155 AllocBody786_492

def AllocBody786_494 : StackLang.HolProg 64 :=
.seq AllocBody786_154 AllocBody786_493

def AllocBody786_495 : StackLang.HolProg 64 :=
.seq AllocBody786_97 AllocBody786_494

def AllocBody786_496 : StackLang.HolProg 64 :=
.seq AllocBody786_96 AllocBody786_495

def AllocBody786_497 : StackLang.HolProg 64 :=
.seq AllocBody786_95 AllocBody786_496

def AllocBody786_498 : StackLang.HolProg 64 :=
.seq AllocBody786_94 AllocBody786_497

def AllocBody786_499 : StackLang.HolProg 64 :=
.seq AllocBody786_51 AllocBody786_498

def AllocBody786_500 : StackLang.HolProg 64 :=
.seq AllocBody786_50 AllocBody786_499

def AllocBody786_501 : StackLang.HolProg 64 :=
.seq AllocBody786_49 AllocBody786_500

def AllocBody786_502 : StackLang.HolProg 64 :=
.seq AllocBody786_48 AllocBody786_501

def AllocBody786_503 : StackLang.HolProg 64 :=
.seq AllocBody786_5 AllocBody786_502

def AllocBody786_504 : StackLang.HolProg 64 :=
.seq AllocBody786_0 AllocBody786_503

def Alloc786 : Nat × StackLang.HolProg 64 := (786, AllocBody786_504)
theorem Alloc786_eq : StackAlloc.progComp (786, raw786) = Alloc786 := by
  kernel_rfl
#print axioms Alloc786_eq
end InitECandidate.Proofs.BackendStages
