import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw380
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody380_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody380_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody380_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody380_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody380_4 : StackLang.HolProg 64 :=
.seq AllocBody380_2 AllocBody380_3

def AllocBody380_5 : StackLang.HolProg 64 :=
.seq AllocBody380_1 AllocBody380_4

def AllocBody380_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1114#64)

def AllocBody380_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_9 : StackLang.HolProg 64 :=
.seq AllocBody380_7 AllocBody380_8

def AllocBody380_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody380_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody380_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 3

def AllocBody380_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody380_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody380_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody380_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody380_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_20 : StackLang.HolProg 64 :=
.seq AllocBody380_18 AllocBody380_19

def AllocBody380_21 : StackLang.HolProg 64 :=
.seq AllocBody380_17 AllocBody380_20

def AllocBody380_22 : StackLang.HolProg 64 :=
.seq AllocBody380_16 AllocBody380_21

def AllocBody380_23 : StackLang.HolProg 64 :=
.seq AllocBody380_15 AllocBody380_22

def AllocBody380_24 : StackLang.HolProg 64 :=
.seq AllocBody380_14 AllocBody380_23

def AllocBody380_25 : StackLang.HolProg 64 :=
.seq AllocBody380_13 AllocBody380_24

def AllocBody380_26 : StackLang.HolProg 64 :=
.seq AllocBody380_12 AllocBody380_25

def AllocBody380_27 : StackLang.HolProg 64 :=
.seq AllocBody380_11 AllocBody380_26

def AllocBody380_28 : StackLang.HolProg 64 :=
.seq AllocBody380_10 AllocBody380_27

def AllocBody380_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody380_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody380_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody380_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody380_36 : StackLang.HolProg 64 :=
.seq AllocBody380_34 AllocBody380_35

def AllocBody380_37 : StackLang.HolProg 64 :=
.seq AllocBody380_33 AllocBody380_36

def AllocBody380_38 : StackLang.HolProg 64 :=
.seq AllocBody380_32 AllocBody380_37

def AllocBody380_39 : StackLang.HolProg 64 :=
.seq AllocBody380_31 AllocBody380_38

def AllocBody380_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody380_42 : StackLang.HolProg 64 :=
.seq AllocBody380_40 AllocBody380_41

def AllocBody380_43 : StackLang.HolProg 64 :=
.call (some (AllocBody380_39, 0, 380, 2)) (Sum.inl 69) (some (AllocBody380_42, 380, 3))

def AllocBody380_44 : StackLang.HolProg 64 :=
.seq AllocBody380_30 AllocBody380_43

def AllocBody380_45 : StackLang.HolProg 64 :=
.seq AllocBody380_29 AllocBody380_44

def AllocBody380_46 : StackLang.HolProg 64 :=
.seq AllocBody380_28 AllocBody380_45

def AllocBody380_47 : StackLang.HolProg 64 :=
.seq AllocBody380_9 AllocBody380_46

def AllocBody380_48 : StackLang.HolProg 64 :=
.seq AllocBody380_6 AllocBody380_47

def AllocBody380_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody380_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody380_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody380_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1115#64)

def AllocBody380_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_55 : StackLang.HolProg 64 :=
.seq AllocBody380_53 AllocBody380_54

def AllocBody380_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody380_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody380_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 5

def AllocBody380_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody380_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody380_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody380_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody380_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_66 : StackLang.HolProg 64 :=
.seq AllocBody380_64 AllocBody380_65

def AllocBody380_67 : StackLang.HolProg 64 :=
.seq AllocBody380_63 AllocBody380_66

def AllocBody380_68 : StackLang.HolProg 64 :=
.seq AllocBody380_62 AllocBody380_67

def AllocBody380_69 : StackLang.HolProg 64 :=
.seq AllocBody380_61 AllocBody380_68

def AllocBody380_70 : StackLang.HolProg 64 :=
.seq AllocBody380_60 AllocBody380_69

def AllocBody380_71 : StackLang.HolProg 64 :=
.seq AllocBody380_59 AllocBody380_70

def AllocBody380_72 : StackLang.HolProg 64 :=
.seq AllocBody380_58 AllocBody380_71

def AllocBody380_73 : StackLang.HolProg 64 :=
.seq AllocBody380_57 AllocBody380_72

def AllocBody380_74 : StackLang.HolProg 64 :=
.seq AllocBody380_56 AllocBody380_73

def AllocBody380_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody380_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody380_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody380_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody380_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_83 : StackLang.HolProg 64 :=
.seq AllocBody380_81 AllocBody380_82

def AllocBody380_84 : StackLang.HolProg 64 :=
.seq AllocBody380_80 AllocBody380_83

