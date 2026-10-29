import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw531
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody531_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody531_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody531_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1741#64)

def AllocBody531_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_5 : StackLang.HolProg 64 :=
.seq AllocBody531_3 AllocBody531_4

def AllocBody531_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody531_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody531_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 3

def AllocBody531_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody531_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody531_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody531_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody531_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_16 : StackLang.HolProg 64 :=
.seq AllocBody531_14 AllocBody531_15

def AllocBody531_17 : StackLang.HolProg 64 :=
.seq AllocBody531_13 AllocBody531_16

def AllocBody531_18 : StackLang.HolProg 64 :=
.seq AllocBody531_12 AllocBody531_17

def AllocBody531_19 : StackLang.HolProg 64 :=
.seq AllocBody531_11 AllocBody531_18

def AllocBody531_20 : StackLang.HolProg 64 :=
.seq AllocBody531_10 AllocBody531_19

def AllocBody531_21 : StackLang.HolProg 64 :=
.seq AllocBody531_9 AllocBody531_20

def AllocBody531_22 : StackLang.HolProg 64 :=
.seq AllocBody531_8 AllocBody531_21

def AllocBody531_23 : StackLang.HolProg 64 :=
.seq AllocBody531_7 AllocBody531_22

def AllocBody531_24 : StackLang.HolProg 64 :=
.seq AllocBody531_6 AllocBody531_23

def AllocBody531_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody531_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody531_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody531_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody531_32 : StackLang.HolProg 64 :=
.seq AllocBody531_30 AllocBody531_31

def AllocBody531_33 : StackLang.HolProg 64 :=
.seq AllocBody531_29 AllocBody531_32

def AllocBody531_34 : StackLang.HolProg 64 :=
.seq AllocBody531_28 AllocBody531_33

def AllocBody531_35 : StackLang.HolProg 64 :=
.seq AllocBody531_27 AllocBody531_34

def AllocBody531_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody531_38 : StackLang.HolProg 64 :=
.seq AllocBody531_36 AllocBody531_37

def AllocBody531_39 : StackLang.HolProg 64 :=
.call (some (AllocBody531_35, 0, 531, 2)) (Sum.inl 475) (some (AllocBody531_38, 531, 3))

def AllocBody531_40 : StackLang.HolProg 64 :=
.seq AllocBody531_26 AllocBody531_39

def AllocBody531_41 : StackLang.HolProg 64 :=
.seq AllocBody531_25 AllocBody531_40

def AllocBody531_42 : StackLang.HolProg 64 :=
.seq AllocBody531_24 AllocBody531_41

def AllocBody531_43 : StackLang.HolProg 64 :=
.seq AllocBody531_5 AllocBody531_42

def AllocBody531_44 : StackLang.HolProg 64 :=
.seq AllocBody531_2 AllocBody531_43

def AllocBody531_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody531_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody531_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody531_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody531_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody531_50 : StackLang.HolProg 64 :=
.seq AllocBody531_48 AllocBody531_49

def AllocBody531_51 : StackLang.HolProg 64 :=
.seq AllocBody531_47 AllocBody531_50

def AllocBody531_52 : StackLang.HolProg 64 :=
.seq AllocBody531_46 AllocBody531_51

def AllocBody531_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1742#64)

def AllocBody531_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_56 : StackLang.HolProg 64 :=
.seq AllocBody531_54 AllocBody531_55

def AllocBody531_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody531_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody531_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 5

def AllocBody531_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody531_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody531_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody531_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody531_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_67 : StackLang.HolProg 64 :=
.seq AllocBody531_65 AllocBody531_66

def AllocBody531_68 : StackLang.HolProg 64 :=
.seq AllocBody531_64 AllocBody531_67

def AllocBody531_69 : StackLang.HolProg 64 :=
.seq AllocBody531_63 AllocBody531_68

def AllocBody531_70 : StackLang.HolProg 64 :=
.seq AllocBody531_62 AllocBody531_69

def AllocBody531_71 : StackLang.HolProg 64 :=
.seq AllocBody531_61 AllocBody531_70

def AllocBody531_72 : StackLang.HolProg 64 :=
.seq AllocBody531_60 AllocBody531_71

def AllocBody531_73 : StackLang.HolProg 64 :=
.seq AllocBody531_59 AllocBody531_72

