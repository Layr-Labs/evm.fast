import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw239
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody239_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody239_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody239_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody239_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody239_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody239_5 : StackLang.HolProg 64 :=
.seq AllocBody239_3 AllocBody239_4

def AllocBody239_6 : StackLang.HolProg 64 :=
.seq AllocBody239_2 AllocBody239_5

def AllocBody239_7 : StackLang.HolProg 64 :=
.seq AllocBody239_1 AllocBody239_6

def AllocBody239_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 457#64)

def AllocBody239_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_11 : StackLang.HolProg 64 :=
.seq AllocBody239_9 AllocBody239_10

def AllocBody239_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody239_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody239_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 3

def AllocBody239_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody239_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody239_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody239_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody239_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_22 : StackLang.HolProg 64 :=
.seq AllocBody239_20 AllocBody239_21

def AllocBody239_23 : StackLang.HolProg 64 :=
.seq AllocBody239_19 AllocBody239_22

def AllocBody239_24 : StackLang.HolProg 64 :=
.seq AllocBody239_18 AllocBody239_23

def AllocBody239_25 : StackLang.HolProg 64 :=
.seq AllocBody239_17 AllocBody239_24

def AllocBody239_26 : StackLang.HolProg 64 :=
.seq AllocBody239_16 AllocBody239_25

def AllocBody239_27 : StackLang.HolProg 64 :=
.seq AllocBody239_15 AllocBody239_26

def AllocBody239_28 : StackLang.HolProg 64 :=
.seq AllocBody239_14 AllocBody239_27

def AllocBody239_29 : StackLang.HolProg 64 :=
.seq AllocBody239_13 AllocBody239_28

def AllocBody239_30 : StackLang.HolProg 64 :=
.seq AllocBody239_12 AllocBody239_29

def AllocBody239_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody239_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody239_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody239_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody239_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody239_40 : StackLang.HolProg 64 :=
.seq AllocBody239_38 AllocBody239_39

def AllocBody239_41 : StackLang.HolProg 64 :=
.seq AllocBody239_37 AllocBody239_40

def AllocBody239_42 : StackLang.HolProg 64 :=
.seq AllocBody239_36 AllocBody239_41

def AllocBody239_43 : StackLang.HolProg 64 :=
.seq AllocBody239_35 AllocBody239_42

def AllocBody239_44 : StackLang.HolProg 64 :=
.seq AllocBody239_34 AllocBody239_43

def AllocBody239_45 : StackLang.HolProg 64 :=
.seq AllocBody239_33 AllocBody239_44

def AllocBody239_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody239_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody239_48 : StackLang.HolProg 64 :=
.seq AllocBody239_46 AllocBody239_47

def AllocBody239_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody239_50 : StackLang.HolProg 64 :=
.seq AllocBody239_48 AllocBody239_49

def AllocBody239_51 : StackLang.HolProg 64 :=
.call (some (AllocBody239_45, 0, 239, 2)) (Sum.inl 69) (some (AllocBody239_50, 239, 3))

def AllocBody239_52 : StackLang.HolProg 64 :=
.seq AllocBody239_32 AllocBody239_51

def AllocBody239_53 : StackLang.HolProg 64 :=
.seq AllocBody239_31 AllocBody239_52

def AllocBody239_54 : StackLang.HolProg 64 :=
.seq AllocBody239_30 AllocBody239_53

def AllocBody239_55 : StackLang.HolProg 64 :=
.seq AllocBody239_11 AllocBody239_54

def AllocBody239_56 : StackLang.HolProg 64 :=
.seq AllocBody239_8 AllocBody239_55

def AllocBody239_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody239_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody239_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody239_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody239_61 : StackLang.HolProg 64 :=
.seq AllocBody239_59 AllocBody239_60

def AllocBody239_62 : StackLang.HolProg 64 :=
.seq AllocBody239_58 AllocBody239_61

def AllocBody239_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 458#64)

def AllocBody239_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_66 : StackLang.HolProg 64 :=
.seq AllocBody239_64 AllocBody239_65

def AllocBody239_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody239_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody239_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 5

def AllocBody239_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody239_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody239_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody239_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody239_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_77 : StackLang.HolProg 64 :=
.seq AllocBody239_75 AllocBody239_76

def AllocBody239_78 : StackLang.HolProg 64 :=
.seq AllocBody239_74 AllocBody239_77

def AllocBody239_79 : StackLang.HolProg 64 :=
.seq AllocBody239_73 AllocBody239_78

def AllocBody239_80 : StackLang.HolProg 64 :=
.seq AllocBody239_72 AllocBody239_79

def AllocBody239_81 : StackLang.HolProg 64 :=
.seq AllocBody239_71 AllocBody239_80

def AllocBody239_82 : StackLang.HolProg 64 :=
.seq AllocBody239_70 AllocBody239_81

def AllocBody239_83 : StackLang.HolProg 64 :=
.seq AllocBody239_69 AllocBody239_82

def AllocBody239_84 : StackLang.HolProg 64 :=
.seq AllocBody239_68 AllocBody239_83

