import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw838
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody838_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody838_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody838_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody838_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody838_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody838_5 : StackLang.HolProg 64 :=
.seq AllocBody838_3 AllocBody838_4

def AllocBody838_6 : StackLang.HolProg 64 :=
.seq AllocBody838_2 AllocBody838_5

def AllocBody838_7 : StackLang.HolProg 64 :=
.seq AllocBody838_1 AllocBody838_6

def AllocBody838_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4199#64)

def AllocBody838_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_11 : StackLang.HolProg 64 :=
.seq AllocBody838_9 AllocBody838_10

def AllocBody838_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody838_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody838_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 3

def AllocBody838_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody838_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody838_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody838_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody838_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_22 : StackLang.HolProg 64 :=
.seq AllocBody838_20 AllocBody838_21

def AllocBody838_23 : StackLang.HolProg 64 :=
.seq AllocBody838_19 AllocBody838_22

def AllocBody838_24 : StackLang.HolProg 64 :=
.seq AllocBody838_18 AllocBody838_23

def AllocBody838_25 : StackLang.HolProg 64 :=
.seq AllocBody838_17 AllocBody838_24

def AllocBody838_26 : StackLang.HolProg 64 :=
.seq AllocBody838_16 AllocBody838_25

def AllocBody838_27 : StackLang.HolProg 64 :=
.seq AllocBody838_15 AllocBody838_26

def AllocBody838_28 : StackLang.HolProg 64 :=
.seq AllocBody838_14 AllocBody838_27

def AllocBody838_29 : StackLang.HolProg 64 :=
.seq AllocBody838_13 AllocBody838_28

def AllocBody838_30 : StackLang.HolProg 64 :=
.seq AllocBody838_12 AllocBody838_29

def AllocBody838_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody838_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody838_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody838_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody838_38 : StackLang.HolProg 64 :=
.seq AllocBody838_36 AllocBody838_37

def AllocBody838_39 : StackLang.HolProg 64 :=
.seq AllocBody838_35 AllocBody838_38

def AllocBody838_40 : StackLang.HolProg 64 :=
.seq AllocBody838_34 AllocBody838_39

def AllocBody838_41 : StackLang.HolProg 64 :=
.seq AllocBody838_33 AllocBody838_40

def AllocBody838_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody838_44 : StackLang.HolProg 64 :=
.seq AllocBody838_42 AllocBody838_43

def AllocBody838_45 : StackLang.HolProg 64 :=
.call (some (AllocBody838_41, 0, 838, 2)) (Sum.inl 69) (some (AllocBody838_44, 838, 3))

def AllocBody838_46 : StackLang.HolProg 64 :=
.seq AllocBody838_32 AllocBody838_45

def AllocBody838_47 : StackLang.HolProg 64 :=
.seq AllocBody838_31 AllocBody838_46

def AllocBody838_48 : StackLang.HolProg 64 :=
.seq AllocBody838_30 AllocBody838_47

def AllocBody838_49 : StackLang.HolProg 64 :=
.seq AllocBody838_11 AllocBody838_48

def AllocBody838_50 : StackLang.HolProg 64 :=
.seq AllocBody838_8 AllocBody838_49

def AllocBody838_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody838_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody838_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4200#64)

def AllocBody838_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_57 : StackLang.HolProg 64 :=
.seq AllocBody838_55 AllocBody838_56

def AllocBody838_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody838_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody838_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 5

def AllocBody838_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody838_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody838_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody838_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody838_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_68 : StackLang.HolProg 64 :=
.seq AllocBody838_66 AllocBody838_67

def AllocBody838_69 : StackLang.HolProg 64 :=
.seq AllocBody838_65 AllocBody838_68

def AllocBody838_70 : StackLang.HolProg 64 :=
.seq AllocBody838_64 AllocBody838_69

def AllocBody838_71 : StackLang.HolProg 64 :=
.seq AllocBody838_63 AllocBody838_70

def AllocBody838_72 : StackLang.HolProg 64 :=
.seq AllocBody838_62 AllocBody838_71

def AllocBody838_73 : StackLang.HolProg 64 :=
.seq AllocBody838_61 AllocBody838_72

def AllocBody838_74 : StackLang.HolProg 64 :=
.seq AllocBody838_60 AllocBody838_73