def AllocBody531_74 : StackLang.HolProg 64 :=
.seq AllocBody531_58 AllocBody531_73

def AllocBody531_75 : StackLang.HolProg 64 :=
.seq AllocBody531_57 AllocBody531_74

def AllocBody531_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody531_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody531_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody531_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody531_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody531_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody531_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody531_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody531_87 : StackLang.HolProg 64 :=
.seq AllocBody531_85 AllocBody531_86

def AllocBody531_88 : StackLang.HolProg 64 :=
.seq AllocBody531_84 AllocBody531_87

def AllocBody531_89 : StackLang.HolProg 64 :=
.seq AllocBody531_83 AllocBody531_88

def AllocBody531_90 : StackLang.HolProg 64 :=
.seq AllocBody531_82 AllocBody531_89

def AllocBody531_91 : StackLang.HolProg 64 :=
.seq AllocBody531_81 AllocBody531_90

def AllocBody531_92 : StackLang.HolProg 64 :=
.seq AllocBody531_80 AllocBody531_91

def AllocBody531_93 : StackLang.HolProg 64 :=
.seq AllocBody531_79 AllocBody531_92

def AllocBody531_94 : StackLang.HolProg 64 :=
.seq AllocBody531_78 AllocBody531_93

def AllocBody531_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody531_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody531_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody531_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody531_99 : StackLang.HolProg 64 :=
.seq AllocBody531_97 AllocBody531_98

def AllocBody531_100 : StackLang.HolProg 64 :=
.seq AllocBody531_96 AllocBody531_99

def AllocBody531_101 : StackLang.HolProg 64 :=
.seq AllocBody531_95 AllocBody531_100

def AllocBody531_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody531_103 : StackLang.HolProg 64 :=
.seq AllocBody531_101 AllocBody531_102

def AllocBody531_104 : StackLang.HolProg 64 :=
.call (some (AllocBody531_94, 0, 531, 4)) (Sum.inl 475) (some (AllocBody531_103, 531, 5))

def AllocBody531_105 : StackLang.HolProg 64 :=
.seq AllocBody531_77 AllocBody531_104

def AllocBody531_106 : StackLang.HolProg 64 :=
.seq AllocBody531_76 AllocBody531_105

def AllocBody531_107 : StackLang.HolProg 64 :=
.seq AllocBody531_75 AllocBody531_106

def AllocBody531_108 : StackLang.HolProg 64 :=
.seq AllocBody531_56 AllocBody531_107

def AllocBody531_109 : StackLang.HolProg 64 :=
.seq AllocBody531_53 AllocBody531_108

def AllocBody531_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody531_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody531_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody531_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody531_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody531_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody531_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody531_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody531_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody531_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody531_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody531_122 : StackLang.HolProg 64 :=
.seq AllocBody531_120 AllocBody531_121

def AllocBody531_123 : StackLang.HolProg 64 :=
.seq AllocBody531_119 AllocBody531_122

def AllocBody531_124 : StackLang.HolProg 64 :=
.seq AllocBody531_118 AllocBody531_123

def AllocBody531_125 : StackLang.HolProg 64 :=
.seq AllocBody531_117 AllocBody531_124

def AllocBody531_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1743#64)

def AllocBody531_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_129 : StackLang.HolProg 64 :=
.seq AllocBody531_127 AllocBody531_128

def AllocBody531_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody531_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody531_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 7

def AllocBody531_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody531_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody531_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody531_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody531_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_140 : StackLang.HolProg 64 :=
.seq AllocBody531_138 AllocBody531_139

def AllocBody531_141 : StackLang.HolProg 64 :=
.seq AllocBody531_137 AllocBody531_140

def AllocBody531_142 : StackLang.HolProg 64 :=
.seq AllocBody531_136 AllocBody531_141

def AllocBody531_143 : StackLang.HolProg 64 :=
.seq AllocBody531_135 AllocBody531_142

def AllocBody531_144 : StackLang.HolProg 64 :=
.seq AllocBody531_134 AllocBody531_143

def AllocBody531_145 : StackLang.HolProg 64 :=
.seq AllocBody531_133 AllocBody531_144

def AllocBody531_146 : StackLang.HolProg 64 :=
.seq AllocBody531_132 AllocBody531_145

