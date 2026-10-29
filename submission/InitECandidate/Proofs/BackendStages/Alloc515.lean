import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw515
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody515_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody515_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody515_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1654#64)

def AllocBody515_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_5 : StackLang.HolProg 64 :=
.seq AllocBody515_3 AllocBody515_4

def AllocBody515_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody515_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody515_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 3

def AllocBody515_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody515_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody515_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody515_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody515_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_16 : StackLang.HolProg 64 :=
.seq AllocBody515_14 AllocBody515_15

def AllocBody515_17 : StackLang.HolProg 64 :=
.seq AllocBody515_13 AllocBody515_16

def AllocBody515_18 : StackLang.HolProg 64 :=
.seq AllocBody515_12 AllocBody515_17

def AllocBody515_19 : StackLang.HolProg 64 :=
.seq AllocBody515_11 AllocBody515_18

def AllocBody515_20 : StackLang.HolProg 64 :=
.seq AllocBody515_10 AllocBody515_19

def AllocBody515_21 : StackLang.HolProg 64 :=
.seq AllocBody515_9 AllocBody515_20

def AllocBody515_22 : StackLang.HolProg 64 :=
.seq AllocBody515_8 AllocBody515_21

def AllocBody515_23 : StackLang.HolProg 64 :=
.seq AllocBody515_7 AllocBody515_22

def AllocBody515_24 : StackLang.HolProg 64 :=
.seq AllocBody515_6 AllocBody515_23

def AllocBody515_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody515_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody515_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody515_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody515_32 : StackLang.HolProg 64 :=
.seq AllocBody515_30 AllocBody515_31

def AllocBody515_33 : StackLang.HolProg 64 :=
.seq AllocBody515_29 AllocBody515_32

def AllocBody515_34 : StackLang.HolProg 64 :=
.seq AllocBody515_28 AllocBody515_33

def AllocBody515_35 : StackLang.HolProg 64 :=
.seq AllocBody515_27 AllocBody515_34

def AllocBody515_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody515_38 : StackLang.HolProg 64 :=
.seq AllocBody515_36 AllocBody515_37

def AllocBody515_39 : StackLang.HolProg 64 :=
.call (some (AllocBody515_35, 0, 515, 2)) (Sum.inl 475) (some (AllocBody515_38, 515, 3))

def AllocBody515_40 : StackLang.HolProg 64 :=
.seq AllocBody515_26 AllocBody515_39

def AllocBody515_41 : StackLang.HolProg 64 :=
.seq AllocBody515_25 AllocBody515_40

def AllocBody515_42 : StackLang.HolProg 64 :=
.seq AllocBody515_24 AllocBody515_41

def AllocBody515_43 : StackLang.HolProg 64 :=
.seq AllocBody515_5 AllocBody515_42

def AllocBody515_44 : StackLang.HolProg 64 :=
.seq AllocBody515_2 AllocBody515_43

def AllocBody515_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody515_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody515_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody515_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody515_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody515_50 : StackLang.HolProg 64 :=
.seq AllocBody515_48 AllocBody515_49

def AllocBody515_51 : StackLang.HolProg 64 :=
.seq AllocBody515_47 AllocBody515_50

def AllocBody515_52 : StackLang.HolProg 64 :=
.seq AllocBody515_46 AllocBody515_51

def AllocBody515_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1655#64)

def AllocBody515_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_56 : StackLang.HolProg 64 :=
.seq AllocBody515_54 AllocBody515_55

def AllocBody515_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody515_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody515_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 5

def AllocBody515_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody515_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody515_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody515_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody515_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_67 : StackLang.HolProg 64 :=
.seq AllocBody515_65 AllocBody515_66

def AllocBody515_68 : StackLang.HolProg 64 :=
.seq AllocBody515_64 AllocBody515_67

def AllocBody515_69 : StackLang.HolProg 64 :=
.seq AllocBody515_63 AllocBody515_68

def AllocBody515_70 : StackLang.HolProg 64 :=
.seq AllocBody515_62 AllocBody515_69

