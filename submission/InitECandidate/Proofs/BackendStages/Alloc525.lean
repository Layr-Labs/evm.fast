import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw525
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody525_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody525_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody525_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1718#64)

def AllocBody525_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_5 : StackLang.HolProg 64 :=
.seq AllocBody525_3 AllocBody525_4

def AllocBody525_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody525_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody525_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 3

def AllocBody525_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody525_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody525_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody525_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody525_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_16 : StackLang.HolProg 64 :=
.seq AllocBody525_14 AllocBody525_15

def AllocBody525_17 : StackLang.HolProg 64 :=
.seq AllocBody525_13 AllocBody525_16

def AllocBody525_18 : StackLang.HolProg 64 :=
.seq AllocBody525_12 AllocBody525_17

def AllocBody525_19 : StackLang.HolProg 64 :=
.seq AllocBody525_11 AllocBody525_18

def AllocBody525_20 : StackLang.HolProg 64 :=
.seq AllocBody525_10 AllocBody525_19

def AllocBody525_21 : StackLang.HolProg 64 :=
.seq AllocBody525_9 AllocBody525_20

def AllocBody525_22 : StackLang.HolProg 64 :=
.seq AllocBody525_8 AllocBody525_21

def AllocBody525_23 : StackLang.HolProg 64 :=
.seq AllocBody525_7 AllocBody525_22

def AllocBody525_24 : StackLang.HolProg 64 :=
.seq AllocBody525_6 AllocBody525_23

def AllocBody525_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody525_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody525_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody525_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody525_32 : StackLang.HolProg 64 :=
.seq AllocBody525_30 AllocBody525_31

def AllocBody525_33 : StackLang.HolProg 64 :=
.seq AllocBody525_29 AllocBody525_32

def AllocBody525_34 : StackLang.HolProg 64 :=
.seq AllocBody525_28 AllocBody525_33

def AllocBody525_35 : StackLang.HolProg 64 :=
.seq AllocBody525_27 AllocBody525_34

def AllocBody525_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody525_38 : StackLang.HolProg 64 :=
.seq AllocBody525_36 AllocBody525_37

def AllocBody525_39 : StackLang.HolProg 64 :=
.call (some (AllocBody525_35, 0, 525, 2)) (Sum.inl 475) (some (AllocBody525_38, 525, 3))

def AllocBody525_40 : StackLang.HolProg 64 :=
.seq AllocBody525_26 AllocBody525_39

def AllocBody525_41 : StackLang.HolProg 64 :=
.seq AllocBody525_25 AllocBody525_40

def AllocBody525_42 : StackLang.HolProg 64 :=
.seq AllocBody525_24 AllocBody525_41

def AllocBody525_43 : StackLang.HolProg 64 :=
.seq AllocBody525_5 AllocBody525_42

def AllocBody525_44 : StackLang.HolProg 64 :=
.seq AllocBody525_2 AllocBody525_43

def AllocBody525_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody525_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody525_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody525_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody525_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody525_51 : StackLang.HolProg 64 :=
.seq AllocBody525_49 AllocBody525_50

def AllocBody525_52 : StackLang.HolProg 64 :=
.seq AllocBody525_48 AllocBody525_51

def AllocBody525_53 : StackLang.HolProg 64 :=
.seq AllocBody525_47 AllocBody525_52

def AllocBody525_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1719#64)

def AllocBody525_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_57 : StackLang.HolProg 64 :=
.seq AllocBody525_55 AllocBody525_56

def AllocBody525_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody525_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody525_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 5

def AllocBody525_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody525_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody525_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody525_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody525_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_68 : StackLang.HolProg 64 :=
.seq AllocBody525_66 AllocBody525_67

def AllocBody525_69 : StackLang.HolProg 64 :=
.seq AllocBody525_65 AllocBody525_68

def AllocBody525_70 : StackLang.HolProg 64 :=
.seq AllocBody525_64 AllocBody525_69

def AllocBody525_71 : StackLang.HolProg 64 :=
.seq AllocBody525_63 AllocBody525_70

def AllocBody525_72 : StackLang.HolProg 64 :=
.seq AllocBody525_62 AllocBody525_71

def AllocBody525_73 : StackLang.HolProg 64 :=
.seq AllocBody525_61 AllocBody525_72

def AllocBody525_74 : StackLang.HolProg 64 :=
.seq AllocBody525_60 AllocBody525_73

def AllocBody525_75 : StackLang.HolProg 64 :=
.seq AllocBody525_59 AllocBody525_74

def AllocBody525_76 : StackLang.HolProg 64 :=
.seq AllocBody525_58 AllocBody525_75

def AllocBody525_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody525_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody525_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody525_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody525_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody525_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody525_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody525_87 : StackLang.HolProg 64 :=
.seq AllocBody525_85 AllocBody525_86