def AllocBody380_85 : StackLang.HolProg 64 :=
.seq AllocBody380_79 AllocBody380_84

def AllocBody380_86 : StackLang.HolProg 64 :=
.seq AllocBody380_78 AllocBody380_85

def AllocBody380_87 : StackLang.HolProg 64 :=
.seq AllocBody380_77 AllocBody380_86

def AllocBody380_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody380_90 : StackLang.HolProg 64 :=
.seq AllocBody380_88 AllocBody380_89

def AllocBody380_91 : StackLang.HolProg 64 :=
.call (some (AllocBody380_87, 0, 380, 4)) (Sum.inl 68) (some (AllocBody380_90, 380, 5))

def AllocBody380_92 : StackLang.HolProg 64 :=
.seq AllocBody380_76 AllocBody380_91

def AllocBody380_93 : StackLang.HolProg 64 :=
.seq AllocBody380_75 AllocBody380_92

def AllocBody380_94 : StackLang.HolProg 64 :=
.seq AllocBody380_74 AllocBody380_93

def AllocBody380_95 : StackLang.HolProg 64 :=
.seq AllocBody380_55 AllocBody380_94

def AllocBody380_96 : StackLang.HolProg 64 :=
.seq AllocBody380_52 AllocBody380_95

def AllocBody380_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody380_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody380_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody380_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody380_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1116#64)

def AllocBody380_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_106 : StackLang.HolProg 64 :=
.seq AllocBody380_104 AllocBody380_105

def AllocBody380_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody380_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody380_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 7

def AllocBody380_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody380_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody380_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody380_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody380_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_117 : StackLang.HolProg 64 :=
.seq AllocBody380_115 AllocBody380_116

def AllocBody380_118 : StackLang.HolProg 64 :=
.seq AllocBody380_114 AllocBody380_117

def AllocBody380_119 : StackLang.HolProg 64 :=
.seq AllocBody380_113 AllocBody380_118

def AllocBody380_120 : StackLang.HolProg 64 :=
.seq AllocBody380_112 AllocBody380_119

def AllocBody380_121 : StackLang.HolProg 64 :=
.seq AllocBody380_111 AllocBody380_120

def AllocBody380_122 : StackLang.HolProg 64 :=
.seq AllocBody380_110 AllocBody380_121

def AllocBody380_123 : StackLang.HolProg 64 :=
.seq AllocBody380_109 AllocBody380_122

def AllocBody380_124 : StackLang.HolProg 64 :=
.seq AllocBody380_108 AllocBody380_123

def AllocBody380_125 : StackLang.HolProg 64 :=
.seq AllocBody380_107 AllocBody380_124

def AllocBody380_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody380_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody380_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody380_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody380_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody380_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody380_136 : StackLang.HolProg 64 :=
.seq AllocBody380_134 AllocBody380_135

def AllocBody380_137 : StackLang.HolProg 64 :=
.seq AllocBody380_133 AllocBody380_136

def AllocBody380_138 : StackLang.HolProg 64 :=
.seq AllocBody380_132 AllocBody380_137

def AllocBody380_139 : StackLang.HolProg 64 :=
.seq AllocBody380_131 AllocBody380_138

def AllocBody380_140 : StackLang.HolProg 64 :=
.seq AllocBody380_130 AllocBody380_139

def AllocBody380_141 : StackLang.HolProg 64 :=
.seq AllocBody380_129 AllocBody380_140

def AllocBody380_142 : StackLang.HolProg 64 :=
.seq AllocBody380_128 AllocBody380_141

def AllocBody380_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody380_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody380_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody380_147 : StackLang.HolProg 64 :=
.seq AllocBody380_145 AllocBody380_146

def AllocBody380_148 : StackLang.HolProg 64 :=
.seq AllocBody380_144 AllocBody380_147

def AllocBody380_149 : StackLang.HolProg 64 :=
.seq AllocBody380_143 AllocBody380_148

def AllocBody380_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody380_151 : StackLang.HolProg 64 :=
.seq AllocBody380_149 AllocBody380_150

def AllocBody380_152 : StackLang.HolProg 64 :=
.call (some (AllocBody380_142, 0, 380, 6)) (Sum.inl 158) (some (AllocBody380_151, 380, 7))

def AllocBody380_153 : StackLang.HolProg 64 :=
.seq AllocBody380_127 AllocBody380_152

def AllocBody380_154 : StackLang.HolProg 64 :=
.seq AllocBody380_126 AllocBody380_153

def AllocBody380_155 : StackLang.HolProg 64 :=
.seq AllocBody380_125 AllocBody380_154

