import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw851
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody851_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody851_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody851_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody851_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody851_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody851_5 : StackLang.HolProg 64 :=
.seq AllocBody851_3 AllocBody851_4

def AllocBody851_6 : StackLang.HolProg 64 :=
.seq AllocBody851_2 AllocBody851_5

def AllocBody851_7 : StackLang.HolProg 64 :=
.seq AllocBody851_1 AllocBody851_6

def AllocBody851_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4307#64)

def AllocBody851_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_11 : StackLang.HolProg 64 :=
.seq AllocBody851_9 AllocBody851_10

def AllocBody851_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody851_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody851_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 3

def AllocBody851_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody851_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody851_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody851_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody851_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_22 : StackLang.HolProg 64 :=
.seq AllocBody851_20 AllocBody851_21

def AllocBody851_23 : StackLang.HolProg 64 :=
.seq AllocBody851_19 AllocBody851_22

def AllocBody851_24 : StackLang.HolProg 64 :=
.seq AllocBody851_18 AllocBody851_23

def AllocBody851_25 : StackLang.HolProg 64 :=
.seq AllocBody851_17 AllocBody851_24

def AllocBody851_26 : StackLang.HolProg 64 :=
.seq AllocBody851_16 AllocBody851_25

def AllocBody851_27 : StackLang.HolProg 64 :=
.seq AllocBody851_15 AllocBody851_26

def AllocBody851_28 : StackLang.HolProg 64 :=
.seq AllocBody851_14 AllocBody851_27

def AllocBody851_29 : StackLang.HolProg 64 :=
.seq AllocBody851_13 AllocBody851_28

def AllocBody851_30 : StackLang.HolProg 64 :=
.seq AllocBody851_12 AllocBody851_29

def AllocBody851_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody851_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody851_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody851_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody851_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody851_39 : StackLang.HolProg 64 :=
.seq AllocBody851_37 AllocBody851_38

def AllocBody851_40 : StackLang.HolProg 64 :=
.seq AllocBody851_36 AllocBody851_39

def AllocBody851_41 : StackLang.HolProg 64 :=
.seq AllocBody851_35 AllocBody851_40

def AllocBody851_42 : StackLang.HolProg 64 :=
.seq AllocBody851_34 AllocBody851_41

def AllocBody851_43 : StackLang.HolProg 64 :=
.seq AllocBody851_33 AllocBody851_42

def AllocBody851_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody851_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody851_46 : StackLang.HolProg 64 :=
.seq AllocBody851_44 AllocBody851_45

def AllocBody851_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody851_48 : StackLang.HolProg 64 :=
.seq AllocBody851_46 AllocBody851_47

def AllocBody851_49 : StackLang.HolProg 64 :=
.call (some (AllocBody851_43, 0, 851, 2)) (Sum.inl 88) (some (AllocBody851_48, 851, 3))

def AllocBody851_50 : StackLang.HolProg 64 :=
.seq AllocBody851_32 AllocBody851_49

def AllocBody851_51 : StackLang.HolProg 64 :=
.seq AllocBody851_31 AllocBody851_50

def AllocBody851_52 : StackLang.HolProg 64 :=
.seq AllocBody851_30 AllocBody851_51

def AllocBody851_53 : StackLang.HolProg 64 :=
.seq AllocBody851_11 AllocBody851_52

def AllocBody851_54 : StackLang.HolProg 64 :=
.seq AllocBody851_8 AllocBody851_53

def AllocBody851_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody851_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody851_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody851_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4308#64)

def AllocBody851_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_62 : StackLang.HolProg 64 :=
.seq AllocBody851_60 AllocBody851_61

def AllocBody851_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody851_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody851_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 5

def AllocBody851_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody851_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody851_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody851_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody851_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_73 : StackLang.HolProg 64 :=
.seq AllocBody851_71 AllocBody851_72

