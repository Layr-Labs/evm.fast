import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw772
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody772_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 11

def AllocBody772_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody772_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody772_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody772_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody772_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody772_6 : StackLang.HolProg 64 :=
.seq AllocBody772_4 AllocBody772_5

def AllocBody772_7 : StackLang.HolProg 64 :=
.seq AllocBody772_3 AllocBody772_6

def AllocBody772_8 : StackLang.HolProg 64 :=
.seq AllocBody772_2 AllocBody772_7

def AllocBody772_9 : StackLang.HolProg 64 :=
.seq AllocBody772_1 AllocBody772_8

def AllocBody772_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3511#64)

def AllocBody772_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_13 : StackLang.HolProg 64 :=
.seq AllocBody772_11 AllocBody772_12

def AllocBody772_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 3

def AllocBody772_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_24 : StackLang.HolProg 64 :=
.seq AllocBody772_22 AllocBody772_23

def AllocBody772_25 : StackLang.HolProg 64 :=
.seq AllocBody772_21 AllocBody772_24

def AllocBody772_26 : StackLang.HolProg 64 :=
.seq AllocBody772_20 AllocBody772_25

def AllocBody772_27 : StackLang.HolProg 64 :=
.seq AllocBody772_19 AllocBody772_26

def AllocBody772_28 : StackLang.HolProg 64 :=
.seq AllocBody772_18 AllocBody772_27

def AllocBody772_29 : StackLang.HolProg 64 :=
.seq AllocBody772_17 AllocBody772_28

def AllocBody772_30 : StackLang.HolProg 64 :=
.seq AllocBody772_16 AllocBody772_29

def AllocBody772_31 : StackLang.HolProg 64 :=
.seq AllocBody772_15 AllocBody772_30

def AllocBody772_32 : StackLang.HolProg 64 :=
.seq AllocBody772_14 AllocBody772_31

def AllocBody772_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody772_40 : StackLang.HolProg 64 :=
.seq AllocBody772_38 AllocBody772_39

def AllocBody772_41 : StackLang.HolProg 64 :=
.seq AllocBody772_37 AllocBody772_40

def AllocBody772_42 : StackLang.HolProg 64 :=
.seq AllocBody772_36 AllocBody772_41

def AllocBody772_43 : StackLang.HolProg 64 :=
.seq AllocBody772_35 AllocBody772_42

def AllocBody772_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_46 : StackLang.HolProg 64 :=
.seq AllocBody772_44 AllocBody772_45

def AllocBody772_47 : StackLang.HolProg 64 :=
.call (some (AllocBody772_43, 0, 772, 2)) (Sum.inl 69) (some (AllocBody772_46, 772, 3))

def AllocBody772_48 : StackLang.HolProg 64 :=
.seq AllocBody772_34 AllocBody772_47

def AllocBody772_49 : StackLang.HolProg 64 :=
.seq AllocBody772_33 AllocBody772_48

def AllocBody772_50 : StackLang.HolProg 64 :=
.seq AllocBody772_32 AllocBody772_49

def AllocBody772_51 : StackLang.HolProg 64 :=
.seq AllocBody772_13 AllocBody772_50

def AllocBody772_52 : StackLang.HolProg 64 :=
.seq AllocBody772_10 AllocBody772_51

def AllocBody772_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def AllocBody772_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody772_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3512#64)

def AllocBody772_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_59 : StackLang.HolProg 64 :=
.seq AllocBody772_57 AllocBody772_58

def AllocBody772_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 5

def AllocBody772_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_70 : StackLang.HolProg 64 :=
.seq AllocBody772_68 AllocBody772_69

def AllocBody772_71 : StackLang.HolProg 64 :=
.seq AllocBody772_67 AllocBody772_70

def AllocBody772_72 : StackLang.HolProg 64 :=
.seq AllocBody772_66 AllocBody772_71

def AllocBody772_73 : StackLang.HolProg 64 :=
.seq AllocBody772_65 AllocBody772_72

def AllocBody772_74 : StackLang.HolProg 64 :=
.seq AllocBody772_64 AllocBody772_73

def AllocBody772_75 : StackLang.HolProg 64 :=
.seq AllocBody772_63 AllocBody772_74

def AllocBody772_76 : StackLang.HolProg 64 :=
.seq AllocBody772_62 AllocBody772_75

def AllocBody772_77 : StackLang.HolProg 64 :=
.seq AllocBody772_61 AllocBody772_76

def AllocBody772_78 : StackLang.HolProg 64 :=
.seq AllocBody772_60 AllocBody772_77

def AllocBody772_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody772_86 : StackLang.HolProg 64 :=
.seq AllocBody772_84 AllocBody772_85

def AllocBody772_87 : StackLang.HolProg 64 :=
.seq AllocBody772_83 AllocBody772_86

def AllocBody772_88 : StackLang.HolProg 64 :=
.seq AllocBody772_82 AllocBody772_87

def AllocBody772_89 : StackLang.HolProg 64 :=
.seq AllocBody772_81 AllocBody772_88

def AllocBody772_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_92 : StackLang.HolProg 64 :=
.seq AllocBody772_90 AllocBody772_91

def AllocBody772_93 : StackLang.HolProg 64 :=
.call (some (AllocBody772_89, 0, 772, 4)) (Sum.inl 68) (some (AllocBody772_92, 772, 5))

def AllocBody772_94 : StackLang.HolProg 64 :=
.seq AllocBody772_80 AllocBody772_93

def AllocBody772_95 : StackLang.HolProg 64 :=
.seq AllocBody772_79 AllocBody772_94

def AllocBody772_96 : StackLang.HolProg 64 :=
.seq AllocBody772_78 AllocBody772_95

def AllocBody772_97 : StackLang.HolProg 64 :=
.seq AllocBody772_59 AllocBody772_96

def AllocBody772_98 : StackLang.HolProg 64 :=
.seq AllocBody772_56 AllocBody772_97