def AllocBody531_147 : StackLang.HolProg 64 :=
.seq AllocBody531_131 AllocBody531_146

def AllocBody531_148 : StackLang.HolProg 64 :=
.seq AllocBody531_130 AllocBody531_147

def AllocBody531_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody531_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody531_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody531_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody531_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody531_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody531_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody531_159 : StackLang.HolProg 64 :=
.seq AllocBody531_157 AllocBody531_158

def AllocBody531_160 : StackLang.HolProg 64 :=
.seq AllocBody531_156 AllocBody531_159

def AllocBody531_161 : StackLang.HolProg 64 :=
.seq AllocBody531_155 AllocBody531_160

def AllocBody531_162 : StackLang.HolProg 64 :=
.seq AllocBody531_154 AllocBody531_161

def AllocBody531_163 : StackLang.HolProg 64 :=
.seq AllocBody531_153 AllocBody531_162

def AllocBody531_164 : StackLang.HolProg 64 :=
.seq AllocBody531_152 AllocBody531_163

def AllocBody531_165 : StackLang.HolProg 64 :=
.seq AllocBody531_151 AllocBody531_164

def AllocBody531_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody531_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody531_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody531_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody531_170 : StackLang.HolProg 64 :=
.seq AllocBody531_168 AllocBody531_169

def AllocBody531_171 : StackLang.HolProg 64 :=
.seq AllocBody531_167 AllocBody531_170

def AllocBody531_172 : StackLang.HolProg 64 :=
.seq AllocBody531_166 AllocBody531_171

def AllocBody531_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody531_174 : StackLang.HolProg 64 :=
.seq AllocBody531_172 AllocBody531_173

def AllocBody531_175 : StackLang.HolProg 64 :=
.call (some (AllocBody531_165, 0, 531, 6)) (Sum.inl 483) (some (AllocBody531_174, 531, 7))

def AllocBody531_176 : StackLang.HolProg 64 :=
.seq AllocBody531_150 AllocBody531_175

def AllocBody531_177 : StackLang.HolProg 64 :=
.seq AllocBody531_149 AllocBody531_176

def AllocBody531_178 : StackLang.HolProg 64 :=
.seq AllocBody531_148 AllocBody531_177

def AllocBody531_179 : StackLang.HolProg 64 :=
.seq AllocBody531_129 AllocBody531_178

def AllocBody531_180 : StackLang.HolProg 64 :=
.seq AllocBody531_126 AllocBody531_179

def AllocBody531_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody531_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody531_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1744#64)

def AllocBody531_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_186 : StackLang.HolProg 64 :=
.seq AllocBody531_184 AllocBody531_185

def AllocBody531_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody531_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody531_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 9

def AllocBody531_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody531_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody531_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody531_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody531_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_197 : StackLang.HolProg 64 :=
.seq AllocBody531_195 AllocBody531_196

def AllocBody531_198 : StackLang.HolProg 64 :=
.seq AllocBody531_194 AllocBody531_197

def AllocBody531_199 : StackLang.HolProg 64 :=
.seq AllocBody531_193 AllocBody531_198

def AllocBody531_200 : StackLang.HolProg 64 :=
.seq AllocBody531_192 AllocBody531_199

def AllocBody531_201 : StackLang.HolProg 64 :=
.seq AllocBody531_191 AllocBody531_200

def AllocBody531_202 : StackLang.HolProg 64 :=
.seq AllocBody531_190 AllocBody531_201

def AllocBody531_203 : StackLang.HolProg 64 :=
.seq AllocBody531_189 AllocBody531_202

def AllocBody531_204 : StackLang.HolProg 64 :=
.seq AllocBody531_188 AllocBody531_203

def AllocBody531_205 : StackLang.HolProg 64 :=
.seq AllocBody531_187 AllocBody531_204

def AllocBody531_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody531_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody531_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody531_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody531_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody531_214 : StackLang.HolProg 64 :=
.seq AllocBody531_212 AllocBody531_213

def AllocBody531_215 : StackLang.HolProg 64 :=
.seq AllocBody531_211 AllocBody531_214

def AllocBody531_216 : StackLang.HolProg 64 :=
.seq AllocBody531_210 AllocBody531_215

def AllocBody531_217 : StackLang.HolProg 64 :=
.seq AllocBody531_209 AllocBody531_216