def AllocBody851_74 : StackLang.HolProg 64 :=
.seq AllocBody851_70 AllocBody851_73

def AllocBody851_75 : StackLang.HolProg 64 :=
.seq AllocBody851_69 AllocBody851_74

def AllocBody851_76 : StackLang.HolProg 64 :=
.seq AllocBody851_68 AllocBody851_75

def AllocBody851_77 : StackLang.HolProg 64 :=
.seq AllocBody851_67 AllocBody851_76

def AllocBody851_78 : StackLang.HolProg 64 :=
.seq AllocBody851_66 AllocBody851_77

def AllocBody851_79 : StackLang.HolProg 64 :=
.seq AllocBody851_65 AllocBody851_78

def AllocBody851_80 : StackLang.HolProg 64 :=
.seq AllocBody851_64 AllocBody851_79

def AllocBody851_81 : StackLang.HolProg 64 :=
.seq AllocBody851_63 AllocBody851_80

def AllocBody851_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody851_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody851_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody851_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody851_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody851_90 : StackLang.HolProg 64 :=
.seq AllocBody851_88 AllocBody851_89

def AllocBody851_91 : StackLang.HolProg 64 :=
.seq AllocBody851_87 AllocBody851_90

def AllocBody851_92 : StackLang.HolProg 64 :=
.seq AllocBody851_86 AllocBody851_91

def AllocBody851_93 : StackLang.HolProg 64 :=
.seq AllocBody851_85 AllocBody851_92

def AllocBody851_94 : StackLang.HolProg 64 :=
.seq AllocBody851_84 AllocBody851_93

def AllocBody851_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody851_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody851_97 : StackLang.HolProg 64 :=
.seq AllocBody851_95 AllocBody851_96

def AllocBody851_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody851_99 : StackLang.HolProg 64 :=
.seq AllocBody851_97 AllocBody851_98

def AllocBody851_100 : StackLang.HolProg 64 :=
.call (some (AllocBody851_94, 0, 851, 4)) (Sum.inl 89) (some (AllocBody851_99, 851, 5))

def AllocBody851_101 : StackLang.HolProg 64 :=
.seq AllocBody851_83 AllocBody851_100

def AllocBody851_102 : StackLang.HolProg 64 :=
.seq AllocBody851_82 AllocBody851_101

def AllocBody851_103 : StackLang.HolProg 64 :=
.seq AllocBody851_81 AllocBody851_102

def AllocBody851_104 : StackLang.HolProg 64 :=
.seq AllocBody851_62 AllocBody851_103

def AllocBody851_105 : StackLang.HolProg 64 :=
.seq AllocBody851_59 AllocBody851_104

def AllocBody851_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody851_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody851_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4309#64)

def AllocBody851_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_113 : StackLang.HolProg 64 :=
.seq AllocBody851_111 AllocBody851_112

def AllocBody851_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody851_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody851_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody851_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 7

def AllocBody851_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody851_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody851_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody851_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody851_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_124 : StackLang.HolProg 64 :=
.seq AllocBody851_122 AllocBody851_123

def AllocBody851_125 : StackLang.HolProg 64 :=
.seq AllocBody851_121 AllocBody851_124

def AllocBody851_126 : StackLang.HolProg 64 :=
.seq AllocBody851_120 AllocBody851_125

def AllocBody851_127 : StackLang.HolProg 64 :=
.seq AllocBody851_119 AllocBody851_126

def AllocBody851_128 : StackLang.HolProg 64 :=
.seq AllocBody851_118 AllocBody851_127

def AllocBody851_129 : StackLang.HolProg 64 :=
.seq AllocBody851_117 AllocBody851_128

def AllocBody851_130 : StackLang.HolProg 64 :=
.seq AllocBody851_116 AllocBody851_129

def AllocBody851_131 : StackLang.HolProg 64 :=
.seq AllocBody851_115 AllocBody851_130

