import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw357
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody357_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody357_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody357_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody357_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody357_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody357_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody357_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody357_7 : StackLang.HolProg 64 :=
.seq AllocBody357_5 AllocBody357_6

def AllocBody357_8 : StackLang.HolProg 64 :=
.seq AllocBody357_4 AllocBody357_7

def AllocBody357_9 : StackLang.HolProg 64 :=
.seq AllocBody357_3 AllocBody357_8

def AllocBody357_10 : StackLang.HolProg 64 :=
.seq AllocBody357_2 AllocBody357_9

def AllocBody357_11 : StackLang.HolProg 64 :=
.seq AllocBody357_1 AllocBody357_10

def AllocBody357_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1027#64)

def AllocBody357_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_15 : StackLang.HolProg 64 :=
.seq AllocBody357_13 AllocBody357_14

def AllocBody357_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody357_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody357_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 3

def AllocBody357_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody357_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody357_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody357_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody357_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_26 : StackLang.HolProg 64 :=
.seq AllocBody357_24 AllocBody357_25

def AllocBody357_27 : StackLang.HolProg 64 :=
.seq AllocBody357_23 AllocBody357_26

def AllocBody357_28 : StackLang.HolProg 64 :=
.seq AllocBody357_22 AllocBody357_27

def AllocBody357_29 : StackLang.HolProg 64 :=
.seq AllocBody357_21 AllocBody357_28

def AllocBody357_30 : StackLang.HolProg 64 :=
.seq AllocBody357_20 AllocBody357_29

def AllocBody357_31 : StackLang.HolProg 64 :=
.seq AllocBody357_19 AllocBody357_30

def AllocBody357_32 : StackLang.HolProg 64 :=
.seq AllocBody357_18 AllocBody357_31

def AllocBody357_33 : StackLang.HolProg 64 :=
.seq AllocBody357_17 AllocBody357_32

def AllocBody357_34 : StackLang.HolProg 64 :=
.seq AllocBody357_16 AllocBody357_33

def AllocBody357_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody357_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody357_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody357_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody357_42 : StackLang.HolProg 64 :=
.seq AllocBody357_40 AllocBody357_41

def AllocBody357_43 : StackLang.HolProg 64 :=
.seq AllocBody357_39 AllocBody357_42

def AllocBody357_44 : StackLang.HolProg 64 :=
.seq AllocBody357_38 AllocBody357_43

def AllocBody357_45 : StackLang.HolProg 64 :=
.seq AllocBody357_37 AllocBody357_44

def AllocBody357_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody357_48 : StackLang.HolProg 64 :=
.seq AllocBody357_46 AllocBody357_47

def AllocBody357_49 : StackLang.HolProg 64 :=
.call (some (AllocBody357_45, 0, 357, 2)) (Sum.inl 69) (some (AllocBody357_48, 357, 3))

def AllocBody357_50 : StackLang.HolProg 64 :=
.seq AllocBody357_36 AllocBody357_49

def AllocBody357_51 : StackLang.HolProg 64 :=
.seq AllocBody357_35 AllocBody357_50

def AllocBody357_52 : StackLang.HolProg 64 :=
.seq AllocBody357_34 AllocBody357_51

def AllocBody357_53 : StackLang.HolProg 64 :=
.seq AllocBody357_15 AllocBody357_52

def AllocBody357_54 : StackLang.HolProg 64 :=
.seq AllocBody357_12 AllocBody357_53

def AllocBody357_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody357_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody357_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody357_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1028#64)

def AllocBody357_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_61 : StackLang.HolProg 64 :=
.seq AllocBody357_59 AllocBody357_60

def AllocBody357_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody357_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody357_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 5

def AllocBody357_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody357_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody357_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody357_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody357_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_72 : StackLang.HolProg 64 :=
.seq AllocBody357_70 AllocBody357_71

def AllocBody357_73 : StackLang.HolProg 64 :=
.seq AllocBody357_69 AllocBody357_72

def AllocBody357_74 : StackLang.HolProg 64 :=
.seq AllocBody357_68 AllocBody357_73