def AllocBody525_88 : StackLang.HolProg 64 :=
.seq AllocBody525_84 AllocBody525_87

def AllocBody525_89 : StackLang.HolProg 64 :=
.seq AllocBody525_83 AllocBody525_88

def AllocBody525_90 : StackLang.HolProg 64 :=
.seq AllocBody525_82 AllocBody525_89

def AllocBody525_91 : StackLang.HolProg 64 :=
.seq AllocBody525_81 AllocBody525_90

def AllocBody525_92 : StackLang.HolProg 64 :=
.seq AllocBody525_80 AllocBody525_91

def AllocBody525_93 : StackLang.HolProg 64 :=
.seq AllocBody525_79 AllocBody525_92

def AllocBody525_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody525_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody525_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody525_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody525_98 : StackLang.HolProg 64 :=
.seq AllocBody525_96 AllocBody525_97

def AllocBody525_99 : StackLang.HolProg 64 :=
.seq AllocBody525_95 AllocBody525_98

def AllocBody525_100 : StackLang.HolProg 64 :=
.seq AllocBody525_94 AllocBody525_99

def AllocBody525_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody525_102 : StackLang.HolProg 64 :=
.seq AllocBody525_100 AllocBody525_101

def AllocBody525_103 : StackLang.HolProg 64 :=
.call (some (AllocBody525_93, 0, 525, 4)) (Sum.inl 470) (some (AllocBody525_102, 525, 5))

def AllocBody525_104 : StackLang.HolProg 64 :=
.seq AllocBody525_78 AllocBody525_103

def AllocBody525_105 : StackLang.HolProg 64 :=
.seq AllocBody525_77 AllocBody525_104

def AllocBody525_106 : StackLang.HolProg 64 :=
.seq AllocBody525_76 AllocBody525_105

def AllocBody525_107 : StackLang.HolProg 64 :=
.seq AllocBody525_57 AllocBody525_106

def AllocBody525_108 : StackLang.HolProg 64 :=
.seq AllocBody525_54 AllocBody525_107

def AllocBody525_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody525_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody525_112 : StackLang.HolProg 64 :=
.seq AllocBody525_110 AllocBody525_111

def AllocBody525_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1720#64)

def AllocBody525_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_116 : StackLang.HolProg 64 :=
.seq AllocBody525_114 AllocBody525_115

def AllocBody525_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody525_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody525_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody525_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 7

def AllocBody525_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody525_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody525_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody525_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody525_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_127 : StackLang.HolProg 64 :=
.seq AllocBody525_125 AllocBody525_126

def AllocBody525_128 : StackLang.HolProg 64 :=
.seq AllocBody525_124 AllocBody525_127

def AllocBody525_129 : StackLang.HolProg 64 :=
.seq AllocBody525_123 AllocBody525_128

def AllocBody525_130 : StackLang.HolProg 64 :=
.seq AllocBody525_122 AllocBody525_129

def AllocBody525_131 : StackLang.HolProg 64 :=
.seq AllocBody525_121 AllocBody525_130

def AllocBody525_132 : StackLang.HolProg 64 :=
.seq AllocBody525_120 AllocBody525_131

def AllocBody525_133 : StackLang.HolProg 64 :=
.seq AllocBody525_119 AllocBody525_132

def AllocBody525_134 : StackLang.HolProg 64 :=
.seq AllocBody525_118 AllocBody525_133

def AllocBody525_135 : StackLang.HolProg 64 :=
.seq AllocBody525_117 AllocBody525_134

def AllocBody525_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody525_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody525_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody525_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody525_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody525_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody525_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody525_145 : StackLang.HolProg 64 :=
.seq AllocBody525_143 AllocBody525_144

def AllocBody525_146 : StackLang.HolProg 64 :=
.seq AllocBody525_142 AllocBody525_145

def AllocBody525_147 : StackLang.HolProg 64 :=
.seq AllocBody525_141 AllocBody525_146

def AllocBody525_148 : StackLang.HolProg 64 :=
.seq AllocBody525_140 AllocBody525_147

def AllocBody525_149 : StackLang.HolProg 64 :=
.seq AllocBody525_139 AllocBody525_148

def AllocBody525_150 : StackLang.HolProg 64 :=
.seq AllocBody525_138 AllocBody525_149

def AllocBody525_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody525_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody525_153 : StackLang.HolProg 64 :=
.seq AllocBody525_151 AllocBody525_152

def AllocBody525_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody525_155 : StackLang.HolProg 64 :=
.seq AllocBody525_153 AllocBody525_154

def AllocBody525_156 : StackLang.HolProg 64 :=
.call (some (AllocBody525_150, 0, 525, 6)) (Sum.inl 486) (some (AllocBody525_155, 525, 7))