def AllocBody531_218 : StackLang.HolProg 64 :=
.seq AllocBody531_208 AllocBody531_217

def AllocBody531_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody531_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody531_221 : StackLang.HolProg 64 :=
.seq AllocBody531_219 AllocBody531_220

def AllocBody531_222 : StackLang.HolProg 64 :=
.call (some (AllocBody531_218, 0, 531, 8)) (Sum.inl 462) (some (AllocBody531_221, 531, 9))

def AllocBody531_223 : StackLang.HolProg 64 :=
.seq AllocBody531_207 AllocBody531_222

def AllocBody531_224 : StackLang.HolProg 64 :=
.seq AllocBody531_206 AllocBody531_223

def AllocBody531_225 : StackLang.HolProg 64 :=
.seq AllocBody531_205 AllocBody531_224

def AllocBody531_226 : StackLang.HolProg 64 :=
.seq AllocBody531_186 AllocBody531_225

def AllocBody531_227 : StackLang.HolProg 64 :=
.seq AllocBody531_183 AllocBody531_226

def AllocBody531_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody531_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody531_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody531_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody531_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody531_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody531_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody531_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody531_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody531_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody531_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1745#64)

def AllocBody531_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_244 : StackLang.HolProg 64 :=
.seq AllocBody531_242 AllocBody531_243

def AllocBody531_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody531_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody531_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody531_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 531 11

def AllocBody531_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody531_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody531_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody531_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody531_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_255 : StackLang.HolProg 64 :=
.seq AllocBody531_253 AllocBody531_254

def AllocBody531_256 : StackLang.HolProg 64 :=
.seq AllocBody531_252 AllocBody531_255

def AllocBody531_257 : StackLang.HolProg 64 :=
.seq AllocBody531_251 AllocBody531_256

def AllocBody531_258 : StackLang.HolProg 64 :=
.seq AllocBody531_250 AllocBody531_257

def AllocBody531_259 : StackLang.HolProg 64 :=
.seq AllocBody531_249 AllocBody531_258

def AllocBody531_260 : StackLang.HolProg 64 :=
.seq AllocBody531_248 AllocBody531_259

def AllocBody531_261 : StackLang.HolProg 64 :=
.seq AllocBody531_247 AllocBody531_260

def AllocBody531_262 : StackLang.HolProg 64 :=
.seq AllocBody531_246 AllocBody531_261

def AllocBody531_263 : StackLang.HolProg 64 :=
.seq AllocBody531_245 AllocBody531_262

def AllocBody531_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody531_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody531_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody531_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody531_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody531_271 : StackLang.HolProg 64 :=
.seq AllocBody531_269 AllocBody531_270

def AllocBody531_272 : StackLang.HolProg 64 :=
.seq AllocBody531_268 AllocBody531_271

def AllocBody531_273 : StackLang.HolProg 64 :=
.seq AllocBody531_267 AllocBody531_272

def AllocBody531_274 : StackLang.HolProg 64 :=
.seq AllocBody531_266 AllocBody531_273

def AllocBody531_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody531_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody531_277 : StackLang.HolProg 64 :=
.seq AllocBody531_275 AllocBody531_276

def AllocBody531_278 : StackLang.HolProg 64 :=
.call (some (AllocBody531_274, 0, 531, 10)) (Sum.inl 490) (some (AllocBody531_277, 531, 11))

def AllocBody531_279 : StackLang.HolProg 64 :=
.seq AllocBody531_265 AllocBody531_278

def AllocBody531_280 : StackLang.HolProg 64 :=
.seq AllocBody531_264 AllocBody531_279

def AllocBody531_281 : StackLang.HolProg 64 :=
.seq AllocBody531_263 AllocBody531_280

def AllocBody531_282 : StackLang.HolProg 64 :=
.seq AllocBody531_244 AllocBody531_281

def AllocBody531_283 : StackLang.HolProg 64 :=
.seq AllocBody531_241 AllocBody531_282

def AllocBody531_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody531_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody531_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody531_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody531_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody531_289 : StackLang.HolProg 64 :=
.seq AllocBody531_287 AllocBody531_288

def AllocBody531_290 : StackLang.HolProg 64 :=
.seq AllocBody531_286 AllocBody531_289