def AllocBody515_71 : StackLang.HolProg 64 :=
.seq AllocBody515_61 AllocBody515_70

def AllocBody515_72 : StackLang.HolProg 64 :=
.seq AllocBody515_60 AllocBody515_71

def AllocBody515_73 : StackLang.HolProg 64 :=
.seq AllocBody515_59 AllocBody515_72

def AllocBody515_74 : StackLang.HolProg 64 :=
.seq AllocBody515_58 AllocBody515_73

def AllocBody515_75 : StackLang.HolProg 64 :=
.seq AllocBody515_57 AllocBody515_74

def AllocBody515_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody515_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody515_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody515_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody515_83 : StackLang.HolProg 64 :=
.seq AllocBody515_81 AllocBody515_82

def AllocBody515_84 : StackLang.HolProg 64 :=
.seq AllocBody515_80 AllocBody515_83

def AllocBody515_85 : StackLang.HolProg 64 :=
.seq AllocBody515_79 AllocBody515_84

def AllocBody515_86 : StackLang.HolProg 64 :=
.seq AllocBody515_78 AllocBody515_85

def AllocBody515_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody515_89 : StackLang.HolProg 64 :=
.seq AllocBody515_87 AllocBody515_88

def AllocBody515_90 : StackLang.HolProg 64 :=
.call (some (AllocBody515_86, 0, 515, 4)) (Sum.inl 475) (some (AllocBody515_89, 515, 5))

def AllocBody515_91 : StackLang.HolProg 64 :=
.seq AllocBody515_77 AllocBody515_90

def AllocBody515_92 : StackLang.HolProg 64 :=
.seq AllocBody515_76 AllocBody515_91

def AllocBody515_93 : StackLang.HolProg 64 :=
.seq AllocBody515_75 AllocBody515_92

def AllocBody515_94 : StackLang.HolProg 64 :=
.seq AllocBody515_56 AllocBody515_93

def AllocBody515_95 : StackLang.HolProg 64 :=
.seq AllocBody515_53 AllocBody515_94

def AllocBody515_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody515_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody515_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody515_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody515_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody515_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody515_102 : StackLang.HolProg 64 :=
.seq AllocBody515_100 AllocBody515_101

def AllocBody515_103 : StackLang.HolProg 64 :=
.seq AllocBody515_99 AllocBody515_102

def AllocBody515_104 : StackLang.HolProg 64 :=
.seq AllocBody515_98 AllocBody515_103

def AllocBody515_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1656#64)

def AllocBody515_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_108 : StackLang.HolProg 64 :=
.seq AllocBody515_106 AllocBody515_107

def AllocBody515_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody515_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody515_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 7

def AllocBody515_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody515_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody515_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody515_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody515_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_119 : StackLang.HolProg 64 :=
.seq AllocBody515_117 AllocBody515_118

def AllocBody515_120 : StackLang.HolProg 64 :=
.seq AllocBody515_116 AllocBody515_119

def AllocBody515_121 : StackLang.HolProg 64 :=
.seq AllocBody515_115 AllocBody515_120

def AllocBody515_122 : StackLang.HolProg 64 :=
.seq AllocBody515_114 AllocBody515_121

def AllocBody515_123 : StackLang.HolProg 64 :=
.seq AllocBody515_113 AllocBody515_122

def AllocBody515_124 : StackLang.HolProg 64 :=
.seq AllocBody515_112 AllocBody515_123

def AllocBody515_125 : StackLang.HolProg 64 :=
.seq AllocBody515_111 AllocBody515_124

def AllocBody515_126 : StackLang.HolProg 64 :=
.seq AllocBody515_110 AllocBody515_125

def AllocBody515_127 : StackLang.HolProg 64 :=
.seq AllocBody515_109 AllocBody515_126

def AllocBody515_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody515_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody515_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody515_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody515_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody515_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody515_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody515_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody515_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody515_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody515_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody515_142 : StackLang.HolProg 64 :=
.seq AllocBody515_140 AllocBody515_141

def AllocBody515_143 : StackLang.HolProg 64 :=
.seq AllocBody515_139 AllocBody515_142