def AllocBody838_75 : StackLang.HolProg 64 :=
.seq AllocBody838_59 AllocBody838_74

def AllocBody838_76 : StackLang.HolProg 64 :=
.seq AllocBody838_58 AllocBody838_75

def AllocBody838_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody838_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody838_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody838_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody838_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody838_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody838_86 : StackLang.HolProg 64 :=
.seq AllocBody838_84 AllocBody838_85

def AllocBody838_87 : StackLang.HolProg 64 :=
.seq AllocBody838_83 AllocBody838_86

def AllocBody838_88 : StackLang.HolProg 64 :=
.seq AllocBody838_82 AllocBody838_87

def AllocBody838_89 : StackLang.HolProg 64 :=
.seq AllocBody838_81 AllocBody838_88

def AllocBody838_90 : StackLang.HolProg 64 :=
.seq AllocBody838_80 AllocBody838_89

def AllocBody838_91 : StackLang.HolProg 64 :=
.seq AllocBody838_79 AllocBody838_90

def AllocBody838_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody838_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody838_94 : StackLang.HolProg 64 :=
.seq AllocBody838_92 AllocBody838_93

def AllocBody838_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody838_96 : StackLang.HolProg 64 :=
.seq AllocBody838_94 AllocBody838_95

def AllocBody838_97 : StackLang.HolProg 64 :=
.call (some (AllocBody838_91, 0, 838, 4)) (Sum.inl 68) (some (AllocBody838_96, 838, 5))

def AllocBody838_98 : StackLang.HolProg 64 :=
.seq AllocBody838_78 AllocBody838_97

def AllocBody838_99 : StackLang.HolProg 64 :=
.seq AllocBody838_77 AllocBody838_98

def AllocBody838_100 : StackLang.HolProg 64 :=
.seq AllocBody838_76 AllocBody838_99

def AllocBody838_101 : StackLang.HolProg 64 :=
.seq AllocBody838_57 AllocBody838_100

def AllocBody838_102 : StackLang.HolProg 64 :=
.seq AllocBody838_54 AllocBody838_101

def AllocBody838_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody838_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody838_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody838_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody838_108 : StackLang.HolProg 64 :=
.seq AllocBody838_106 AllocBody838_107

def AllocBody838_109 : StackLang.HolProg 64 :=
.seq AllocBody838_105 AllocBody838_108

def AllocBody838_110 : StackLang.HolProg 64 :=
.seq AllocBody838_104 AllocBody838_109

def AllocBody838_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4201#64)

def AllocBody838_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_114 : StackLang.HolProg 64 :=
.seq AllocBody838_112 AllocBody838_113

def AllocBody838_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody838_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody838_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 7

def AllocBody838_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody838_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody838_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody838_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody838_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_125 : StackLang.HolProg 64 :=
.seq AllocBody838_123 AllocBody838_124

def AllocBody838_126 : StackLang.HolProg 64 :=
.seq AllocBody838_122 AllocBody838_125

def AllocBody838_127 : StackLang.HolProg 64 :=
.seq AllocBody838_121 AllocBody838_126

def AllocBody838_128 : StackLang.HolProg 64 :=
.seq AllocBody838_120 AllocBody838_127

def AllocBody838_129 : StackLang.HolProg 64 :=
.seq AllocBody838_119 AllocBody838_128

def AllocBody838_130 : StackLang.HolProg 64 :=
.seq AllocBody838_118 AllocBody838_129

def AllocBody838_131 : StackLang.HolProg 64 :=
.seq AllocBody838_117 AllocBody838_130

def AllocBody838_132 : StackLang.HolProg 64 :=
.seq AllocBody838_116 AllocBody838_131

def AllocBody838_133 : StackLang.HolProg 64 :=
.seq AllocBody838_115 AllocBody838_132

def AllocBody838_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody838_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody838_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody838_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody838_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody838_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody838_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody838_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody838_145 : StackLang.HolProg 64 :=
.seq AllocBody838_143 AllocBody838_144

def AllocBody838_146 : StackLang.HolProg 64 :=
.seq AllocBody838_142 AllocBody838_145

def AllocBody838_147 : StackLang.HolProg 64 :=
.seq AllocBody838_141 AllocBody838_146