def AllocBody380_156 : StackLang.HolProg 64 :=
.seq AllocBody380_106 AllocBody380_155

def AllocBody380_157 : StackLang.HolProg 64 :=
.seq AllocBody380_103 AllocBody380_156

def AllocBody380_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody380_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody380_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody380_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody380_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1117#64)

def AllocBody380_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_166 : StackLang.HolProg 64 :=
.seq AllocBody380_164 AllocBody380_165

def AllocBody380_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody380_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody380_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 9

def AllocBody380_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody380_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody380_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody380_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody380_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_177 : StackLang.HolProg 64 :=
.seq AllocBody380_175 AllocBody380_176

def AllocBody380_178 : StackLang.HolProg 64 :=
.seq AllocBody380_174 AllocBody380_177

def AllocBody380_179 : StackLang.HolProg 64 :=
.seq AllocBody380_173 AllocBody380_178

def AllocBody380_180 : StackLang.HolProg 64 :=
.seq AllocBody380_172 AllocBody380_179

def AllocBody380_181 : StackLang.HolProg 64 :=
.seq AllocBody380_171 AllocBody380_180

def AllocBody380_182 : StackLang.HolProg 64 :=
.seq AllocBody380_170 AllocBody380_181

def AllocBody380_183 : StackLang.HolProg 64 :=
.seq AllocBody380_169 AllocBody380_182

def AllocBody380_184 : StackLang.HolProg 64 :=
.seq AllocBody380_168 AllocBody380_183

def AllocBody380_185 : StackLang.HolProg 64 :=
.seq AllocBody380_167 AllocBody380_184

def AllocBody380_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody380_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody380_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody380_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_193 : StackLang.HolProg 64 :=
.seq AllocBody380_191 AllocBody380_192

def AllocBody380_194 : StackLang.HolProg 64 :=
.seq AllocBody380_190 AllocBody380_193

def AllocBody380_195 : StackLang.HolProg 64 :=
.seq AllocBody380_189 AllocBody380_194

def AllocBody380_196 : StackLang.HolProg 64 :=
.seq AllocBody380_188 AllocBody380_195

def AllocBody380_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody380_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody380_199 : StackLang.HolProg 64 :=
.seq AllocBody380_197 AllocBody380_198

def AllocBody380_200 : StackLang.HolProg 64 :=
.call (some (AllocBody380_196, 0, 380, 8)) (Sum.inl 77) (some (AllocBody380_199, 380, 9))

def AllocBody380_201 : StackLang.HolProg 64 :=
.seq AllocBody380_187 AllocBody380_200

def AllocBody380_202 : StackLang.HolProg 64 :=
.seq AllocBody380_186 AllocBody380_201

def AllocBody380_203 : StackLang.HolProg 64 :=
.seq AllocBody380_185 AllocBody380_202

def AllocBody380_204 : StackLang.HolProg 64 :=
.seq AllocBody380_166 AllocBody380_203

def AllocBody380_205 : StackLang.HolProg 64 :=
.seq AllocBody380_163 AllocBody380_204

def AllocBody380_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody380_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody380_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1118#64)

def AllocBody380_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_211 : StackLang.HolProg 64 :=
.seq AllocBody380_209 AllocBody380_210

def AllocBody380_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody380_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody380_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody380_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 11

def AllocBody380_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody380_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody380_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody380_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody380_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_222 : StackLang.HolProg 64 :=
.seq AllocBody380_220 AllocBody380_221

def AllocBody380_223 : StackLang.HolProg 64 :=
.seq AllocBody380_219 AllocBody380_222

def AllocBody380_224 : StackLang.HolProg 64 :=
.seq AllocBody380_218 AllocBody380_223

def AllocBody380_225 : StackLang.HolProg 64 :=
.seq AllocBody380_217 AllocBody380_224

def AllocBody380_226 : StackLang.HolProg 64 :=
.seq AllocBody380_216 AllocBody380_225

def AllocBody380_227 : StackLang.HolProg 64 :=
.seq AllocBody380_215 AllocBody380_226

def AllocBody380_228 : StackLang.HolProg 64 :=
.seq AllocBody380_214 AllocBody380_227

def AllocBody380_229 : StackLang.HolProg 64 :=
.seq AllocBody380_213 AllocBody380_228

def AllocBody380_230 : StackLang.HolProg 64 :=
.seq AllocBody380_212 AllocBody380_229

def AllocBody380_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody380_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody380_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody380_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody380_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody380_238 : StackLang.HolProg 64 :=
.seq AllocBody380_236 AllocBody380_237

def AllocBody380_239 : StackLang.HolProg 64 :=
.seq AllocBody380_235 AllocBody380_238