def AllocBody515_144 : StackLang.HolProg 64 :=
.seq AllocBody515_138 AllocBody515_143

def AllocBody515_145 : StackLang.HolProg 64 :=
.seq AllocBody515_137 AllocBody515_144

def AllocBody515_146 : StackLang.HolProg 64 :=
.seq AllocBody515_136 AllocBody515_145

def AllocBody515_147 : StackLang.HolProg 64 :=
.seq AllocBody515_135 AllocBody515_146

def AllocBody515_148 : StackLang.HolProg 64 :=
.seq AllocBody515_134 AllocBody515_147

def AllocBody515_149 : StackLang.HolProg 64 :=
.seq AllocBody515_133 AllocBody515_148

def AllocBody515_150 : StackLang.HolProg 64 :=
.seq AllocBody515_132 AllocBody515_149

def AllocBody515_151 : StackLang.HolProg 64 :=
.seq AllocBody515_131 AllocBody515_150

def AllocBody515_152 : StackLang.HolProg 64 :=
.seq AllocBody515_130 AllocBody515_151

def AllocBody515_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody515_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody515_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody515_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody515_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody515_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody515_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody515_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody515_161 : StackLang.HolProg 64 :=
.seq AllocBody515_159 AllocBody515_160

def AllocBody515_162 : StackLang.HolProg 64 :=
.seq AllocBody515_158 AllocBody515_161

def AllocBody515_163 : StackLang.HolProg 64 :=
.seq AllocBody515_157 AllocBody515_162

def AllocBody515_164 : StackLang.HolProg 64 :=
.seq AllocBody515_156 AllocBody515_163

def AllocBody515_165 : StackLang.HolProg 64 :=
.seq AllocBody515_155 AllocBody515_164

def AllocBody515_166 : StackLang.HolProg 64 :=
.seq AllocBody515_154 AllocBody515_165

def AllocBody515_167 : StackLang.HolProg 64 :=
.seq AllocBody515_153 AllocBody515_166

def AllocBody515_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody515_169 : StackLang.HolProg 64 :=
.seq AllocBody515_167 AllocBody515_168

def AllocBody515_170 : StackLang.HolProg 64 :=
.call (some (AllocBody515_152, 0, 515, 6)) (Sum.inl 470) (some (AllocBody515_169, 515, 7))

def AllocBody515_171 : StackLang.HolProg 64 :=
.seq AllocBody515_129 AllocBody515_170

def AllocBody515_172 : StackLang.HolProg 64 :=
.seq AllocBody515_128 AllocBody515_171

def AllocBody515_173 : StackLang.HolProg 64 :=
.seq AllocBody515_127 AllocBody515_172

def AllocBody515_174 : StackLang.HolProg 64 :=
.seq AllocBody515_108 AllocBody515_173

def AllocBody515_175 : StackLang.HolProg 64 :=
.seq AllocBody515_105 AllocBody515_174

def AllocBody515_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody515_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody515_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody515_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody515_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody515_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1657#64)

def AllocBody515_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_189 : StackLang.HolProg 64 :=
.seq AllocBody515_187 AllocBody515_188

def AllocBody515_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody515_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody515_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 9

def AllocBody515_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody515_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody515_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody515_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody515_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_200 : StackLang.HolProg 64 :=
.seq AllocBody515_198 AllocBody515_199

def AllocBody515_201 : StackLang.HolProg 64 :=
.seq AllocBody515_197 AllocBody515_200

def AllocBody515_202 : StackLang.HolProg 64 :=
.seq AllocBody515_196 AllocBody515_201

def AllocBody515_203 : StackLang.HolProg 64 :=
.seq AllocBody515_195 AllocBody515_202

def AllocBody515_204 : StackLang.HolProg 64 :=
.seq AllocBody515_194 AllocBody515_203

def AllocBody515_205 : StackLang.HolProg 64 :=
.seq AllocBody515_193 AllocBody515_204

def AllocBody515_206 : StackLang.HolProg 64 :=
.seq AllocBody515_192 AllocBody515_205