def AllocBody357_75 : StackLang.HolProg 64 :=
.seq AllocBody357_67 AllocBody357_74

def AllocBody357_76 : StackLang.HolProg 64 :=
.seq AllocBody357_66 AllocBody357_75

def AllocBody357_77 : StackLang.HolProg 64 :=
.seq AllocBody357_65 AllocBody357_76

def AllocBody357_78 : StackLang.HolProg 64 :=
.seq AllocBody357_64 AllocBody357_77

def AllocBody357_79 : StackLang.HolProg 64 :=
.seq AllocBody357_63 AllocBody357_78

def AllocBody357_80 : StackLang.HolProg 64 :=
.seq AllocBody357_62 AllocBody357_79

def AllocBody357_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody357_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody357_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody357_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody357_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody357_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody357_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody357_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody357_92 : StackLang.HolProg 64 :=
.seq AllocBody357_90 AllocBody357_91

def AllocBody357_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody357_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody357_95 : StackLang.HolProg 64 :=
.seq AllocBody357_93 AllocBody357_94

def AllocBody357_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody357_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody357_98 : StackLang.HolProg 64 :=
.seq AllocBody357_96 AllocBody357_97

def AllocBody357_99 : StackLang.HolProg 64 :=
.seq AllocBody357_95 AllocBody357_98

def AllocBody357_100 : StackLang.HolProg 64 :=
.seq AllocBody357_92 AllocBody357_99

def AllocBody357_101 : StackLang.HolProg 64 :=
.seq AllocBody357_89 AllocBody357_100

def AllocBody357_102 : StackLang.HolProg 64 :=
.seq AllocBody357_88 AllocBody357_101

def AllocBody357_103 : StackLang.HolProg 64 :=
.seq AllocBody357_87 AllocBody357_102

def AllocBody357_104 : StackLang.HolProg 64 :=
.seq AllocBody357_86 AllocBody357_103

def AllocBody357_105 : StackLang.HolProg 64 :=
.seq AllocBody357_85 AllocBody357_104

def AllocBody357_106 : StackLang.HolProg 64 :=
.seq AllocBody357_84 AllocBody357_105

def AllocBody357_107 : StackLang.HolProg 64 :=
.seq AllocBody357_83 AllocBody357_106

def AllocBody357_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody357_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody357_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody357_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody357_112 : StackLang.HolProg 64 :=
.seq AllocBody357_110 AllocBody357_111

def AllocBody357_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody357_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody357_115 : StackLang.HolProg 64 :=
.seq AllocBody357_113 AllocBody357_114

def AllocBody357_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody357_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody357_118 : StackLang.HolProg 64 :=
.seq AllocBody357_116 AllocBody357_117

def AllocBody357_119 : StackLang.HolProg 64 :=
.seq AllocBody357_115 AllocBody357_118

def AllocBody357_120 : StackLang.HolProg 64 :=
.seq AllocBody357_112 AllocBody357_119

def AllocBody357_121 : StackLang.HolProg 64 :=
.seq AllocBody357_109 AllocBody357_120

def AllocBody357_122 : StackLang.HolProg 64 :=
.seq AllocBody357_108 AllocBody357_121

def AllocBody357_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody357_124 : StackLang.HolProg 64 :=
.seq AllocBody357_122 AllocBody357_123

def AllocBody357_125 : StackLang.HolProg 64 :=
.call (some (AllocBody357_107, 0, 357, 4)) (Sum.inl 68) (some (AllocBody357_124, 357, 5))

def AllocBody357_126 : StackLang.HolProg 64 :=
.seq AllocBody357_82 AllocBody357_125

def AllocBody357_127 : StackLang.HolProg 64 :=
.seq AllocBody357_81 AllocBody357_126

def AllocBody357_128 : StackLang.HolProg 64 :=
.seq AllocBody357_80 AllocBody357_127

def AllocBody357_129 : StackLang.HolProg 64 :=
.seq AllocBody357_61 AllocBody357_128

def AllocBody357_130 : StackLang.HolProg 64 :=
.seq AllocBody357_58 AllocBody357_129

def AllocBody357_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody357_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody357_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody357_134 : StackLang.HolProg 64 :=
.seq AllocBody357_132 AllocBody357_133