def AllocBody772_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def AllocBody772_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody772_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3513#64)

def AllocBody772_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_105 : StackLang.HolProg 64 :=
.seq AllocBody772_103 AllocBody772_104

def AllocBody772_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 7

def AllocBody772_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_116 : StackLang.HolProg 64 :=
.seq AllocBody772_114 AllocBody772_115

def AllocBody772_117 : StackLang.HolProg 64 :=
.seq AllocBody772_113 AllocBody772_116

def AllocBody772_118 : StackLang.HolProg 64 :=
.seq AllocBody772_112 AllocBody772_117

def AllocBody772_119 : StackLang.HolProg 64 :=
.seq AllocBody772_111 AllocBody772_118

def AllocBody772_120 : StackLang.HolProg 64 :=
.seq AllocBody772_110 AllocBody772_119

def AllocBody772_121 : StackLang.HolProg 64 :=
.seq AllocBody772_109 AllocBody772_120

def AllocBody772_122 : StackLang.HolProg 64 :=
.seq AllocBody772_108 AllocBody772_121

def AllocBody772_123 : StackLang.HolProg 64 :=
.seq AllocBody772_107 AllocBody772_122

def AllocBody772_124 : StackLang.HolProg 64 :=
.seq AllocBody772_106 AllocBody772_123

def AllocBody772_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody772_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody772_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_135 : StackLang.HolProg 64 :=
.seq AllocBody772_133 AllocBody772_134

def AllocBody772_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody772_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody772_138 : StackLang.HolProg 64 :=
.seq AllocBody772_136 AllocBody772_137

def AllocBody772_139 : StackLang.HolProg 64 :=
.seq AllocBody772_135 AllocBody772_138

def AllocBody772_140 : StackLang.HolProg 64 :=
.seq AllocBody772_132 AllocBody772_139

def AllocBody772_141 : StackLang.HolProg 64 :=
.seq AllocBody772_131 AllocBody772_140

def AllocBody772_142 : StackLang.HolProg 64 :=
.seq AllocBody772_130 AllocBody772_141

def AllocBody772_143 : StackLang.HolProg 64 :=
.seq AllocBody772_129 AllocBody772_142

def AllocBody772_144 : StackLang.HolProg 64 :=
.seq AllocBody772_128 AllocBody772_143

def AllocBody772_145 : StackLang.HolProg 64 :=
.seq AllocBody772_127 AllocBody772_144

def AllocBody772_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody772_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_149 : StackLang.HolProg 64 :=
.seq AllocBody772_147 AllocBody772_148

def AllocBody772_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody772_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody772_152 : StackLang.HolProg 64 :=
.seq AllocBody772_150 AllocBody772_151

def AllocBody772_153 : StackLang.HolProg 64 :=
.seq AllocBody772_149 AllocBody772_152

def AllocBody772_154 : StackLang.HolProg 64 :=
.seq AllocBody772_146 AllocBody772_153

def AllocBody772_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_156 : StackLang.HolProg 64 :=
.seq AllocBody772_154 AllocBody772_155

def AllocBody772_157 : StackLang.HolProg 64 :=
.call (some (AllocBody772_145, 0, 772, 6)) (Sum.inl 68) (some (AllocBody772_156, 772, 7))

def AllocBody772_158 : StackLang.HolProg 64 :=
.seq AllocBody772_126 AllocBody772_157

def AllocBody772_159 : StackLang.HolProg 64 :=
.seq AllocBody772_125 AllocBody772_158

def AllocBody772_160 : StackLang.HolProg 64 :=
.seq AllocBody772_124 AllocBody772_159

def AllocBody772_161 : StackLang.HolProg 64 :=
.seq AllocBody772_105 AllocBody772_160

def AllocBody772_162 : StackLang.HolProg 64 :=
.seq AllocBody772_102 AllocBody772_161

def AllocBody772_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody772_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody772_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody772_167 : StackLang.HolProg 64 :=
.seq AllocBody772_165 AllocBody772_166

def AllocBody772_168 : StackLang.HolProg 64 :=
.seq AllocBody772_164 AllocBody772_167

def AllocBody772_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3514#64)

def AllocBody772_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_172 : StackLang.HolProg 64 :=
.seq AllocBody772_170 AllocBody772_171

def AllocBody772_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 9

def AllocBody772_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_183 : StackLang.HolProg 64 :=
.seq AllocBody772_181 AllocBody772_182

def AllocBody772_184 : StackLang.HolProg 64 :=
.seq AllocBody772_180 AllocBody772_183

def AllocBody772_185 : StackLang.HolProg 64 :=
.seq AllocBody772_179 AllocBody772_184

def AllocBody772_186 : StackLang.HolProg 64 :=
.seq AllocBody772_178 AllocBody772_185

def AllocBody772_187 : StackLang.HolProg 64 :=
.seq AllocBody772_177 AllocBody772_186

def AllocBody772_188 : StackLang.HolProg 64 :=
.seq AllocBody772_176 AllocBody772_187

def AllocBody772_189 : StackLang.HolProg 64 :=
.seq AllocBody772_175 AllocBody772_188

def AllocBody772_190 : StackLang.HolProg 64 :=
.seq AllocBody772_174 AllocBody772_189

def AllocBody772_191 : StackLang.HolProg 64 :=
.seq AllocBody772_173 AllocBody772_190

def AllocBody772_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody772_199 : StackLang.HolProg 64 :=
.seq AllocBody772_197 AllocBody772_198

def AllocBody772_200 : StackLang.HolProg 64 :=
.seq AllocBody772_196 AllocBody772_199

def AllocBody772_201 : StackLang.HolProg 64 :=
.seq AllocBody772_195 AllocBody772_200

def AllocBody772_202 : StackLang.HolProg 64 :=
.seq AllocBody772_194 AllocBody772_201

def AllocBody772_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody772_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_205 : StackLang.HolProg 64 :=
.seq AllocBody772_203 AllocBody772_204

