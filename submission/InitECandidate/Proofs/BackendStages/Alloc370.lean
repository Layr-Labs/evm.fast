import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw370
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody370_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody370_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody370_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody370_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody370_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody370_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody370_6 : StackLang.HolProg 64 :=
.seq AllocBody370_4 AllocBody370_5

def AllocBody370_7 : StackLang.HolProg 64 :=
.seq AllocBody370_3 AllocBody370_6

def AllocBody370_8 : StackLang.HolProg 64 :=
.seq AllocBody370_2 AllocBody370_7

def AllocBody370_9 : StackLang.HolProg 64 :=
.seq AllocBody370_1 AllocBody370_8

def AllocBody370_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1085#64)

def AllocBody370_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_13 : StackLang.HolProg 64 :=
.seq AllocBody370_11 AllocBody370_12

def AllocBody370_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody370_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody370_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 3

def AllocBody370_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody370_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody370_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody370_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody370_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_24 : StackLang.HolProg 64 :=
.seq AllocBody370_22 AllocBody370_23

def AllocBody370_25 : StackLang.HolProg 64 :=
.seq AllocBody370_21 AllocBody370_24

def AllocBody370_26 : StackLang.HolProg 64 :=
.seq AllocBody370_20 AllocBody370_25

def AllocBody370_27 : StackLang.HolProg 64 :=
.seq AllocBody370_19 AllocBody370_26

def AllocBody370_28 : StackLang.HolProg 64 :=
.seq AllocBody370_18 AllocBody370_27

def AllocBody370_29 : StackLang.HolProg 64 :=
.seq AllocBody370_17 AllocBody370_28

def AllocBody370_30 : StackLang.HolProg 64 :=
.seq AllocBody370_16 AllocBody370_29

def AllocBody370_31 : StackLang.HolProg 64 :=
.seq AllocBody370_15 AllocBody370_30

def AllocBody370_32 : StackLang.HolProg 64 :=
.seq AllocBody370_14 AllocBody370_31

def AllocBody370_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody370_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody370_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody370_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody370_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody370_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody370_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody370_43 : StackLang.HolProg 64 :=
.seq AllocBody370_41 AllocBody370_42

def AllocBody370_44 : StackLang.HolProg 64 :=
.seq AllocBody370_40 AllocBody370_43

def AllocBody370_45 : StackLang.HolProg 64 :=
.seq AllocBody370_39 AllocBody370_44

def AllocBody370_46 : StackLang.HolProg 64 :=
.seq AllocBody370_38 AllocBody370_45

def AllocBody370_47 : StackLang.HolProg 64 :=
.seq AllocBody370_37 AllocBody370_46

def AllocBody370_48 : StackLang.HolProg 64 :=
.seq AllocBody370_36 AllocBody370_47

def AllocBody370_49 : StackLang.HolProg 64 :=
.seq AllocBody370_35 AllocBody370_48

def AllocBody370_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody370_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody370_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody370_53 : StackLang.HolProg 64 :=
.seq AllocBody370_51 AllocBody370_52

def AllocBody370_54 : StackLang.HolProg 64 :=
.seq AllocBody370_50 AllocBody370_53

def AllocBody370_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody370_56 : StackLang.HolProg 64 :=
.seq AllocBody370_54 AllocBody370_55

def AllocBody370_57 : StackLang.HolProg 64 :=
.call (some (AllocBody370_49, 0, 370, 2)) (Sum.inl 69) (some (AllocBody370_56, 370, 3))

def AllocBody370_58 : StackLang.HolProg 64 :=
.seq AllocBody370_34 AllocBody370_57

def AllocBody370_59 : StackLang.HolProg 64 :=
.seq AllocBody370_33 AllocBody370_58

def AllocBody370_60 : StackLang.HolProg 64 :=
.seq AllocBody370_32 AllocBody370_59

def AllocBody370_61 : StackLang.HolProg 64 :=
.seq AllocBody370_13 AllocBody370_60

def AllocBody370_62 : StackLang.HolProg 64 :=
.seq AllocBody370_10 AllocBody370_61

def AllocBody370_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody370_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody370_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody370_66 : StackLang.HolProg 64 :=
.seq AllocBody370_64 AllocBody370_65

def AllocBody370_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1086#64)

def AllocBody370_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_70 : StackLang.HolProg 64 :=
.seq AllocBody370_68 AllocBody370_69

def AllocBody370_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody370_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody370_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 5

def AllocBody370_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody370_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody370_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody370_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody370_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_81 : StackLang.HolProg 64 :=
.seq AllocBody370_79 AllocBody370_80

def AllocBody370_82 : StackLang.HolProg 64 :=
.seq AllocBody370_78 AllocBody370_81

def AllocBody370_83 : StackLang.HolProg 64 :=
.seq AllocBody370_77 AllocBody370_82

def AllocBody370_84 : StackLang.HolProg 64 :=
.seq AllocBody370_76 AllocBody370_83

def AllocBody370_85 : StackLang.HolProg 64 :=
.seq AllocBody370_75 AllocBody370_84

def AllocBody370_86 : StackLang.HolProg 64 :=
.seq AllocBody370_74 AllocBody370_85