def AllocBody515_207 : StackLang.HolProg 64 :=
.seq AllocBody515_191 AllocBody515_206

def AllocBody515_208 : StackLang.HolProg 64 :=
.seq AllocBody515_190 AllocBody515_207

def AllocBody515_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody515_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody515_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody515_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_216 : StackLang.HolProg 64 :=
.seq AllocBody515_214 AllocBody515_215

def AllocBody515_217 : StackLang.HolProg 64 :=
.seq AllocBody515_213 AllocBody515_216

def AllocBody515_218 : StackLang.HolProg 64 :=
.seq AllocBody515_212 AllocBody515_217

def AllocBody515_219 : StackLang.HolProg 64 :=
.seq AllocBody515_211 AllocBody515_218

def AllocBody515_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody515_222 : StackLang.HolProg 64 :=
.seq AllocBody515_220 AllocBody515_221

def AllocBody515_223 : StackLang.HolProg 64 :=
.call (some (AllocBody515_219, 0, 515, 8)) (Sum.inl 476) (some (AllocBody515_222, 515, 9))

def AllocBody515_224 : StackLang.HolProg 64 :=
.seq AllocBody515_210 AllocBody515_223

def AllocBody515_225 : StackLang.HolProg 64 :=
.seq AllocBody515_209 AllocBody515_224

def AllocBody515_226 : StackLang.HolProg 64 :=
.seq AllocBody515_208 AllocBody515_225

def AllocBody515_227 : StackLang.HolProg 64 :=
.seq AllocBody515_189 AllocBody515_226

def AllocBody515_228 : StackLang.HolProg 64 :=
.seq AllocBody515_186 AllocBody515_227

def AllocBody515_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody515_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody515_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1658#64)

def AllocBody515_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_235 : StackLang.HolProg 64 :=
.seq AllocBody515_233 AllocBody515_234

def AllocBody515_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody515_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody515_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody515_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 11

def AllocBody515_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody515_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody515_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody515_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody515_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_246 : StackLang.HolProg 64 :=
.seq AllocBody515_244 AllocBody515_245

def AllocBody515_247 : StackLang.HolProg 64 :=
.seq AllocBody515_243 AllocBody515_246

def AllocBody515_248 : StackLang.HolProg 64 :=
.seq AllocBody515_242 AllocBody515_247

def AllocBody515_249 : StackLang.HolProg 64 :=
.seq AllocBody515_241 AllocBody515_248

def AllocBody515_250 : StackLang.HolProg 64 :=
.seq AllocBody515_240 AllocBody515_249

def AllocBody515_251 : StackLang.HolProg 64 :=
.seq AllocBody515_239 AllocBody515_250

def AllocBody515_252 : StackLang.HolProg 64 :=
.seq AllocBody515_238 AllocBody515_251

def AllocBody515_253 : StackLang.HolProg 64 :=
.seq AllocBody515_237 AllocBody515_252

def AllocBody515_254 : StackLang.HolProg 64 :=
.seq AllocBody515_236 AllocBody515_253

def AllocBody515_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody515_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody515_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody515_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody515_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody515_262 : StackLang.HolProg 64 :=
.seq AllocBody515_260 AllocBody515_261

def AllocBody515_263 : StackLang.HolProg 64 :=
.seq AllocBody515_259 AllocBody515_262

def AllocBody515_264 : StackLang.HolProg 64 :=
.seq AllocBody515_258 AllocBody515_263

def AllocBody515_265 : StackLang.HolProg 64 :=
.seq AllocBody515_257 AllocBody515_264

def AllocBody515_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody515_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody515_268 : StackLang.HolProg 64 :=
.seq AllocBody515_266 AllocBody515_267

def AllocBody515_269 : StackLang.HolProg 64 :=
.call (some (AllocBody515_265, 0, 515, 10)) (Sum.inl 490) (some (AllocBody515_268, 515, 11))

def AllocBody515_270 : StackLang.HolProg 64 :=
.seq AllocBody515_256 AllocBody515_269

def AllocBody515_271 : StackLang.HolProg 64 :=
.seq AllocBody515_255 AllocBody515_270