def AllocBody525_157 : StackLang.HolProg 64 :=
.seq AllocBody525_137 AllocBody525_156

def AllocBody525_158 : StackLang.HolProg 64 :=
.seq AllocBody525_136 AllocBody525_157

def AllocBody525_159 : StackLang.HolProg 64 :=
.seq AllocBody525_135 AllocBody525_158

def AllocBody525_160 : StackLang.HolProg 64 :=
.seq AllocBody525_116 AllocBody525_159

def AllocBody525_161 : StackLang.HolProg 64 :=
.seq AllocBody525_113 AllocBody525_160

def AllocBody525_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody525_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody525_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody525_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody525_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody525_172 : StackLang.HolProg 64 :=
.seq AllocBody525_170 AllocBody525_171

def AllocBody525_173 : StackLang.HolProg 64 :=
.seq AllocBody525_169 AllocBody525_172

def AllocBody525_174 : StackLang.HolProg 64 :=
.seq AllocBody525_168 AllocBody525_173

def AllocBody525_175 : StackLang.HolProg 64 :=
.seq AllocBody525_167 AllocBody525_174

def AllocBody525_176 : StackLang.HolProg 64 :=
.seq AllocBody525_166 AllocBody525_175

def AllocBody525_177 : StackLang.HolProg 64 :=
.seq AllocBody525_165 AllocBody525_176

def AllocBody525_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody525_177 AllocBody525_178

def AllocBody525_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody525_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody525_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody525_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody525_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody525_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody525_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody525_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody525_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody525_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody525_192 : StackLang.HolProg 64 :=
.seq AllocBody525_190 AllocBody525_191

def AllocBody525_193 : StackLang.HolProg 64 :=
.seq AllocBody525_189 AllocBody525_192

def AllocBody525_194 : StackLang.HolProg 64 :=
.seq AllocBody525_188 AllocBody525_193

def AllocBody525_195 : StackLang.HolProg 64 :=
.seq AllocBody525_187 AllocBody525_194

def AllocBody525_196 : StackLang.HolProg 64 :=
.seq AllocBody525_186 AllocBody525_195

def AllocBody525_197 : StackLang.HolProg 64 :=
.seq AllocBody525_185 AllocBody525_196

def AllocBody525_198 : StackLang.HolProg 64 :=
.seq AllocBody525_184 AllocBody525_197

def AllocBody525_199 : StackLang.HolProg 64 :=
.seq AllocBody525_183 AllocBody525_198

def AllocBody525_200 : StackLang.HolProg 64 :=
.seq AllocBody525_182 AllocBody525_199

def AllocBody525_201 : StackLang.HolProg 64 :=
.seq AllocBody525_181 AllocBody525_200

def AllocBody525_202 : StackLang.HolProg 64 :=
.seq AllocBody525_180 AllocBody525_201

def AllocBody525_203 : StackLang.HolProg 64 :=
.seq AllocBody525_179 AllocBody525_202

def AllocBody525_204 : StackLang.HolProg 64 :=
.seq AllocBody525_164 AllocBody525_203

def AllocBody525_205 : StackLang.HolProg 64 :=
.seq AllocBody525_163 AllocBody525_204

def AllocBody525_206 : StackLang.HolProg 64 :=
.seq AllocBody525_162 AllocBody525_205

def AllocBody525_207 : StackLang.HolProg 64 :=
.seq AllocBody525_161 AllocBody525_206

def AllocBody525_208 : StackLang.HolProg 64 :=
.seq AllocBody525_112 AllocBody525_207

def AllocBody525_209 : StackLang.HolProg 64 :=
.seq AllocBody525_109 AllocBody525_208

def AllocBody525_210 : StackLang.HolProg 64 :=
.seq AllocBody525_108 AllocBody525_209

def AllocBody525_211 : StackLang.HolProg 64 :=
.seq AllocBody525_53 AllocBody525_210

def AllocBody525_212 : StackLang.HolProg 64 :=
.seq AllocBody525_46 AllocBody525_211

def AllocBody525_213 : StackLang.HolProg 64 :=
.seq AllocBody525_45 AllocBody525_212

def AllocBody525_214 : StackLang.HolProg 64 :=
.seq AllocBody525_44 AllocBody525_213

def AllocBody525_215 : StackLang.HolProg 64 :=
.seq AllocBody525_1 AllocBody525_214

def AllocBody525_216 : StackLang.HolProg 64 :=
.seq AllocBody525_0 AllocBody525_215

def Alloc525 : Nat × StackLang.HolProg 64 := (525, AllocBody525_216)
theorem Alloc525_eq : StackAlloc.progComp (525, raw525) = Alloc525 := by
  kernel_rfl
#print axioms Alloc525_eq
end InitECandidate.Proofs.BackendStages