def AllocBody239_85 : StackLang.HolProg 64 :=
.seq AllocBody239_67 AllocBody239_84

def AllocBody239_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody239_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody239_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody239_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody239_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody239_96 : StackLang.HolProg 64 :=
.seq AllocBody239_94 AllocBody239_95

def AllocBody239_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody239_98 : StackLang.HolProg 64 :=
.seq AllocBody239_96 AllocBody239_97

def AllocBody239_99 : StackLang.HolProg 64 :=
.seq AllocBody239_93 AllocBody239_98

def AllocBody239_100 : StackLang.HolProg 64 :=
.seq AllocBody239_92 AllocBody239_99

def AllocBody239_101 : StackLang.HolProg 64 :=
.seq AllocBody239_91 AllocBody239_100

def AllocBody239_102 : StackLang.HolProg 64 :=
.seq AllocBody239_90 AllocBody239_101

def AllocBody239_103 : StackLang.HolProg 64 :=
.seq AllocBody239_89 AllocBody239_102

def AllocBody239_104 : StackLang.HolProg 64 :=
.seq AllocBody239_88 AllocBody239_103

def AllocBody239_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody239_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody239_108 : StackLang.HolProg 64 :=
.seq AllocBody239_106 AllocBody239_107

def AllocBody239_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody239_110 : StackLang.HolProg 64 :=
.seq AllocBody239_108 AllocBody239_109

def AllocBody239_111 : StackLang.HolProg 64 :=
.seq AllocBody239_105 AllocBody239_110

def AllocBody239_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody239_113 : StackLang.HolProg 64 :=
.seq AllocBody239_111 AllocBody239_112

def AllocBody239_114 : StackLang.HolProg 64 :=
.call (some (AllocBody239_104, 0, 239, 4)) (Sum.inl 241) (some (AllocBody239_113, 239, 5))

def AllocBody239_115 : StackLang.HolProg 64 :=
.seq AllocBody239_87 AllocBody239_114

def AllocBody239_116 : StackLang.HolProg 64 :=
.seq AllocBody239_86 AllocBody239_115

def AllocBody239_117 : StackLang.HolProg 64 :=
.seq AllocBody239_85 AllocBody239_116

def AllocBody239_118 : StackLang.HolProg 64 :=
.seq AllocBody239_66 AllocBody239_117

def AllocBody239_119 : StackLang.HolProg 64 :=
.seq AllocBody239_63 AllocBody239_118

def AllocBody239_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody239_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody239_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 459#64)

def AllocBody239_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_125 : StackLang.HolProg 64 :=
.seq AllocBody239_123 AllocBody239_124

def AllocBody239_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody239_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody239_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 7

def AllocBody239_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody239_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody239_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody239_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody239_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_136 : StackLang.HolProg 64 :=
.seq AllocBody239_134 AllocBody239_135

def AllocBody239_137 : StackLang.HolProg 64 :=
.seq AllocBody239_133 AllocBody239_136

def AllocBody239_138 : StackLang.HolProg 64 :=
.seq AllocBody239_132 AllocBody239_137

def AllocBody239_139 : StackLang.HolProg 64 :=
.seq AllocBody239_131 AllocBody239_138

def AllocBody239_140 : StackLang.HolProg 64 :=
.seq AllocBody239_130 AllocBody239_139

def AllocBody239_141 : StackLang.HolProg 64 :=
.seq AllocBody239_129 AllocBody239_140

def AllocBody239_142 : StackLang.HolProg 64 :=
.seq AllocBody239_128 AllocBody239_141

def AllocBody239_143 : StackLang.HolProg 64 :=
.seq AllocBody239_127 AllocBody239_142

def AllocBody239_144 : StackLang.HolProg 64 :=
.seq AllocBody239_126 AllocBody239_143

def AllocBody239_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody239_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody239_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody239_152 : StackLang.HolProg 64 :=
.seq AllocBody239_150 AllocBody239_151

def AllocBody239_153 : StackLang.HolProg 64 :=
.seq AllocBody239_149 AllocBody239_152

def AllocBody239_154 : StackLang.HolProg 64 :=
.seq AllocBody239_148 AllocBody239_153

def AllocBody239_155 : StackLang.HolProg 64 :=
.seq AllocBody239_147 AllocBody239_154

def AllocBody239_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody239_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody239_158 : StackLang.HolProg 64 :=
.seq AllocBody239_156 AllocBody239_157

def AllocBody239_159 : StackLang.HolProg 64 :=
.call (some (AllocBody239_155, 0, 239, 6)) (Sum.inl 238) (some (AllocBody239_158, 239, 7))

def AllocBody239_160 : StackLang.HolProg 64 :=
.seq AllocBody239_146 AllocBody239_159

def AllocBody239_161 : StackLang.HolProg 64 :=
.seq AllocBody239_145 AllocBody239_160

def AllocBody239_162 : StackLang.HolProg 64 :=
.seq AllocBody239_144 AllocBody239_161

def AllocBody239_163 : StackLang.HolProg 64 :=
.seq AllocBody239_125 AllocBody239_162