def AllocBody772_206 : StackLang.HolProg 64 :=
.call (some (AllocBody772_202, 0, 772, 8)) (Sum.inl 768) (some (AllocBody772_205, 772, 9))

def AllocBody772_207 : StackLang.HolProg 64 :=
.seq AllocBody772_193 AllocBody772_206

def AllocBody772_208 : StackLang.HolProg 64 :=
.seq AllocBody772_192 AllocBody772_207

def AllocBody772_209 : StackLang.HolProg 64 :=
.seq AllocBody772_191 AllocBody772_208

def AllocBody772_210 : StackLang.HolProg 64 :=
.seq AllocBody772_172 AllocBody772_209

def AllocBody772_211 : StackLang.HolProg 64 :=
.seq AllocBody772_169 AllocBody772_210

def AllocBody772_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody772_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody772_215 : StackLang.HolProg 64 :=
.seq AllocBody772_213 AllocBody772_214

def AllocBody772_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3515#64)

def AllocBody772_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_219 : StackLang.HolProg 64 :=
.seq AllocBody772_217 AllocBody772_218

def AllocBody772_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 11

def AllocBody772_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_230 : StackLang.HolProg 64 :=
.seq AllocBody772_228 AllocBody772_229

def AllocBody772_231 : StackLang.HolProg 64 :=
.seq AllocBody772_227 AllocBody772_230

def AllocBody772_232 : StackLang.HolProg 64 :=
.seq AllocBody772_226 AllocBody772_231

def AllocBody772_233 : StackLang.HolProg 64 :=
.seq AllocBody772_225 AllocBody772_232

def AllocBody772_234 : StackLang.HolProg 64 :=
.seq AllocBody772_224 AllocBody772_233

def AllocBody772_235 : StackLang.HolProg 64 :=
.seq AllocBody772_223 AllocBody772_234

def AllocBody772_236 : StackLang.HolProg 64 :=
.seq AllocBody772_222 AllocBody772_235

def AllocBody772_237 : StackLang.HolProg 64 :=
.seq AllocBody772_221 AllocBody772_236

def AllocBody772_238 : StackLang.HolProg 64 :=
.seq AllocBody772_220 AllocBody772_237

def AllocBody772_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody772_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody772_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody772_249 : StackLang.HolProg 64 :=
.seq AllocBody772_247 AllocBody772_248

def AllocBody772_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_252 : StackLang.HolProg 64 :=
.seq AllocBody772_250 AllocBody772_251

def AllocBody772_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody772_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_255 : StackLang.HolProg 64 :=
.seq AllocBody772_253 AllocBody772_254

def AllocBody772_256 : StackLang.HolProg 64 :=
.seq AllocBody772_252 AllocBody772_255

def AllocBody772_257 : StackLang.HolProg 64 :=
.seq AllocBody772_249 AllocBody772_256

def AllocBody772_258 : StackLang.HolProg 64 :=
.seq AllocBody772_246 AllocBody772_257

def AllocBody772_259 : StackLang.HolProg 64 :=
.seq AllocBody772_245 AllocBody772_258

def AllocBody772_260 : StackLang.HolProg 64 :=
.seq AllocBody772_244 AllocBody772_259

def AllocBody772_261 : StackLang.HolProg 64 :=
.seq AllocBody772_243 AllocBody772_260

def AllocBody772_262 : StackLang.HolProg 64 :=
.seq AllocBody772_242 AllocBody772_261

def AllocBody772_263 : StackLang.HolProg 64 :=
.seq AllocBody772_241 AllocBody772_262

def AllocBody772_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody772_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody772_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody772_268 : StackLang.HolProg 64 :=
.seq AllocBody772_266 AllocBody772_267

def AllocBody772_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_271 : StackLang.HolProg 64 :=
.seq AllocBody772_269 AllocBody772_270

def AllocBody772_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody772_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_274 : StackLang.HolProg 64 :=
.seq AllocBody772_272 AllocBody772_273

def AllocBody772_275 : StackLang.HolProg 64 :=
.seq AllocBody772_271 AllocBody772_274

def AllocBody772_276 : StackLang.HolProg 64 :=
.seq AllocBody772_268 AllocBody772_275

def AllocBody772_277 : StackLang.HolProg 64 :=
.seq AllocBody772_265 AllocBody772_276

def AllocBody772_278 : StackLang.HolProg 64 :=
.seq AllocBody772_264 AllocBody772_277

def AllocBody772_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_280 : StackLang.HolProg 64 :=
.seq AllocBody772_278 AllocBody772_279

def AllocBody772_281 : StackLang.HolProg 64 :=
.call (some (AllocBody772_263, 0, 772, 10)) (Sum.inl 766) (some (AllocBody772_280, 772, 11))

def AllocBody772_282 : StackLang.HolProg 64 :=
.seq AllocBody772_240 AllocBody772_281

def AllocBody772_283 : StackLang.HolProg 64 :=
.seq AllocBody772_239 AllocBody772_282

def AllocBody772_284 : StackLang.HolProg 64 :=
.seq AllocBody772_238 AllocBody772_283

def AllocBody772_285 : StackLang.HolProg 64 :=
.seq AllocBody772_219 AllocBody772_284

def AllocBody772_286 : StackLang.HolProg 64 :=
.seq AllocBody772_216 AllocBody772_285

def AllocBody772_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody772_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody772_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody772_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody772_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody772_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody772_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody772_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody772_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody772_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_304 : StackLang.HolProg 64 :=
.seq AllocBody772_302 AllocBody772_303

def AllocBody772_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody772_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_307 : StackLang.HolProg 64 :=
.seq AllocBody772_305 AllocBody772_306

def AllocBody772_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody772_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody772_310 : StackLang.HolProg 64 :=
.seq AllocBody772_308 AllocBody772_309