def AllocBody357_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1029#64)

def AllocBody357_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_138 : StackLang.HolProg 64 :=
.seq AllocBody357_136 AllocBody357_137

def AllocBody357_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody357_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody357_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 7

def AllocBody357_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody357_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody357_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody357_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody357_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_149 : StackLang.HolProg 64 :=
.seq AllocBody357_147 AllocBody357_148

def AllocBody357_150 : StackLang.HolProg 64 :=
.seq AllocBody357_146 AllocBody357_149

def AllocBody357_151 : StackLang.HolProg 64 :=
.seq AllocBody357_145 AllocBody357_150

def AllocBody357_152 : StackLang.HolProg 64 :=
.seq AllocBody357_144 AllocBody357_151

def AllocBody357_153 : StackLang.HolProg 64 :=
.seq AllocBody357_143 AllocBody357_152

def AllocBody357_154 : StackLang.HolProg 64 :=
.seq AllocBody357_142 AllocBody357_153

def AllocBody357_155 : StackLang.HolProg 64 :=
.seq AllocBody357_141 AllocBody357_154

def AllocBody357_156 : StackLang.HolProg 64 :=
.seq AllocBody357_140 AllocBody357_155

def AllocBody357_157 : StackLang.HolProg 64 :=
.seq AllocBody357_139 AllocBody357_156

def AllocBody357_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody357_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody357_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody357_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody357_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody357_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody357_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody357_168 : StackLang.HolProg 64 :=
.seq AllocBody357_166 AllocBody357_167

def AllocBody357_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody357_170 : StackLang.HolProg 64 :=
.seq AllocBody357_168 AllocBody357_169

def AllocBody357_171 : StackLang.HolProg 64 :=
.seq AllocBody357_165 AllocBody357_170

def AllocBody357_172 : StackLang.HolProg 64 :=
.seq AllocBody357_164 AllocBody357_171

def AllocBody357_173 : StackLang.HolProg 64 :=
.seq AllocBody357_163 AllocBody357_172

def AllocBody357_174 : StackLang.HolProg 64 :=
.seq AllocBody357_162 AllocBody357_173

def AllocBody357_175 : StackLang.HolProg 64 :=
.seq AllocBody357_161 AllocBody357_174

def AllocBody357_176 : StackLang.HolProg 64 :=
.seq AllocBody357_160 AllocBody357_175

def AllocBody357_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody357_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody357_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody357_180 : StackLang.HolProg 64 :=
.seq AllocBody357_178 AllocBody357_179

def AllocBody357_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody357_182 : StackLang.HolProg 64 :=
.seq AllocBody357_180 AllocBody357_181

def AllocBody357_183 : StackLang.HolProg 64 :=
.seq AllocBody357_177 AllocBody357_182

def AllocBody357_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody357_185 : StackLang.HolProg 64 :=
.seq AllocBody357_183 AllocBody357_184

def AllocBody357_186 : StackLang.HolProg 64 :=
.call (some (AllocBody357_176, 0, 357, 6)) (Sum.inl 148) (some (AllocBody357_185, 357, 7))

def AllocBody357_187 : StackLang.HolProg 64 :=
.seq AllocBody357_159 AllocBody357_186

def AllocBody357_188 : StackLang.HolProg 64 :=
.seq AllocBody357_158 AllocBody357_187

def AllocBody357_189 : StackLang.HolProg 64 :=
.seq AllocBody357_157 AllocBody357_188

def AllocBody357_190 : StackLang.HolProg 64 :=
.seq AllocBody357_138 AllocBody357_189

def AllocBody357_191 : StackLang.HolProg 64 :=
.seq AllocBody357_135 AllocBody357_190

def AllocBody357_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody357_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody357_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1030#64)

def AllocBody357_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_197 : StackLang.HolProg 64 :=
.seq AllocBody357_195 AllocBody357_196

def AllocBody357_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody357_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody357_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 9

def AllocBody357_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody357_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody357_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody357_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody357_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_208 : StackLang.HolProg 64 :=
.seq AllocBody357_206 AllocBody357_207