def AllocBody838_148 : StackLang.HolProg 64 :=
.seq AllocBody838_140 AllocBody838_147

def AllocBody838_149 : StackLang.HolProg 64 :=
.seq AllocBody838_139 AllocBody838_148

def AllocBody838_150 : StackLang.HolProg 64 :=
.seq AllocBody838_138 AllocBody838_149

def AllocBody838_151 : StackLang.HolProg 64 :=
.seq AllocBody838_137 AllocBody838_150

def AllocBody838_152 : StackLang.HolProg 64 :=
.seq AllocBody838_136 AllocBody838_151

def AllocBody838_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody838_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody838_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody838_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody838_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody838_158 : StackLang.HolProg 64 :=
.seq AllocBody838_156 AllocBody838_157

def AllocBody838_159 : StackLang.HolProg 64 :=
.seq AllocBody838_155 AllocBody838_158

def AllocBody838_160 : StackLang.HolProg 64 :=
.seq AllocBody838_154 AllocBody838_159

def AllocBody838_161 : StackLang.HolProg 64 :=
.seq AllocBody838_153 AllocBody838_160

def AllocBody838_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody838_163 : StackLang.HolProg 64 :=
.seq AllocBody838_161 AllocBody838_162

def AllocBody838_164 : StackLang.HolProg 64 :=
.call (some (AllocBody838_152, 0, 838, 6)) (Sum.inl 158) (some (AllocBody838_163, 838, 7))

def AllocBody838_165 : StackLang.HolProg 64 :=
.seq AllocBody838_135 AllocBody838_164

def AllocBody838_166 : StackLang.HolProg 64 :=
.seq AllocBody838_134 AllocBody838_165

def AllocBody838_167 : StackLang.HolProg 64 :=
.seq AllocBody838_133 AllocBody838_166

def AllocBody838_168 : StackLang.HolProg 64 :=
.seq AllocBody838_114 AllocBody838_167

def AllocBody838_169 : StackLang.HolProg 64 :=
.seq AllocBody838_111 AllocBody838_168

def AllocBody838_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody838_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody838_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 6#64)

def AllocBody838_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody838_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody838_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody838_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody838_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody838_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody838_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2047#64)))

def AllocBody838_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2047#64)

def AllocBody838_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody838_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody838_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody838_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7#64)

def AllocBody838_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody838_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody838_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody838_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody838_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody838_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody838_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody838_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody838_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody838_209 : StackLang.HolProg 64 :=
.seq AllocBody838_207 AllocBody838_208

def AllocBody838_210 : StackLang.HolProg 64 :=
.seq AllocBody838_206 AllocBody838_209

def AllocBody838_211 : StackLang.HolProg 64 :=
.seq AllocBody838_205 AllocBody838_210

def AllocBody838_212 : StackLang.HolProg 64 :=
.seq AllocBody838_204 AllocBody838_211

def AllocBody838_213 : StackLang.HolProg 64 :=
.seq AllocBody838_203 AllocBody838_212

def AllocBody838_214 : StackLang.HolProg 64 :=
.seq AllocBody838_202 AllocBody838_213

def AllocBody838_215 : StackLang.HolProg 64 :=
.seq AllocBody838_201 AllocBody838_214

def AllocBody838_216 : StackLang.HolProg 64 :=
.seq AllocBody838_200 AllocBody838_215

def AllocBody838_217 : StackLang.HolProg 64 :=
.seq AllocBody838_199 AllocBody838_216

def AllocBody838_218 : StackLang.HolProg 64 :=
.seq AllocBody838_198 AllocBody838_217

def AllocBody838_219 : StackLang.HolProg 64 :=
.seq AllocBody838_197 AllocBody838_218

def AllocBody838_220 : StackLang.HolProg 64 :=
.seq AllocBody838_196 AllocBody838_219

def AllocBody838_221 : StackLang.HolProg 64 :=
.seq AllocBody838_195 AllocBody838_220

def AllocBody838_222 : StackLang.HolProg 64 :=
.seq AllocBody838_194 AllocBody838_221

def AllocBody838_223 : StackLang.HolProg 64 :=
.seq AllocBody838_193 AllocBody838_222