def AllocBody772_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody772_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody772_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_314 : StackLang.HolProg 64 :=
.seq AllocBody772_312 AllocBody772_313

def AllocBody772_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_317 : StackLang.HolProg 64 :=
.seq AllocBody772_315 AllocBody772_316

def AllocBody772_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody772_319 : StackLang.HolProg 64 :=
.seq AllocBody772_317 AllocBody772_318

def AllocBody772_320 : StackLang.HolProg 64 :=
.seq AllocBody772_314 AllocBody772_319

def AllocBody772_321 : StackLang.HolProg 64 :=
.seq AllocBody772_311 AllocBody772_320

def AllocBody772_322 : StackLang.HolProg 64 :=
.seq AllocBody772_310 AllocBody772_321

def AllocBody772_323 : StackLang.HolProg 64 :=
.seq AllocBody772_307 AllocBody772_322

def AllocBody772_324 : StackLang.HolProg 64 :=
.seq AllocBody772_304 AllocBody772_323

def AllocBody772_325 : StackLang.HolProg 64 :=
.seq AllocBody772_301 AllocBody772_324

def AllocBody772_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3516#64)

def AllocBody772_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_329 : StackLang.HolProg 64 :=
.seq AllocBody772_327 AllocBody772_328

def AllocBody772_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 13

def AllocBody772_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_340 : StackLang.HolProg 64 :=
.seq AllocBody772_338 AllocBody772_339

def AllocBody772_341 : StackLang.HolProg 64 :=
.seq AllocBody772_337 AllocBody772_340

def AllocBody772_342 : StackLang.HolProg 64 :=
.seq AllocBody772_336 AllocBody772_341

def AllocBody772_343 : StackLang.HolProg 64 :=
.seq AllocBody772_335 AllocBody772_342

def AllocBody772_344 : StackLang.HolProg 64 :=
.seq AllocBody772_334 AllocBody772_343

def AllocBody772_345 : StackLang.HolProg 64 :=
.seq AllocBody772_333 AllocBody772_344

def AllocBody772_346 : StackLang.HolProg 64 :=
.seq AllocBody772_332 AllocBody772_345

def AllocBody772_347 : StackLang.HolProg 64 :=
.seq AllocBody772_331 AllocBody772_346

def AllocBody772_348 : StackLang.HolProg 64 :=
.seq AllocBody772_330 AllocBody772_347

def AllocBody772_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody772_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody772_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody772_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody772_360 : StackLang.HolProg 64 :=
.seq AllocBody772_358 AllocBody772_359

def AllocBody772_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody772_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody772_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody772_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_365 : StackLang.HolProg 64 :=
.seq AllocBody772_363 AllocBody772_364

def AllocBody772_366 : StackLang.HolProg 64 :=
.seq AllocBody772_362 AllocBody772_365

def AllocBody772_367 : StackLang.HolProg 64 :=
.seq AllocBody772_361 AllocBody772_366

def AllocBody772_368 : StackLang.HolProg 64 :=
.seq AllocBody772_360 AllocBody772_367

def AllocBody772_369 : StackLang.HolProg 64 :=
.seq AllocBody772_357 AllocBody772_368

def AllocBody772_370 : StackLang.HolProg 64 :=
.seq AllocBody772_356 AllocBody772_369

def AllocBody772_371 : StackLang.HolProg 64 :=
.seq AllocBody772_355 AllocBody772_370

def AllocBody772_372 : StackLang.HolProg 64 :=
.seq AllocBody772_354 AllocBody772_371

def AllocBody772_373 : StackLang.HolProg 64 :=
.seq AllocBody772_353 AllocBody772_372

def AllocBody772_374 : StackLang.HolProg 64 :=
.seq AllocBody772_352 AllocBody772_373

def AllocBody772_375 : StackLang.HolProg 64 :=
.seq AllocBody772_351 AllocBody772_374

def AllocBody772_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody772_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody772_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody772_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody772_381 : StackLang.HolProg 64 :=
.seq AllocBody772_379 AllocBody772_380

def AllocBody772_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody772_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody772_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody772_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_386 : StackLang.HolProg 64 :=
.seq AllocBody772_384 AllocBody772_385

def AllocBody772_387 : StackLang.HolProg 64 :=
.seq AllocBody772_383 AllocBody772_386

def AllocBody772_388 : StackLang.HolProg 64 :=
.seq AllocBody772_382 AllocBody772_387

def AllocBody772_389 : StackLang.HolProg 64 :=
.seq AllocBody772_381 AllocBody772_388

def AllocBody772_390 : StackLang.HolProg 64 :=
.seq AllocBody772_378 AllocBody772_389

def AllocBody772_391 : StackLang.HolProg 64 :=
.seq AllocBody772_377 AllocBody772_390

def AllocBody772_392 : StackLang.HolProg 64 :=
.seq AllocBody772_376 AllocBody772_391

def AllocBody772_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_394 : StackLang.HolProg 64 :=
.seq AllocBody772_392 AllocBody772_393

def AllocBody772_395 : StackLang.HolProg 64 :=
.call (some (AllocBody772_375, 0, 772, 12)) (Sum.inl 770) (some (AllocBody772_394, 772, 13))

def AllocBody772_396 : StackLang.HolProg 64 :=
.seq AllocBody772_350 AllocBody772_395

def AllocBody772_397 : StackLang.HolProg 64 :=
.seq AllocBody772_349 AllocBody772_396

def AllocBody772_398 : StackLang.HolProg 64 :=
.seq AllocBody772_348 AllocBody772_397

def AllocBody772_399 : StackLang.HolProg 64 :=
.seq AllocBody772_329 AllocBody772_398

def AllocBody772_400 : StackLang.HolProg 64 :=
.seq AllocBody772_326 AllocBody772_399

def AllocBody772_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_403 : StackLang.HolProg 64 :=
.seq AllocBody772_401 AllocBody772_402