def AllocBody851_132 : StackLang.HolProg 64 :=
.seq AllocBody851_114 AllocBody851_131

def AllocBody851_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody851_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody851_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody851_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody851_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody851_140 : StackLang.HolProg 64 :=
.seq AllocBody851_138 AllocBody851_139

def AllocBody851_141 : StackLang.HolProg 64 :=
.seq AllocBody851_137 AllocBody851_140

def AllocBody851_142 : StackLang.HolProg 64 :=
.seq AllocBody851_136 AllocBody851_141

def AllocBody851_143 : StackLang.HolProg 64 :=
.seq AllocBody851_135 AllocBody851_142

def AllocBody851_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody851_145 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody851_146 : StackLang.HolProg 64 :=
.seq AllocBody851_144 AllocBody851_145

def AllocBody851_147 : StackLang.HolProg 64 :=
.call (some (AllocBody851_143, 0, 851, 6)) (Sum.inl 89) (some (AllocBody851_146, 851, 7))

def AllocBody851_148 : StackLang.HolProg 64 :=
.seq AllocBody851_134 AllocBody851_147

def AllocBody851_149 : StackLang.HolProg 64 :=
.seq AllocBody851_133 AllocBody851_148

def AllocBody851_150 : StackLang.HolProg 64 :=
.seq AllocBody851_132 AllocBody851_149

def AllocBody851_151 : StackLang.HolProg 64 :=
.seq AllocBody851_113 AllocBody851_150

def AllocBody851_152 : StackLang.HolProg 64 :=
.seq AllocBody851_110 AllocBody851_151

def AllocBody851_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody851_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody851_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody851_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody851_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody851_158 : StackLang.HolProg 64 :=
.seq AllocBody851_156 AllocBody851_157

def AllocBody851_159 : StackLang.HolProg 64 :=
.seq AllocBody851_155 AllocBody851_158

def AllocBody851_160 : StackLang.HolProg 64 :=
.seq AllocBody851_154 AllocBody851_159

def AllocBody851_161 : StackLang.HolProg 64 :=
.seq AllocBody851_153 AllocBody851_160

def AllocBody851_162 : StackLang.HolProg 64 :=
.seq AllocBody851_152 AllocBody851_161

def AllocBody851_163 : StackLang.HolProg 64 :=
.seq AllocBody851_109 AllocBody851_162

def AllocBody851_164 : StackLang.HolProg 64 :=
.seq AllocBody851_108 AllocBody851_163

def AllocBody851_165 : StackLang.HolProg 64 :=
.seq AllocBody851_107 AllocBody851_164

def AllocBody851_166 : StackLang.HolProg 64 :=
.seq AllocBody851_106 AllocBody851_165

def AllocBody851_167 : StackLang.HolProg 64 :=
.seq AllocBody851_105 AllocBody851_166

def AllocBody851_168 : StackLang.HolProg 64 :=
.seq AllocBody851_58 AllocBody851_167

def AllocBody851_169 : StackLang.HolProg 64 :=
.seq AllocBody851_57 AllocBody851_168

def AllocBody851_170 : StackLang.HolProg 64 :=
.seq AllocBody851_56 AllocBody851_169

def AllocBody851_171 : StackLang.HolProg 64 :=
.seq AllocBody851_55 AllocBody851_170

def AllocBody851_172 : StackLang.HolProg 64 :=
.seq AllocBody851_54 AllocBody851_171

def AllocBody851_173 : StackLang.HolProg 64 :=
.seq AllocBody851_7 AllocBody851_172

def AllocBody851_174 : StackLang.HolProg 64 :=
.seq AllocBody851_0 AllocBody851_173

def Alloc851 : Nat × StackLang.HolProg 64 := (851, AllocBody851_174)
theorem Alloc851_eq : StackAlloc.progComp (851, raw851) = Alloc851 := by
  kernel_rfl
#print axioms Alloc851_eq
end InitECandidate.Proofs.BackendStages