def AllocBody380_240 : StackLang.HolProg 64 :=
.seq AllocBody380_234 AllocBody380_239

def AllocBody380_241 : StackLang.HolProg 64 :=
.seq AllocBody380_233 AllocBody380_240

def AllocBody380_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody380_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody380_244 : StackLang.HolProg 64 :=
.seq AllocBody380_242 AllocBody380_243

def AllocBody380_245 : StackLang.HolProg 64 :=
.call (some (AllocBody380_241, 0, 380, 10)) (Sum.inl 70) (some (AllocBody380_244, 380, 11))

def AllocBody380_246 : StackLang.HolProg 64 :=
.seq AllocBody380_232 AllocBody380_245

def AllocBody380_247 : StackLang.HolProg 64 :=
.seq AllocBody380_231 AllocBody380_246

def AllocBody380_248 : StackLang.HolProg 64 :=
.seq AllocBody380_230 AllocBody380_247

def AllocBody380_249 : StackLang.HolProg 64 :=
.seq AllocBody380_211 AllocBody380_248

def AllocBody380_250 : StackLang.HolProg 64 :=
.seq AllocBody380_208 AllocBody380_249

def AllocBody380_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody380_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody380_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody380_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody380_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody380_256 : StackLang.HolProg 64 :=
.seq AllocBody380_254 AllocBody380_255

def AllocBody380_257 : StackLang.HolProg 64 :=
.seq AllocBody380_253 AllocBody380_256

def AllocBody380_258 : StackLang.HolProg 64 :=
.seq AllocBody380_252 AllocBody380_257

def AllocBody380_259 : StackLang.HolProg 64 :=
.seq AllocBody380_251 AllocBody380_258

def AllocBody380_260 : StackLang.HolProg 64 :=
.seq AllocBody380_250 AllocBody380_259

def AllocBody380_261 : StackLang.HolProg 64 :=
.seq AllocBody380_207 AllocBody380_260

def AllocBody380_262 : StackLang.HolProg 64 :=
.seq AllocBody380_206 AllocBody380_261

def AllocBody380_263 : StackLang.HolProg 64 :=
.seq AllocBody380_205 AllocBody380_262

def AllocBody380_264 : StackLang.HolProg 64 :=
.seq AllocBody380_162 AllocBody380_263

def AllocBody380_265 : StackLang.HolProg 64 :=
.seq AllocBody380_161 AllocBody380_264

def AllocBody380_266 : StackLang.HolProg 64 :=
.seq AllocBody380_160 AllocBody380_265

def AllocBody380_267 : StackLang.HolProg 64 :=
.seq AllocBody380_159 AllocBody380_266

def AllocBody380_268 : StackLang.HolProg 64 :=
.seq AllocBody380_158 AllocBody380_267

def AllocBody380_269 : StackLang.HolProg 64 :=
.seq AllocBody380_157 AllocBody380_268

def AllocBody380_270 : StackLang.HolProg 64 :=
.seq AllocBody380_102 AllocBody380_269

def AllocBody380_271 : StackLang.HolProg 64 :=
.seq AllocBody380_101 AllocBody380_270

def AllocBody380_272 : StackLang.HolProg 64 :=
.seq AllocBody380_100 AllocBody380_271

def AllocBody380_273 : StackLang.HolProg 64 :=
.seq AllocBody380_99 AllocBody380_272

def AllocBody380_274 : StackLang.HolProg 64 :=
.seq AllocBody380_98 AllocBody380_273

def AllocBody380_275 : StackLang.HolProg 64 :=
.seq AllocBody380_97 AllocBody380_274

def AllocBody380_276 : StackLang.HolProg 64 :=
.seq AllocBody380_96 AllocBody380_275

def AllocBody380_277 : StackLang.HolProg 64 :=
.seq AllocBody380_51 AllocBody380_276

def AllocBody380_278 : StackLang.HolProg 64 :=
.seq AllocBody380_50 AllocBody380_277

def AllocBody380_279 : StackLang.HolProg 64 :=
.seq AllocBody380_49 AllocBody380_278

def AllocBody380_280 : StackLang.HolProg 64 :=
.seq AllocBody380_48 AllocBody380_279

def AllocBody380_281 : StackLang.HolProg 64 :=
.seq AllocBody380_5 AllocBody380_280

def AllocBody380_282 : StackLang.HolProg 64 :=
.seq AllocBody380_0 AllocBody380_281

def Alloc380 : Nat × StackLang.HolProg 64 := (380, AllocBody380_282)
theorem Alloc380_eq : StackAlloc.progComp (380, raw380) = Alloc380 := by
  kernel_rfl
#print axioms Alloc380_eq
end InitECandidate.Proofs.BackendStages