def AllocBody772_404 : StackLang.HolProg 64 :=
.seq AllocBody772_400 AllocBody772_403

def AllocBody772_405 : StackLang.HolProg 64 :=
.seq AllocBody772_325 AllocBody772_404

def AllocBody772_406 : StackLang.HolProg 64 :=
.seq AllocBody772_300 AllocBody772_405

def AllocBody772_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody772_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_410 : StackLang.HolProg 64 :=
.seq AllocBody772_408 AllocBody772_409

def AllocBody772_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody772_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_413 : StackLang.HolProg 64 :=
.seq AllocBody772_411 AllocBody772_412

def AllocBody772_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody772_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody772_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody772_417 : StackLang.HolProg 64 :=
.seq AllocBody772_415 AllocBody772_416

def AllocBody772_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody772_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody772_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody772_421 : StackLang.HolProg 64 :=
.seq AllocBody772_419 AllocBody772_420

def AllocBody772_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody772_423 : StackLang.HolProg 64 :=
.seq AllocBody772_421 AllocBody772_422

def AllocBody772_424 : StackLang.HolProg 64 :=
.seq AllocBody772_418 AllocBody772_423

def AllocBody772_425 : StackLang.HolProg 64 :=
.seq AllocBody772_417 AllocBody772_424

def AllocBody772_426 : StackLang.HolProg 64 :=
.seq AllocBody772_414 AllocBody772_425

def AllocBody772_427 : StackLang.HolProg 64 :=
.seq AllocBody772_413 AllocBody772_426

def AllocBody772_428 : StackLang.HolProg 64 :=
.seq AllocBody772_410 AllocBody772_427

def AllocBody772_429 : StackLang.HolProg 64 :=
.seq AllocBody772_407 AllocBody772_428

def AllocBody772_430 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody772_406 AllocBody772_429

def AllocBody772_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody772_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody772_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody772_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody772_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody772_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody772_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody772_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody772_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody772_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody772_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody772_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody772_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody772_451 : StackLang.HolProg 64 :=
.seq AllocBody772_449 AllocBody772_450

def AllocBody772_452 : StackLang.HolProg 64 :=
.seq AllocBody772_448 AllocBody772_451

def AllocBody772_453 : StackLang.HolProg 64 :=
.seq AllocBody772_447 AllocBody772_452

def AllocBody772_454 : StackLang.HolProg 64 :=
.seq AllocBody772_446 AllocBody772_453

def AllocBody772_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3517#64)

def AllocBody772_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_458 : StackLang.HolProg 64 :=
.seq AllocBody772_456 AllocBody772_457

def AllocBody772_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 15

def AllocBody772_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_469 : StackLang.HolProg 64 :=
.seq AllocBody772_467 AllocBody772_468

def AllocBody772_470 : StackLang.HolProg 64 :=
.seq AllocBody772_466 AllocBody772_469

def AllocBody772_471 : StackLang.HolProg 64 :=
.seq AllocBody772_465 AllocBody772_470

def AllocBody772_472 : StackLang.HolProg 64 :=
.seq AllocBody772_464 AllocBody772_471

def AllocBody772_473 : StackLang.HolProg 64 :=
.seq AllocBody772_463 AllocBody772_472

def AllocBody772_474 : StackLang.HolProg 64 :=
.seq AllocBody772_462 AllocBody772_473

def AllocBody772_475 : StackLang.HolProg 64 :=
.seq AllocBody772_461 AllocBody772_474

def AllocBody772_476 : StackLang.HolProg 64 :=
.seq AllocBody772_460 AllocBody772_475

def AllocBody772_477 : StackLang.HolProg 64 :=
.seq AllocBody772_459 AllocBody772_476

def AllocBody772_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody772_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody772_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody772_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody772_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody772_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody772_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_493 : StackLang.HolProg 64 :=
.seq AllocBody772_491 AllocBody772_492

def AllocBody772_494 : StackLang.HolProg 64 :=
.seq AllocBody772_490 AllocBody772_493

def AllocBody772_495 : StackLang.HolProg 64 :=
.seq AllocBody772_489 AllocBody772_494

def AllocBody772_496 : StackLang.HolProg 64 :=
.seq AllocBody772_488 AllocBody772_495

def AllocBody772_497 : StackLang.HolProg 64 :=
.seq AllocBody772_487 AllocBody772_496

def AllocBody772_498 : StackLang.HolProg 64 :=
.seq AllocBody772_486 AllocBody772_497

def AllocBody772_499 : StackLang.HolProg 64 :=
.seq AllocBody772_485 AllocBody772_498

def AllocBody772_500 : StackLang.HolProg 64 :=
.seq AllocBody772_484 AllocBody772_499

def AllocBody772_501 : StackLang.HolProg 64 :=
.seq AllocBody772_483 AllocBody772_500

def AllocBody772_502 : StackLang.HolProg 64 :=
.seq AllocBody772_482 AllocBody772_501

def AllocBody772_503 : StackLang.HolProg 64 :=
.seq AllocBody772_481 AllocBody772_502

def AllocBody772_504 : StackLang.HolProg 64 :=
.seq AllocBody772_480 AllocBody772_503

def AllocBody772_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody772_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody772_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody772_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody772_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody772_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody772_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody772_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_514 : StackLang.HolProg 64 :=
.seq AllocBody772_512 AllocBody772_513

def AllocBody772_515 : StackLang.HolProg 64 :=
.seq AllocBody772_511 AllocBody772_514

def AllocBody772_516 : StackLang.HolProg 64 :=
.seq AllocBody772_510 AllocBody772_515

def AllocBody772_517 : StackLang.HolProg 64 :=
.seq AllocBody772_509 AllocBody772_516

def AllocBody772_518 : StackLang.HolProg 64 :=
.seq AllocBody772_508 AllocBody772_517

def AllocBody772_519 : StackLang.HolProg 64 :=
.seq AllocBody772_507 AllocBody772_518