def AllocBody370_87 : StackLang.HolProg 64 :=
.seq AllocBody370_73 AllocBody370_86

def AllocBody370_88 : StackLang.HolProg 64 :=
.seq AllocBody370_72 AllocBody370_87

def AllocBody370_89 : StackLang.HolProg 64 :=
.seq AllocBody370_71 AllocBody370_88

def AllocBody370_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody370_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody370_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody370_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody370_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody370_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody370_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody370_100 : StackLang.HolProg 64 :=
.seq AllocBody370_98 AllocBody370_99

def AllocBody370_101 : StackLang.HolProg 64 :=
.seq AllocBody370_97 AllocBody370_100

def AllocBody370_102 : StackLang.HolProg 64 :=
.seq AllocBody370_96 AllocBody370_101

def AllocBody370_103 : StackLang.HolProg 64 :=
.seq AllocBody370_95 AllocBody370_102

def AllocBody370_104 : StackLang.HolProg 64 :=
.seq AllocBody370_94 AllocBody370_103

def AllocBody370_105 : StackLang.HolProg 64 :=
.seq AllocBody370_93 AllocBody370_104

def AllocBody370_106 : StackLang.HolProg 64 :=
.seq AllocBody370_92 AllocBody370_105

def AllocBody370_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody370_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody370_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody370_110 : StackLang.HolProg 64 :=
.seq AllocBody370_108 AllocBody370_109

def AllocBody370_111 : StackLang.HolProg 64 :=
.seq AllocBody370_107 AllocBody370_110

def AllocBody370_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody370_113 : StackLang.HolProg 64 :=
.seq AllocBody370_111 AllocBody370_112

def AllocBody370_114 : StackLang.HolProg 64 :=
.call (some (AllocBody370_106, 0, 370, 4)) (Sum.inl 367) (some (AllocBody370_113, 370, 5))

def AllocBody370_115 : StackLang.HolProg 64 :=
.seq AllocBody370_91 AllocBody370_114

def AllocBody370_116 : StackLang.HolProg 64 :=
.seq AllocBody370_90 AllocBody370_115

def AllocBody370_117 : StackLang.HolProg 64 :=
.seq AllocBody370_89 AllocBody370_116

def AllocBody370_118 : StackLang.HolProg 64 :=
.seq AllocBody370_70 AllocBody370_117

def AllocBody370_119 : StackLang.HolProg 64 :=
.seq AllocBody370_67 AllocBody370_118

def AllocBody370_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody370_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody370_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1087#64)

def AllocBody370_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_125 : StackLang.HolProg 64 :=
.seq AllocBody370_123 AllocBody370_124

def AllocBody370_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody370_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody370_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 7

def AllocBody370_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody370_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody370_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody370_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody370_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_136 : StackLang.HolProg 64 :=
.seq AllocBody370_134 AllocBody370_135

def AllocBody370_137 : StackLang.HolProg 64 :=
.seq AllocBody370_133 AllocBody370_136

def AllocBody370_138 : StackLang.HolProg 64 :=
.seq AllocBody370_132 AllocBody370_137

def AllocBody370_139 : StackLang.HolProg 64 :=
.seq AllocBody370_131 AllocBody370_138

def AllocBody370_140 : StackLang.HolProg 64 :=
.seq AllocBody370_130 AllocBody370_139

def AllocBody370_141 : StackLang.HolProg 64 :=
.seq AllocBody370_129 AllocBody370_140

def AllocBody370_142 : StackLang.HolProg 64 :=
.seq AllocBody370_128 AllocBody370_141

def AllocBody370_143 : StackLang.HolProg 64 :=
.seq AllocBody370_127 AllocBody370_142

def AllocBody370_144 : StackLang.HolProg 64 :=
.seq AllocBody370_126 AllocBody370_143

def AllocBody370_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody370_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody370_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody370_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody370_152 : StackLang.HolProg 64 :=
.seq AllocBody370_150 AllocBody370_151

def AllocBody370_153 : StackLang.HolProg 64 :=
.seq AllocBody370_149 AllocBody370_152

def AllocBody370_154 : StackLang.HolProg 64 :=
.seq AllocBody370_148 AllocBody370_153

def AllocBody370_155 : StackLang.HolProg 64 :=
.seq AllocBody370_147 AllocBody370_154

def AllocBody370_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody370_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody370_158 : StackLang.HolProg 64 :=
.seq AllocBody370_156 AllocBody370_157

def AllocBody370_159 : StackLang.HolProg 64 :=
.call (some (AllocBody370_155, 0, 370, 6)) (Sum.inl 158) (some (AllocBody370_158, 370, 7))

def AllocBody370_160 : StackLang.HolProg 64 :=
.seq AllocBody370_146 AllocBody370_159

def AllocBody370_161 : StackLang.HolProg 64 :=
.seq AllocBody370_145 AllocBody370_160

def AllocBody370_162 : StackLang.HolProg 64 :=
.seq AllocBody370_144 AllocBody370_161

def AllocBody370_163 : StackLang.HolProg 64 :=
.seq AllocBody370_125 AllocBody370_162