def AllocBody838_224 : StackLang.HolProg 64 :=
.seq AllocBody838_192 AllocBody838_223

def AllocBody838_225 : StackLang.HolProg 64 :=
.seq AllocBody838_191 AllocBody838_224

def AllocBody838_226 : StackLang.HolProg 64 :=
.seq AllocBody838_190 AllocBody838_225

def AllocBody838_227 : StackLang.HolProg 64 :=
.seq AllocBody838_189 AllocBody838_226

def AllocBody838_228 : StackLang.HolProg 64 :=
.seq AllocBody838_188 AllocBody838_227

def AllocBody838_229 : StackLang.HolProg 64 :=
.seq AllocBody838_187 AllocBody838_228

def AllocBody838_230 : StackLang.HolProg 64 :=
.seq AllocBody838_186 AllocBody838_229

def AllocBody838_231 : StackLang.HolProg 64 :=
.seq AllocBody838_185 AllocBody838_230

def AllocBody838_232 : StackLang.HolProg 64 :=
.seq AllocBody838_184 AllocBody838_231

def AllocBody838_233 : StackLang.HolProg 64 :=
.seq AllocBody838_183 AllocBody838_232

def AllocBody838_234 : StackLang.HolProg 64 :=
.seq AllocBody838_182 AllocBody838_233

def AllocBody838_235 : StackLang.HolProg 64 :=
.seq AllocBody838_181 AllocBody838_234

def AllocBody838_236 : StackLang.HolProg 64 :=
.seq AllocBody838_180 AllocBody838_235

def AllocBody838_237 : StackLang.HolProg 64 :=
.seq AllocBody838_179 AllocBody838_236

def AllocBody838_238 : StackLang.HolProg 64 :=
.seq AllocBody838_178 AllocBody838_237

def AllocBody838_239 : StackLang.HolProg 64 :=
.seq AllocBody838_177 AllocBody838_238

def AllocBody838_240 : StackLang.HolProg 64 :=
.seq AllocBody838_176 AllocBody838_239

def AllocBody838_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody838_243 : StackLang.HolProg 64 :=
.seq AllocBody838_241 AllocBody838_242

def AllocBody838_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody838_240 AllocBody838_243

def AllocBody838_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_247 : StackLang.HolProg 64 :=
.seq AllocBody838_245 AllocBody838_246

def AllocBody838_248 : StackLang.HolProg 64 :=
.seq AllocBody838_244 AllocBody838_247

def AllocBody838_249 : StackLang.HolProg 64 :=
.seq AllocBody838_175 AllocBody838_248

def AllocBody838_250 : StackLang.HolProg 64 :=
.seq AllocBody838_174 AllocBody838_249

def AllocBody838_251 : StackLang.HolProg 64 :=
.loop AllocBody838_250

def AllocBody838_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4202#64)

def AllocBody838_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_257 : StackLang.HolProg 64 :=
.seq AllocBody838_255 AllocBody838_256

def AllocBody838_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody838_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody838_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody838_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 838 9

def AllocBody838_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody838_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody838_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody838_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody838_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_268 : StackLang.HolProg 64 :=
.seq AllocBody838_266 AllocBody838_267

def AllocBody838_269 : StackLang.HolProg 64 :=
.seq AllocBody838_265 AllocBody838_268

def AllocBody838_270 : StackLang.HolProg 64 :=
.seq AllocBody838_264 AllocBody838_269

def AllocBody838_271 : StackLang.HolProg 64 :=
.seq AllocBody838_263 AllocBody838_270

def AllocBody838_272 : StackLang.HolProg 64 :=
.seq AllocBody838_262 AllocBody838_271

def AllocBody838_273 : StackLang.HolProg 64 :=
.seq AllocBody838_261 AllocBody838_272

def AllocBody838_274 : StackLang.HolProg 64 :=
.seq AllocBody838_260 AllocBody838_273

def AllocBody838_275 : StackLang.HolProg 64 :=
.seq AllocBody838_259 AllocBody838_274

def AllocBody838_276 : StackLang.HolProg 64 :=
.seq AllocBody838_258 AllocBody838_275

def AllocBody838_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody838_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody838_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody838_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody838_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody838_284 : StackLang.HolProg 64 :=
.seq AllocBody838_282 AllocBody838_283