def AllocBody772_520 : StackLang.HolProg 64 :=
.seq AllocBody772_506 AllocBody772_519

def AllocBody772_521 : StackLang.HolProg 64 :=
.seq AllocBody772_505 AllocBody772_520

def AllocBody772_522 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_523 : StackLang.HolProg 64 :=
.seq AllocBody772_521 AllocBody772_522

def AllocBody772_524 : StackLang.HolProg 64 :=
.call (some (AllocBody772_504, 0, 772, 14)) (Sum.inl 771) (some (AllocBody772_523, 772, 15))

def AllocBody772_525 : StackLang.HolProg 64 :=
.seq AllocBody772_479 AllocBody772_524

def AllocBody772_526 : StackLang.HolProg 64 :=
.seq AllocBody772_478 AllocBody772_525

def AllocBody772_527 : StackLang.HolProg 64 :=
.seq AllocBody772_477 AllocBody772_526

def AllocBody772_528 : StackLang.HolProg 64 :=
.seq AllocBody772_458 AllocBody772_527

def AllocBody772_529 : StackLang.HolProg 64 :=
.seq AllocBody772_455 AllocBody772_528

def AllocBody772_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody772_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_533 : StackLang.HolProg 64 :=
.seq AllocBody772_531 AllocBody772_532

def AllocBody772_534 : StackLang.HolProg 64 :=
.seq AllocBody772_530 AllocBody772_533

def AllocBody772_535 : StackLang.HolProg 64 :=
.seq AllocBody772_529 AllocBody772_534

def AllocBody772_536 : StackLang.HolProg 64 :=
.seq AllocBody772_454 AllocBody772_535

def AllocBody772_537 : StackLang.HolProg 64 :=
.seq AllocBody772_445 AllocBody772_536

def AllocBody772_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody772_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody772_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody772_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody772_544 : StackLang.HolProg 64 :=
.seq AllocBody772_542 AllocBody772_543

def AllocBody772_545 : StackLang.HolProg 64 :=
.seq AllocBody772_541 AllocBody772_544

def AllocBody772_546 : StackLang.HolProg 64 :=
.seq AllocBody772_540 AllocBody772_545

def AllocBody772_547 : StackLang.HolProg 64 :=
.seq AllocBody772_539 AllocBody772_546

def AllocBody772_548 : StackLang.HolProg 64 :=
.seq AllocBody772_538 AllocBody772_547

def AllocBody772_549 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody772_537 AllocBody772_548

def AllocBody772_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody772_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody772_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody772_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 10

def AllocBody772_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody772_556 : StackLang.HolProg 64 :=
.seq AllocBody772_554 AllocBody772_555

def AllocBody772_557 : StackLang.HolProg 64 :=
.seq AllocBody772_553 AllocBody772_556

def AllocBody772_558 : StackLang.HolProg 64 :=
.seq AllocBody772_552 AllocBody772_557

def AllocBody772_559 : StackLang.HolProg 64 :=
.seq AllocBody772_551 AllocBody772_558

def AllocBody772_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody772_561 : StackLang.HolProg 64 :=
.seq AllocBody772_559 AllocBody772_560

def AllocBody772_562 : StackLang.HolProg 64 :=
.seq AllocBody772_550 AllocBody772_561

def AllocBody772_563 : StackLang.HolProg 64 :=
.seq AllocBody772_549 AllocBody772_562

def AllocBody772_564 : StackLang.HolProg 64 :=
.seq AllocBody772_444 AllocBody772_563

def AllocBody772_565 : StackLang.HolProg 64 :=
.seq AllocBody772_443 AllocBody772_564

def AllocBody772_566 : StackLang.HolProg 64 :=
.seq AllocBody772_442 AllocBody772_565

def AllocBody772_567 : StackLang.HolProg 64 :=
.seq AllocBody772_441 AllocBody772_566

def AllocBody772_568 : StackLang.HolProg 64 :=
.seq AllocBody772_440 AllocBody772_567

def AllocBody772_569 : StackLang.HolProg 64 :=
.seq AllocBody772_439 AllocBody772_568

def AllocBody772_570 : StackLang.HolProg 64 :=
.seq AllocBody772_438 AllocBody772_569

def AllocBody772_571 : StackLang.HolProg 64 :=
.seq AllocBody772_437 AllocBody772_570

def AllocBody772_572 : StackLang.HolProg 64 :=
.seq AllocBody772_436 AllocBody772_571

def AllocBody772_573 : StackLang.HolProg 64 :=
.seq AllocBody772_435 AllocBody772_572

def AllocBody772_574 : StackLang.HolProg 64 :=
.seq AllocBody772_434 AllocBody772_573

def AllocBody772_575 : StackLang.HolProg 64 :=
.seq AllocBody772_433 AllocBody772_574

def AllocBody772_576 : StackLang.HolProg 64 :=
.seq AllocBody772_432 AllocBody772_575

def AllocBody772_577 : StackLang.HolProg 64 :=
.seq AllocBody772_431 AllocBody772_576

def AllocBody772_578 : StackLang.HolProg 64 :=
.seq AllocBody772_430 AllocBody772_577

def AllocBody772_579 : StackLang.HolProg 64 :=
.seq AllocBody772_299 AllocBody772_578

def AllocBody772_580 : StackLang.HolProg 64 :=
.seq AllocBody772_298 AllocBody772_579

def AllocBody772_581 : StackLang.HolProg 64 :=
.seq AllocBody772_297 AllocBody772_580

def AllocBody772_582 : StackLang.HolProg 64 :=
.seq AllocBody772_296 AllocBody772_581

def AllocBody772_583 : StackLang.HolProg 64 :=
.seq AllocBody772_295 AllocBody772_582

def AllocBody772_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody772_586 : StackLang.HolProg 64 :=
.seq AllocBody772_584 AllocBody772_585