def AllocBody370_164 : StackLang.HolProg 64 :=
.seq AllocBody370_122 AllocBody370_163

def AllocBody370_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody370_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody370_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1088#64)

def AllocBody370_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_170 : StackLang.HolProg 64 :=
.seq AllocBody370_168 AllocBody370_169

def AllocBody370_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody370_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody370_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody370_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 370 9

def AllocBody370_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody370_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody370_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody370_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody370_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_181 : StackLang.HolProg 64 :=
.seq AllocBody370_179 AllocBody370_180

def AllocBody370_182 : StackLang.HolProg 64 :=
.seq AllocBody370_178 AllocBody370_181

def AllocBody370_183 : StackLang.HolProg 64 :=
.seq AllocBody370_177 AllocBody370_182

def AllocBody370_184 : StackLang.HolProg 64 :=
.seq AllocBody370_176 AllocBody370_183

def AllocBody370_185 : StackLang.HolProg 64 :=
.seq AllocBody370_175 AllocBody370_184

def AllocBody370_186 : StackLang.HolProg 64 :=
.seq AllocBody370_174 AllocBody370_185

def AllocBody370_187 : StackLang.HolProg 64 :=
.seq AllocBody370_173 AllocBody370_186

def AllocBody370_188 : StackLang.HolProg 64 :=
.seq AllocBody370_172 AllocBody370_187

def AllocBody370_189 : StackLang.HolProg 64 :=
.seq AllocBody370_171 AllocBody370_188

def AllocBody370_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody370_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody370_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody370_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody370_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody370_197 : StackLang.HolProg 64 :=
.seq AllocBody370_195 AllocBody370_196

def AllocBody370_198 : StackLang.HolProg 64 :=
.seq AllocBody370_194 AllocBody370_197

def AllocBody370_199 : StackLang.HolProg 64 :=
.seq AllocBody370_193 AllocBody370_198

def AllocBody370_200 : StackLang.HolProg 64 :=
.seq AllocBody370_192 AllocBody370_199

def AllocBody370_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody370_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody370_203 : StackLang.HolProg 64 :=
.seq AllocBody370_201 AllocBody370_202

def AllocBody370_204 : StackLang.HolProg 64 :=
.call (some (AllocBody370_200, 0, 370, 8)) (Sum.inl 70) (some (AllocBody370_203, 370, 9))

def AllocBody370_205 : StackLang.HolProg 64 :=
.seq AllocBody370_191 AllocBody370_204

def AllocBody370_206 : StackLang.HolProg 64 :=
.seq AllocBody370_190 AllocBody370_205

def AllocBody370_207 : StackLang.HolProg 64 :=
.seq AllocBody370_189 AllocBody370_206

def AllocBody370_208 : StackLang.HolProg 64 :=
.seq AllocBody370_170 AllocBody370_207

def AllocBody370_209 : StackLang.HolProg 64 :=
.seq AllocBody370_167 AllocBody370_208

def AllocBody370_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody370_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody370_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody370_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody370_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody370_215 : StackLang.HolProg 64 :=
.seq AllocBody370_213 AllocBody370_214

def AllocBody370_216 : StackLang.HolProg 64 :=
.seq AllocBody370_212 AllocBody370_215

def AllocBody370_217 : StackLang.HolProg 64 :=
.seq AllocBody370_211 AllocBody370_216

def AllocBody370_218 : StackLang.HolProg 64 :=
.seq AllocBody370_210 AllocBody370_217

def AllocBody370_219 : StackLang.HolProg 64 :=
.seq AllocBody370_209 AllocBody370_218

def AllocBody370_220 : StackLang.HolProg 64 :=
.seq AllocBody370_166 AllocBody370_219

def AllocBody370_221 : StackLang.HolProg 64 :=
.seq AllocBody370_165 AllocBody370_220

def AllocBody370_222 : StackLang.HolProg 64 :=
.seq AllocBody370_164 AllocBody370_221

def AllocBody370_223 : StackLang.HolProg 64 :=
.seq AllocBody370_121 AllocBody370_222

def AllocBody370_224 : StackLang.HolProg 64 :=
.seq AllocBody370_120 AllocBody370_223

def AllocBody370_225 : StackLang.HolProg 64 :=
.seq AllocBody370_119 AllocBody370_224

def AllocBody370_226 : StackLang.HolProg 64 :=
.seq AllocBody370_66 AllocBody370_225

def AllocBody370_227 : StackLang.HolProg 64 :=
.seq AllocBody370_63 AllocBody370_226

def AllocBody370_228 : StackLang.HolProg 64 :=
.seq AllocBody370_62 AllocBody370_227

def AllocBody370_229 : StackLang.HolProg 64 :=
.seq AllocBody370_9 AllocBody370_228

def AllocBody370_230 : StackLang.HolProg 64 :=
.seq AllocBody370_0 AllocBody370_229

def Alloc370 : Nat × StackLang.HolProg 64 := (370, AllocBody370_230)
theorem Alloc370_eq : StackAlloc.progComp (370, raw370) = Alloc370 := by
  kernel_rfl
#print axioms Alloc370_eq
end InitECandidate.Proofs.BackendStages