def AllocBody531_291 : StackLang.HolProg 64 :=
.seq AllocBody531_285 AllocBody531_290

def AllocBody531_292 : StackLang.HolProg 64 :=
.seq AllocBody531_284 AllocBody531_291

def AllocBody531_293 : StackLang.HolProg 64 :=
.seq AllocBody531_283 AllocBody531_292

def AllocBody531_294 : StackLang.HolProg 64 :=
.seq AllocBody531_240 AllocBody531_293

def AllocBody531_295 : StackLang.HolProg 64 :=
.seq AllocBody531_239 AllocBody531_294

def AllocBody531_296 : StackLang.HolProg 64 :=
.seq AllocBody531_238 AllocBody531_295

def AllocBody531_297 : StackLang.HolProg 64 :=
.seq AllocBody531_237 AllocBody531_296

def AllocBody531_298 : StackLang.HolProg 64 :=
.seq AllocBody531_236 AllocBody531_297

def AllocBody531_299 : StackLang.HolProg 64 :=
.seq AllocBody531_235 AllocBody531_298

def AllocBody531_300 : StackLang.HolProg 64 :=
.seq AllocBody531_234 AllocBody531_299

def AllocBody531_301 : StackLang.HolProg 64 :=
.seq AllocBody531_233 AllocBody531_300

def AllocBody531_302 : StackLang.HolProg 64 :=
.seq AllocBody531_232 AllocBody531_301

def AllocBody531_303 : StackLang.HolProg 64 :=
.seq AllocBody531_231 AllocBody531_302

def AllocBody531_304 : StackLang.HolProg 64 :=
.seq AllocBody531_230 AllocBody531_303

def AllocBody531_305 : StackLang.HolProg 64 :=
.seq AllocBody531_229 AllocBody531_304

def AllocBody531_306 : StackLang.HolProg 64 :=
.seq AllocBody531_228 AllocBody531_305

def AllocBody531_307 : StackLang.HolProg 64 :=
.seq AllocBody531_227 AllocBody531_306

def AllocBody531_308 : StackLang.HolProg 64 :=
.seq AllocBody531_182 AllocBody531_307

def AllocBody531_309 : StackLang.HolProg 64 :=
.seq AllocBody531_181 AllocBody531_308

def AllocBody531_310 : StackLang.HolProg 64 :=
.seq AllocBody531_180 AllocBody531_309

def AllocBody531_311 : StackLang.HolProg 64 :=
.seq AllocBody531_125 AllocBody531_310

def AllocBody531_312 : StackLang.HolProg 64 :=
.seq AllocBody531_116 AllocBody531_311

def AllocBody531_313 : StackLang.HolProg 64 :=
.seq AllocBody531_115 AllocBody531_312

def AllocBody531_314 : StackLang.HolProg 64 :=
.seq AllocBody531_114 AllocBody531_313

def AllocBody531_315 : StackLang.HolProg 64 :=
.seq AllocBody531_113 AllocBody531_314

def AllocBody531_316 : StackLang.HolProg 64 :=
.seq AllocBody531_112 AllocBody531_315

def AllocBody531_317 : StackLang.HolProg 64 :=
.seq AllocBody531_111 AllocBody531_316

def AllocBody531_318 : StackLang.HolProg 64 :=
.seq AllocBody531_110 AllocBody531_317

def AllocBody531_319 : StackLang.HolProg 64 :=
.seq AllocBody531_109 AllocBody531_318

def AllocBody531_320 : StackLang.HolProg 64 :=
.seq AllocBody531_52 AllocBody531_319

def AllocBody531_321 : StackLang.HolProg 64 :=
.seq AllocBody531_45 AllocBody531_320

def AllocBody531_322 : StackLang.HolProg 64 :=
.seq AllocBody531_44 AllocBody531_321

def AllocBody531_323 : StackLang.HolProg 64 :=
.seq AllocBody531_1 AllocBody531_322

def AllocBody531_324 : StackLang.HolProg 64 :=
.seq AllocBody531_0 AllocBody531_323

def Alloc531 : Nat × StackLang.HolProg 64 := (531, AllocBody531_324)
theorem Alloc531_eq : StackAlloc.progComp (531, raw531) = Alloc531 := by
  kernel_rfl
#print axioms Alloc531_eq
end InitECandidate.Proofs.BackendStages