def AllocBody772_587 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody772_583 AllocBody772_586

def AllocBody772_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody772_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody772_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody772_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody772_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 10

def AllocBody772_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 7

def AllocBody772_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def AllocBody772_596 : StackLang.HolProg 64 :=
.seq AllocBody772_594 AllocBody772_595

def AllocBody772_597 : StackLang.HolProg 64 :=
.seq AllocBody772_593 AllocBody772_596

def AllocBody772_598 : StackLang.HolProg 64 :=
.seq AllocBody772_592 AllocBody772_597

def AllocBody772_599 : StackLang.HolProg 64 :=
.seq AllocBody772_591 AllocBody772_598

def AllocBody772_600 : StackLang.HolProg 64 :=
.seq AllocBody772_590 AllocBody772_599

def AllocBody772_601 : StackLang.HolProg 64 :=
.seq AllocBody772_589 AllocBody772_600

def AllocBody772_602 : StackLang.HolProg 64 :=
.seq AllocBody772_588 AllocBody772_601

def AllocBody772_603 : StackLang.HolProg 64 :=
.seq AllocBody772_587 AllocBody772_602

def AllocBody772_604 : StackLang.HolProg 64 :=
.seq AllocBody772_294 AllocBody772_603

def AllocBody772_605 : StackLang.HolProg 64 :=
.seq AllocBody772_293 AllocBody772_604

def AllocBody772_606 : StackLang.HolProg 64 :=
.loop AllocBody772_605

def AllocBody772_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 10

def AllocBody772_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody772_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody772_611 : StackLang.HolProg 64 :=
.seq AllocBody772_609 AllocBody772_610

def AllocBody772_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody772_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody772_614 : StackLang.HolProg 64 :=
.seq AllocBody772_612 AllocBody772_613

def AllocBody772_615 : StackLang.HolProg 64 :=
.seq AllocBody772_611 AllocBody772_614

def AllocBody772_616 : StackLang.HolProg 64 :=
.seq AllocBody772_608 AllocBody772_615

def AllocBody772_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3518#64)

def AllocBody772_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_620 : StackLang.HolProg 64 :=
.seq AllocBody772_618 AllocBody772_619

def AllocBody772_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 17

def AllocBody772_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_631 : StackLang.HolProg 64 :=
.seq AllocBody772_629 AllocBody772_630

def AllocBody772_632 : StackLang.HolProg 64 :=
.seq AllocBody772_628 AllocBody772_631

def AllocBody772_633 : StackLang.HolProg 64 :=
.seq AllocBody772_627 AllocBody772_632

def AllocBody772_634 : StackLang.HolProg 64 :=
.seq AllocBody772_626 AllocBody772_633

def AllocBody772_635 : StackLang.HolProg 64 :=
.seq AllocBody772_625 AllocBody772_634

def AllocBody772_636 : StackLang.HolProg 64 :=
.seq AllocBody772_624 AllocBody772_635

def AllocBody772_637 : StackLang.HolProg 64 :=
.seq AllocBody772_623 AllocBody772_636

def AllocBody772_638 : StackLang.HolProg 64 :=
.seq AllocBody772_622 AllocBody772_637

def AllocBody772_639 : StackLang.HolProg 64 :=
.seq AllocBody772_621 AllocBody772_638

def AllocBody772_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody772_647 : StackLang.HolProg 64 :=
.seq AllocBody772_645 AllocBody772_646

def AllocBody772_648 : StackLang.HolProg 64 :=
.seq AllocBody772_644 AllocBody772_647

def AllocBody772_649 : StackLang.HolProg 64 :=
.seq AllocBody772_643 AllocBody772_648

def AllocBody772_650 : StackLang.HolProg 64 :=
.seq AllocBody772_642 AllocBody772_649

def AllocBody772_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody772_652 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_653 : StackLang.HolProg 64 :=
.seq AllocBody772_651 AllocBody772_652

def AllocBody772_654 : StackLang.HolProg 64 :=
.call (some (AllocBody772_650, 0, 772, 16)) (Sum.inl 768) (some (AllocBody772_653, 772, 17))

def AllocBody772_655 : StackLang.HolProg 64 :=
.seq AllocBody772_641 AllocBody772_654

def AllocBody772_656 : StackLang.HolProg 64 :=
.seq AllocBody772_640 AllocBody772_655

def AllocBody772_657 : StackLang.HolProg 64 :=
.seq AllocBody772_639 AllocBody772_656

def AllocBody772_658 : StackLang.HolProg 64 :=
.seq AllocBody772_620 AllocBody772_657

def AllocBody772_659 : StackLang.HolProg 64 :=
.seq AllocBody772_617 AllocBody772_658

def AllocBody772_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody772_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3519#64)

def AllocBody772_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_665 : StackLang.HolProg 64 :=
.seq AllocBody772_663 AllocBody772_664

def AllocBody772_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody772_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody772_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody772_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 19

def AllocBody772_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody772_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody772_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody772_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody772_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_676 : StackLang.HolProg 64 :=
.seq AllocBody772_674 AllocBody772_675

def AllocBody772_677 : StackLang.HolProg 64 :=
.seq AllocBody772_673 AllocBody772_676

def AllocBody772_678 : StackLang.HolProg 64 :=
.seq AllocBody772_672 AllocBody772_677

def AllocBody772_679 : StackLang.HolProg 64 :=
.seq AllocBody772_671 AllocBody772_678

def AllocBody772_680 : StackLang.HolProg 64 :=
.seq AllocBody772_670 AllocBody772_679

def AllocBody772_681 : StackLang.HolProg 64 :=
.seq AllocBody772_669 AllocBody772_680

def AllocBody772_682 : StackLang.HolProg 64 :=
.seq AllocBody772_668 AllocBody772_681

def AllocBody772_683 : StackLang.HolProg 64 :=
.seq AllocBody772_667 AllocBody772_682