def AllocBody515_272 : StackLang.HolProg 64 :=
.seq AllocBody515_254 AllocBody515_271

def AllocBody515_273 : StackLang.HolProg 64 :=
.seq AllocBody515_235 AllocBody515_272

def AllocBody515_274 : StackLang.HolProg 64 :=
.seq AllocBody515_232 AllocBody515_273

def AllocBody515_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody515_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody515_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody515_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody515_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody515_280 : StackLang.HolProg 64 :=
.seq AllocBody515_278 AllocBody515_279

def AllocBody515_281 : StackLang.HolProg 64 :=
.seq AllocBody515_277 AllocBody515_280

def AllocBody515_282 : StackLang.HolProg 64 :=
.seq AllocBody515_276 AllocBody515_281

def AllocBody515_283 : StackLang.HolProg 64 :=
.seq AllocBody515_275 AllocBody515_282

def AllocBody515_284 : StackLang.HolProg 64 :=
.seq AllocBody515_274 AllocBody515_283

def AllocBody515_285 : StackLang.HolProg 64 :=
.seq AllocBody515_231 AllocBody515_284

def AllocBody515_286 : StackLang.HolProg 64 :=
.seq AllocBody515_230 AllocBody515_285

def AllocBody515_287 : StackLang.HolProg 64 :=
.seq AllocBody515_229 AllocBody515_286

def AllocBody515_288 : StackLang.HolProg 64 :=
.seq AllocBody515_228 AllocBody515_287

def AllocBody515_289 : StackLang.HolProg 64 :=
.seq AllocBody515_185 AllocBody515_288

def AllocBody515_290 : StackLang.HolProg 64 :=
.seq AllocBody515_184 AllocBody515_289

def AllocBody515_291 : StackLang.HolProg 64 :=
.seq AllocBody515_183 AllocBody515_290

def AllocBody515_292 : StackLang.HolProg 64 :=
.seq AllocBody515_182 AllocBody515_291

def AllocBody515_293 : StackLang.HolProg 64 :=
.seq AllocBody515_181 AllocBody515_292

def AllocBody515_294 : StackLang.HolProg 64 :=
.seq AllocBody515_180 AllocBody515_293

def AllocBody515_295 : StackLang.HolProg 64 :=
.seq AllocBody515_179 AllocBody515_294

def AllocBody515_296 : StackLang.HolProg 64 :=
.seq AllocBody515_178 AllocBody515_295

def AllocBody515_297 : StackLang.HolProg 64 :=
.seq AllocBody515_177 AllocBody515_296

def AllocBody515_298 : StackLang.HolProg 64 :=
.seq AllocBody515_176 AllocBody515_297

def AllocBody515_299 : StackLang.HolProg 64 :=
.seq AllocBody515_175 AllocBody515_298

def AllocBody515_300 : StackLang.HolProg 64 :=
.seq AllocBody515_104 AllocBody515_299

def AllocBody515_301 : StackLang.HolProg 64 :=
.seq AllocBody515_97 AllocBody515_300

def AllocBody515_302 : StackLang.HolProg 64 :=
.seq AllocBody515_96 AllocBody515_301

def AllocBody515_303 : StackLang.HolProg 64 :=
.seq AllocBody515_95 AllocBody515_302

def AllocBody515_304 : StackLang.HolProg 64 :=
.seq AllocBody515_52 AllocBody515_303

def AllocBody515_305 : StackLang.HolProg 64 :=
.seq AllocBody515_45 AllocBody515_304

def AllocBody515_306 : StackLang.HolProg 64 :=
.seq AllocBody515_44 AllocBody515_305

def AllocBody515_307 : StackLang.HolProg 64 :=
.seq AllocBody515_1 AllocBody515_306

def AllocBody515_308 : StackLang.HolProg 64 :=
.seq AllocBody515_0 AllocBody515_307

def Alloc515 : Nat × StackLang.HolProg 64 := (515, AllocBody515_308)
theorem Alloc515_eq : StackAlloc.progComp (515, raw515) = Alloc515 := by
  kernel_rfl
#print axioms Alloc515_eq
end InitECandidate.Proofs.BackendStages