def AllocBody357_209 : StackLang.HolProg 64 :=
.seq AllocBody357_205 AllocBody357_208

def AllocBody357_210 : StackLang.HolProg 64 :=
.seq AllocBody357_204 AllocBody357_209

def AllocBody357_211 : StackLang.HolProg 64 :=
.seq AllocBody357_203 AllocBody357_210

def AllocBody357_212 : StackLang.HolProg 64 :=
.seq AllocBody357_202 AllocBody357_211

def AllocBody357_213 : StackLang.HolProg 64 :=
.seq AllocBody357_201 AllocBody357_212

def AllocBody357_214 : StackLang.HolProg 64 :=
.seq AllocBody357_200 AllocBody357_213

def AllocBody357_215 : StackLang.HolProg 64 :=
.seq AllocBody357_199 AllocBody357_214

def AllocBody357_216 : StackLang.HolProg 64 :=
.seq AllocBody357_198 AllocBody357_215

def AllocBody357_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody357_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody357_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody357_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody357_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody357_225 : StackLang.HolProg 64 :=
.seq AllocBody357_223 AllocBody357_224

def AllocBody357_226 : StackLang.HolProg 64 :=
.seq AllocBody357_222 AllocBody357_225

def AllocBody357_227 : StackLang.HolProg 64 :=
.seq AllocBody357_221 AllocBody357_226

def AllocBody357_228 : StackLang.HolProg 64 :=
.seq AllocBody357_220 AllocBody357_227

def AllocBody357_229 : StackLang.HolProg 64 :=
.seq AllocBody357_219 AllocBody357_228

def AllocBody357_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody357_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody357_232 : StackLang.HolProg 64 :=
.seq AllocBody357_230 AllocBody357_231

def AllocBody357_233 : StackLang.HolProg 64 :=
.call (some (AllocBody357_229, 0, 357, 8)) (Sum.inl 176) (some (AllocBody357_232, 357, 9))

def AllocBody357_234 : StackLang.HolProg 64 :=
.seq AllocBody357_218 AllocBody357_233

def AllocBody357_235 : StackLang.HolProg 64 :=
.seq AllocBody357_217 AllocBody357_234

def AllocBody357_236 : StackLang.HolProg 64 :=
.seq AllocBody357_216 AllocBody357_235

def AllocBody357_237 : StackLang.HolProg 64 :=
.seq AllocBody357_197 AllocBody357_236

def AllocBody357_238 : StackLang.HolProg 64 :=
.seq AllocBody357_194 AllocBody357_237

def AllocBody357_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody357_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody357_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody357_242 : StackLang.HolProg 64 :=
.seq AllocBody357_240 AllocBody357_241

def AllocBody357_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1031#64)

def AllocBody357_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_246 : StackLang.HolProg 64 :=
.seq AllocBody357_244 AllocBody357_245

def AllocBody357_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody357_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody357_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody357_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 357 11

def AllocBody357_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody357_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody357_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody357_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody357_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_257 : StackLang.HolProg 64 :=
.seq AllocBody357_255 AllocBody357_256

def AllocBody357_258 : StackLang.HolProg 64 :=
.seq AllocBody357_254 AllocBody357_257

def AllocBody357_259 : StackLang.HolProg 64 :=
.seq AllocBody357_253 AllocBody357_258

def AllocBody357_260 : StackLang.HolProg 64 :=
.seq AllocBody357_252 AllocBody357_259

def AllocBody357_261 : StackLang.HolProg 64 :=
.seq AllocBody357_251 AllocBody357_260

def AllocBody357_262 : StackLang.HolProg 64 :=
.seq AllocBody357_250 AllocBody357_261

def AllocBody357_263 : StackLang.HolProg 64 :=
.seq AllocBody357_249 AllocBody357_262

def AllocBody357_264 : StackLang.HolProg 64 :=
.seq AllocBody357_248 AllocBody357_263

def AllocBody357_265 : StackLang.HolProg 64 :=
.seq AllocBody357_247 AllocBody357_264

def AllocBody357_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody357_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody357_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody357_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody357_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody357_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody357_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody357_274 : StackLang.HolProg 64 :=
.seq AllocBody357_272 AllocBody357_273