def AllocBody772_684 : StackLang.HolProg 64 :=
.seq AllocBody772_666 AllocBody772_683

def AllocBody772_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody772_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody772_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody772_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody772_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody772_692 : StackLang.HolProg 64 :=
.seq AllocBody772_690 AllocBody772_691

def AllocBody772_693 : StackLang.HolProg 64 :=
.seq AllocBody772_689 AllocBody772_692

def AllocBody772_694 : StackLang.HolProg 64 :=
.seq AllocBody772_688 AllocBody772_693

def AllocBody772_695 : StackLang.HolProg 64 :=
.seq AllocBody772_687 AllocBody772_694

def AllocBody772_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody772_697 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody772_698 : StackLang.HolProg 64 :=
.seq AllocBody772_696 AllocBody772_697

def AllocBody772_699 : StackLang.HolProg 64 :=
.call (some (AllocBody772_695, 0, 772, 18)) (Sum.inl 70) (some (AllocBody772_698, 772, 19))

def AllocBody772_700 : StackLang.HolProg 64 :=
.seq AllocBody772_686 AllocBody772_699

def AllocBody772_701 : StackLang.HolProg 64 :=
.seq AllocBody772_685 AllocBody772_700

def AllocBody772_702 : StackLang.HolProg 64 :=
.seq AllocBody772_684 AllocBody772_701

def AllocBody772_703 : StackLang.HolProg 64 :=
.seq AllocBody772_665 AllocBody772_702

def AllocBody772_704 : StackLang.HolProg 64 :=
.seq AllocBody772_662 AllocBody772_703

def AllocBody772_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody772_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody772_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody772_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody772_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody772_710 : StackLang.HolProg 64 :=
.seq AllocBody772_708 AllocBody772_709

def AllocBody772_711 : StackLang.HolProg 64 :=
.seq AllocBody772_707 AllocBody772_710

def AllocBody772_712 : StackLang.HolProg 64 :=
.seq AllocBody772_706 AllocBody772_711

def AllocBody772_713 : StackLang.HolProg 64 :=
.seq AllocBody772_705 AllocBody772_712

def AllocBody772_714 : StackLang.HolProg 64 :=
.seq AllocBody772_704 AllocBody772_713

def AllocBody772_715 : StackLang.HolProg 64 :=
.seq AllocBody772_661 AllocBody772_714

def AllocBody772_716 : StackLang.HolProg 64 :=
.seq AllocBody772_660 AllocBody772_715

def AllocBody772_717 : StackLang.HolProg 64 :=
.seq AllocBody772_659 AllocBody772_716

def AllocBody772_718 : StackLang.HolProg 64 :=
.seq AllocBody772_616 AllocBody772_717

def AllocBody772_719 : StackLang.HolProg 64 :=
.seq AllocBody772_607 AllocBody772_718

def AllocBody772_720 : StackLang.HolProg 64 :=
.seq AllocBody772_606 AllocBody772_719

def AllocBody772_721 : StackLang.HolProg 64 :=
.seq AllocBody772_292 AllocBody772_720

def AllocBody772_722 : StackLang.HolProg 64 :=
.seq AllocBody772_291 AllocBody772_721

def AllocBody772_723 : StackLang.HolProg 64 :=
.seq AllocBody772_290 AllocBody772_722

def AllocBody772_724 : StackLang.HolProg 64 :=
.seq AllocBody772_289 AllocBody772_723

def AllocBody772_725 : StackLang.HolProg 64 :=
.seq AllocBody772_288 AllocBody772_724

def AllocBody772_726 : StackLang.HolProg 64 :=
.seq AllocBody772_287 AllocBody772_725

def AllocBody772_727 : StackLang.HolProg 64 :=
.seq AllocBody772_286 AllocBody772_726

def AllocBody772_728 : StackLang.HolProg 64 :=
.seq AllocBody772_215 AllocBody772_727

def AllocBody772_729 : StackLang.HolProg 64 :=
.seq AllocBody772_212 AllocBody772_728

def AllocBody772_730 : StackLang.HolProg 64 :=
.seq AllocBody772_211 AllocBody772_729

def AllocBody772_731 : StackLang.HolProg 64 :=
.seq AllocBody772_168 AllocBody772_730

def AllocBody772_732 : StackLang.HolProg 64 :=
.seq AllocBody772_163 AllocBody772_731

def AllocBody772_733 : StackLang.HolProg 64 :=
.seq AllocBody772_162 AllocBody772_732

def AllocBody772_734 : StackLang.HolProg 64 :=
.seq AllocBody772_101 AllocBody772_733

def AllocBody772_735 : StackLang.HolProg 64 :=
.seq AllocBody772_100 AllocBody772_734

def AllocBody772_736 : StackLang.HolProg 64 :=
.seq AllocBody772_99 AllocBody772_735

def AllocBody772_737 : StackLang.HolProg 64 :=
.seq AllocBody772_98 AllocBody772_736

def AllocBody772_738 : StackLang.HolProg 64 :=
.seq AllocBody772_55 AllocBody772_737

def AllocBody772_739 : StackLang.HolProg 64 :=
.seq AllocBody772_54 AllocBody772_738

def AllocBody772_740 : StackLang.HolProg 64 :=
.seq AllocBody772_53 AllocBody772_739

def AllocBody772_741 : StackLang.HolProg 64 :=
.seq AllocBody772_52 AllocBody772_740

def AllocBody772_742 : StackLang.HolProg 64 :=
.seq AllocBody772_9 AllocBody772_741

def AllocBody772_743 : StackLang.HolProg 64 :=
.seq AllocBody772_0 AllocBody772_742

def Alloc772 : Nat × StackLang.HolProg 64 := (772, AllocBody772_743)
theorem Alloc772_eq : StackAlloc.progComp (772, raw772) = Alloc772 := by
  kernel_rfl
#print axioms Alloc772_eq
end InitECandidate.Proofs.BackendStages