def AllocBody838_285 : StackLang.HolProg 64 :=
.seq AllocBody838_281 AllocBody838_284

def AllocBody838_286 : StackLang.HolProg 64 :=
.seq AllocBody838_280 AllocBody838_285

def AllocBody838_287 : StackLang.HolProg 64 :=
.seq AllocBody838_279 AllocBody838_286

def AllocBody838_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody838_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody838_290 : StackLang.HolProg 64 :=
.seq AllocBody838_288 AllocBody838_289

def AllocBody838_291 : StackLang.HolProg 64 :=
.call (some (AllocBody838_287, 0, 838, 8)) (Sum.inl 70) (some (AllocBody838_290, 838, 9))

def AllocBody838_292 : StackLang.HolProg 64 :=
.seq AllocBody838_278 AllocBody838_291

def AllocBody838_293 : StackLang.HolProg 64 :=
.seq AllocBody838_277 AllocBody838_292

def AllocBody838_294 : StackLang.HolProg 64 :=
.seq AllocBody838_276 AllocBody838_293

def AllocBody838_295 : StackLang.HolProg 64 :=
.seq AllocBody838_257 AllocBody838_294

def AllocBody838_296 : StackLang.HolProg 64 :=
.seq AllocBody838_254 AllocBody838_295

def AllocBody838_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody838_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody838_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody838_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody838_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody838_302 : StackLang.HolProg 64 :=
.seq AllocBody838_300 AllocBody838_301

def AllocBody838_303 : StackLang.HolProg 64 :=
.seq AllocBody838_299 AllocBody838_302

def AllocBody838_304 : StackLang.HolProg 64 :=
.seq AllocBody838_298 AllocBody838_303

def AllocBody838_305 : StackLang.HolProg 64 :=
.seq AllocBody838_297 AllocBody838_304

def AllocBody838_306 : StackLang.HolProg 64 :=
.seq AllocBody838_296 AllocBody838_305

def AllocBody838_307 : StackLang.HolProg 64 :=
.seq AllocBody838_253 AllocBody838_306

def AllocBody838_308 : StackLang.HolProg 64 :=
.seq AllocBody838_252 AllocBody838_307

def AllocBody838_309 : StackLang.HolProg 64 :=
.seq AllocBody838_251 AllocBody838_308

def AllocBody838_310 : StackLang.HolProg 64 :=
.seq AllocBody838_173 AllocBody838_309

def AllocBody838_311 : StackLang.HolProg 64 :=
.seq AllocBody838_172 AllocBody838_310

def AllocBody838_312 : StackLang.HolProg 64 :=
.seq AllocBody838_171 AllocBody838_311

def AllocBody838_313 : StackLang.HolProg 64 :=
.seq AllocBody838_170 AllocBody838_312

def AllocBody838_314 : StackLang.HolProg 64 :=
.seq AllocBody838_169 AllocBody838_313

def AllocBody838_315 : StackLang.HolProg 64 :=
.seq AllocBody838_110 AllocBody838_314

def AllocBody838_316 : StackLang.HolProg 64 :=
.seq AllocBody838_103 AllocBody838_315

def AllocBody838_317 : StackLang.HolProg 64 :=
.seq AllocBody838_102 AllocBody838_316

def AllocBody838_318 : StackLang.HolProg 64 :=
.seq AllocBody838_53 AllocBody838_317

def AllocBody838_319 : StackLang.HolProg 64 :=
.seq AllocBody838_52 AllocBody838_318

def AllocBody838_320 : StackLang.HolProg 64 :=
.seq AllocBody838_51 AllocBody838_319

def AllocBody838_321 : StackLang.HolProg 64 :=
.seq AllocBody838_50 AllocBody838_320

def AllocBody838_322 : StackLang.HolProg 64 :=
.seq AllocBody838_7 AllocBody838_321

def AllocBody838_323 : StackLang.HolProg 64 :=
.seq AllocBody838_0 AllocBody838_322

def Alloc838 : Nat × StackLang.HolProg 64 := (838, AllocBody838_323)
theorem Alloc838_eq : StackAlloc.progComp (838, raw838) = Alloc838 := by
  kernel_rfl
#print axioms Alloc838_eq
end InitECandidate.Proofs.BackendStages