def AllocBody357_275 : StackLang.HolProg 64 :=
.seq AllocBody357_271 AllocBody357_274

def AllocBody357_276 : StackLang.HolProg 64 :=
.seq AllocBody357_270 AllocBody357_275

def AllocBody357_277 : StackLang.HolProg 64 :=
.seq AllocBody357_269 AllocBody357_276

def AllocBody357_278 : StackLang.HolProg 64 :=
.seq AllocBody357_268 AllocBody357_277

def AllocBody357_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody357_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody357_281 : StackLang.HolProg 64 :=
.seq AllocBody357_279 AllocBody357_280

def AllocBody357_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody357_283 : StackLang.HolProg 64 :=
.seq AllocBody357_281 AllocBody357_282

def AllocBody357_284 : StackLang.HolProg 64 :=
.call (some (AllocBody357_278, 0, 357, 10)) (Sum.inl 70) (some (AllocBody357_283, 357, 11))

def AllocBody357_285 : StackLang.HolProg 64 :=
.seq AllocBody357_267 AllocBody357_284

def AllocBody357_286 : StackLang.HolProg 64 :=
.seq AllocBody357_266 AllocBody357_285

def AllocBody357_287 : StackLang.HolProg 64 :=
.seq AllocBody357_265 AllocBody357_286

def AllocBody357_288 : StackLang.HolProg 64 :=
.seq AllocBody357_246 AllocBody357_287

def AllocBody357_289 : StackLang.HolProg 64 :=
.seq AllocBody357_243 AllocBody357_288

def AllocBody357_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody357_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody357_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody357_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody357_294 : StackLang.HolProg 64 :=
.seq AllocBody357_292 AllocBody357_293

def AllocBody357_295 : StackLang.HolProg 64 :=
.seq AllocBody357_291 AllocBody357_294

def AllocBody357_296 : StackLang.HolProg 64 :=
.seq AllocBody357_290 AllocBody357_295

def AllocBody357_297 : StackLang.HolProg 64 :=
.seq AllocBody357_289 AllocBody357_296

def AllocBody357_298 : StackLang.HolProg 64 :=
.seq AllocBody357_242 AllocBody357_297

def AllocBody357_299 : StackLang.HolProg 64 :=
.seq AllocBody357_239 AllocBody357_298

def AllocBody357_300 : StackLang.HolProg 64 :=
.seq AllocBody357_238 AllocBody357_299

def AllocBody357_301 : StackLang.HolProg 64 :=
.seq AllocBody357_193 AllocBody357_300

def AllocBody357_302 : StackLang.HolProg 64 :=
.seq AllocBody357_192 AllocBody357_301

def AllocBody357_303 : StackLang.HolProg 64 :=
.seq AllocBody357_191 AllocBody357_302

def AllocBody357_304 : StackLang.HolProg 64 :=
.seq AllocBody357_134 AllocBody357_303

def AllocBody357_305 : StackLang.HolProg 64 :=
.seq AllocBody357_131 AllocBody357_304

def AllocBody357_306 : StackLang.HolProg 64 :=
.seq AllocBody357_130 AllocBody357_305

def AllocBody357_307 : StackLang.HolProg 64 :=
.seq AllocBody357_57 AllocBody357_306

def AllocBody357_308 : StackLang.HolProg 64 :=
.seq AllocBody357_56 AllocBody357_307

def AllocBody357_309 : StackLang.HolProg 64 :=
.seq AllocBody357_55 AllocBody357_308

def AllocBody357_310 : StackLang.HolProg 64 :=
.seq AllocBody357_54 AllocBody357_309

def AllocBody357_311 : StackLang.HolProg 64 :=
.seq AllocBody357_11 AllocBody357_310

def AllocBody357_312 : StackLang.HolProg 64 :=
.seq AllocBody357_0 AllocBody357_311

def Alloc357 : Nat × StackLang.HolProg 64 := (357, AllocBody357_312)
theorem Alloc357_eq : StackAlloc.progComp (357, raw357) = Alloc357 := by
  kernel_rfl
#print axioms Alloc357_eq
end InitECandidate.Proofs.BackendStages