def AllocBody239_164 : StackLang.HolProg 64 :=
.seq AllocBody239_122 AllocBody239_163

def AllocBody239_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody239_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody239_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 460#64)

def AllocBody239_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_170 : StackLang.HolProg 64 :=
.seq AllocBody239_168 AllocBody239_169

def AllocBody239_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody239_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody239_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody239_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 239 9

def AllocBody239_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody239_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody239_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody239_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody239_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_181 : StackLang.HolProg 64 :=
.seq AllocBody239_179 AllocBody239_180

def AllocBody239_182 : StackLang.HolProg 64 :=
.seq AllocBody239_178 AllocBody239_181

def AllocBody239_183 : StackLang.HolProg 64 :=
.seq AllocBody239_177 AllocBody239_182

def AllocBody239_184 : StackLang.HolProg 64 :=
.seq AllocBody239_176 AllocBody239_183

def AllocBody239_185 : StackLang.HolProg 64 :=
.seq AllocBody239_175 AllocBody239_184

def AllocBody239_186 : StackLang.HolProg 64 :=
.seq AllocBody239_174 AllocBody239_185

def AllocBody239_187 : StackLang.HolProg 64 :=
.seq AllocBody239_173 AllocBody239_186

def AllocBody239_188 : StackLang.HolProg 64 :=
.seq AllocBody239_172 AllocBody239_187

def AllocBody239_189 : StackLang.HolProg 64 :=
.seq AllocBody239_171 AllocBody239_188

def AllocBody239_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody239_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody239_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody239_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody239_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody239_197 : StackLang.HolProg 64 :=
.seq AllocBody239_195 AllocBody239_196

def AllocBody239_198 : StackLang.HolProg 64 :=
.seq AllocBody239_194 AllocBody239_197

def AllocBody239_199 : StackLang.HolProg 64 :=
.seq AllocBody239_193 AllocBody239_198

def AllocBody239_200 : StackLang.HolProg 64 :=
.seq AllocBody239_192 AllocBody239_199

def AllocBody239_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody239_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody239_203 : StackLang.HolProg 64 :=
.seq AllocBody239_201 AllocBody239_202

def AllocBody239_204 : StackLang.HolProg 64 :=
.call (some (AllocBody239_200, 0, 239, 8)) (Sum.inl 70) (some (AllocBody239_203, 239, 9))

def AllocBody239_205 : StackLang.HolProg 64 :=
.seq AllocBody239_191 AllocBody239_204

def AllocBody239_206 : StackLang.HolProg 64 :=
.seq AllocBody239_190 AllocBody239_205

def AllocBody239_207 : StackLang.HolProg 64 :=
.seq AllocBody239_189 AllocBody239_206

def AllocBody239_208 : StackLang.HolProg 64 :=
.seq AllocBody239_170 AllocBody239_207

def AllocBody239_209 : StackLang.HolProg 64 :=
.seq AllocBody239_167 AllocBody239_208

def AllocBody239_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody239_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody239_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody239_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody239_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody239_215 : StackLang.HolProg 64 :=
.seq AllocBody239_213 AllocBody239_214

def AllocBody239_216 : StackLang.HolProg 64 :=
.seq AllocBody239_212 AllocBody239_215

def AllocBody239_217 : StackLang.HolProg 64 :=
.seq AllocBody239_211 AllocBody239_216

def AllocBody239_218 : StackLang.HolProg 64 :=
.seq AllocBody239_210 AllocBody239_217

def AllocBody239_219 : StackLang.HolProg 64 :=
.seq AllocBody239_209 AllocBody239_218

def AllocBody239_220 : StackLang.HolProg 64 :=
.seq AllocBody239_166 AllocBody239_219

def AllocBody239_221 : StackLang.HolProg 64 :=
.seq AllocBody239_165 AllocBody239_220

def AllocBody239_222 : StackLang.HolProg 64 :=
.seq AllocBody239_164 AllocBody239_221

def AllocBody239_223 : StackLang.HolProg 64 :=
.seq AllocBody239_121 AllocBody239_222

def AllocBody239_224 : StackLang.HolProg 64 :=
.seq AllocBody239_120 AllocBody239_223

def AllocBody239_225 : StackLang.HolProg 64 :=
.seq AllocBody239_119 AllocBody239_224

def AllocBody239_226 : StackLang.HolProg 64 :=
.seq AllocBody239_62 AllocBody239_225

def AllocBody239_227 : StackLang.HolProg 64 :=
.seq AllocBody239_57 AllocBody239_226

def AllocBody239_228 : StackLang.HolProg 64 :=
.seq AllocBody239_56 AllocBody239_227

def AllocBody239_229 : StackLang.HolProg 64 :=
.seq AllocBody239_7 AllocBody239_228

def AllocBody239_230 : StackLang.HolProg 64 :=
.seq AllocBody239_0 AllocBody239_229

def Alloc239 : Nat × StackLang.HolProg 64 := (239, AllocBody239_230)
theorem Alloc239_eq : StackAlloc.progComp (239, raw239) = Alloc239 := by
  kernel_rfl
#print axioms Alloc239_eq
end InitECandidate.Proofs.BackendStages
