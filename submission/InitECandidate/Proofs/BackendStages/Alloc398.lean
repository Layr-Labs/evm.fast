import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw398
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody398_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody398_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody398_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1181#64)

def AllocBody398_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_5 : StackLang.HolProg 64 :=
.seq AllocBody398_3 AllocBody398_4

def AllocBody398_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody398_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody398_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 3

def AllocBody398_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody398_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody398_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody398_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody398_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_16 : StackLang.HolProg 64 :=
.seq AllocBody398_14 AllocBody398_15

def AllocBody398_17 : StackLang.HolProg 64 :=
.seq AllocBody398_13 AllocBody398_16

def AllocBody398_18 : StackLang.HolProg 64 :=
.seq AllocBody398_12 AllocBody398_17

def AllocBody398_19 : StackLang.HolProg 64 :=
.seq AllocBody398_11 AllocBody398_18

def AllocBody398_20 : StackLang.HolProg 64 :=
.seq AllocBody398_10 AllocBody398_19

def AllocBody398_21 : StackLang.HolProg 64 :=
.seq AllocBody398_9 AllocBody398_20

def AllocBody398_22 : StackLang.HolProg 64 :=
.seq AllocBody398_8 AllocBody398_21

def AllocBody398_23 : StackLang.HolProg 64 :=
.seq AllocBody398_7 AllocBody398_22

def AllocBody398_24 : StackLang.HolProg 64 :=
.seq AllocBody398_6 AllocBody398_23

def AllocBody398_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody398_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody398_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody398_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody398_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody398_33 : StackLang.HolProg 64 :=
.seq AllocBody398_31 AllocBody398_32

def AllocBody398_34 : StackLang.HolProg 64 :=
.seq AllocBody398_30 AllocBody398_33

def AllocBody398_35 : StackLang.HolProg 64 :=
.seq AllocBody398_29 AllocBody398_34

def AllocBody398_36 : StackLang.HolProg 64 :=
.seq AllocBody398_28 AllocBody398_35

def AllocBody398_37 : StackLang.HolProg 64 :=
.seq AllocBody398_27 AllocBody398_36

def AllocBody398_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody398_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody398_40 : StackLang.HolProg 64 :=
.seq AllocBody398_38 AllocBody398_39

def AllocBody398_41 : StackLang.HolProg 64 :=
.call (some (AllocBody398_37, 0, 398, 2)) (Sum.inl 397) (some (AllocBody398_40, 398, 3))

def AllocBody398_42 : StackLang.HolProg 64 :=
.seq AllocBody398_26 AllocBody398_41

def AllocBody398_43 : StackLang.HolProg 64 :=
.seq AllocBody398_25 AllocBody398_42

def AllocBody398_44 : StackLang.HolProg 64 :=
.seq AllocBody398_24 AllocBody398_43

def AllocBody398_45 : StackLang.HolProg 64 :=
.seq AllocBody398_5 AllocBody398_44

def AllocBody398_46 : StackLang.HolProg 64 :=
.seq AllocBody398_2 AllocBody398_45

def AllocBody398_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody398_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody398_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody398_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody398_55 : StackLang.HolProg 64 :=
.seq AllocBody398_53 AllocBody398_54

def AllocBody398_56 : StackLang.HolProg 64 :=
.seq AllocBody398_52 AllocBody398_55

def AllocBody398_57 : StackLang.HolProg 64 :=
.seq AllocBody398_51 AllocBody398_56

def AllocBody398_58 : StackLang.HolProg 64 :=
.seq AllocBody398_50 AllocBody398_57

def AllocBody398_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody398_58 AllocBody398_59

def AllocBody398_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def AllocBody398_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody398_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody398_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody398_67 : StackLang.HolProg 64 :=
.seq AllocBody398_65 AllocBody398_66

def AllocBody398_68 : StackLang.HolProg 64 :=
.seq AllocBody398_64 AllocBody398_67

def AllocBody398_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1182#64)

def AllocBody398_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_72 : StackLang.HolProg 64 :=
.seq AllocBody398_70 AllocBody398_71

def AllocBody398_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody398_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody398_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 5

def AllocBody398_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody398_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody398_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody398_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody398_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_83 : StackLang.HolProg 64 :=
.seq AllocBody398_81 AllocBody398_82

def AllocBody398_84 : StackLang.HolProg 64 :=
.seq AllocBody398_80 AllocBody398_83

def AllocBody398_85 : StackLang.HolProg 64 :=
.seq AllocBody398_79 AllocBody398_84

def AllocBody398_86 : StackLang.HolProg 64 :=
.seq AllocBody398_78 AllocBody398_85

def AllocBody398_87 : StackLang.HolProg 64 :=
.seq AllocBody398_77 AllocBody398_86

def AllocBody398_88 : StackLang.HolProg 64 :=
.seq AllocBody398_76 AllocBody398_87

def AllocBody398_89 : StackLang.HolProg 64 :=
.seq AllocBody398_75 AllocBody398_88

def AllocBody398_90 : StackLang.HolProg 64 :=
.seq AllocBody398_74 AllocBody398_89

def AllocBody398_91 : StackLang.HolProg 64 :=
.seq AllocBody398_73 AllocBody398_90

def AllocBody398_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody398_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody398_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody398_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody398_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody398_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody398_101 : StackLang.HolProg 64 :=
.seq AllocBody398_99 AllocBody398_100

def AllocBody398_102 : StackLang.HolProg 64 :=
.seq AllocBody398_98 AllocBody398_101

def AllocBody398_103 : StackLang.HolProg 64 :=
.seq AllocBody398_97 AllocBody398_102

def AllocBody398_104 : StackLang.HolProg 64 :=
.seq AllocBody398_96 AllocBody398_103

def AllocBody398_105 : StackLang.HolProg 64 :=
.seq AllocBody398_95 AllocBody398_104

def AllocBody398_106 : StackLang.HolProg 64 :=
.seq AllocBody398_94 AllocBody398_105

def AllocBody398_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody398_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody398_109 : StackLang.HolProg 64 :=
.seq AllocBody398_107 AllocBody398_108

def AllocBody398_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody398_111 : StackLang.HolProg 64 :=
.seq AllocBody398_109 AllocBody398_110

def AllocBody398_112 : StackLang.HolProg 64 :=
.call (some (AllocBody398_106, 0, 398, 4)) (Sum.inl 68) (some (AllocBody398_111, 398, 5))

def AllocBody398_113 : StackLang.HolProg 64 :=
.seq AllocBody398_93 AllocBody398_112

def AllocBody398_114 : StackLang.HolProg 64 :=
.seq AllocBody398_92 AllocBody398_113

def AllocBody398_115 : StackLang.HolProg 64 :=
.seq AllocBody398_91 AllocBody398_114

def AllocBody398_116 : StackLang.HolProg 64 :=
.seq AllocBody398_72 AllocBody398_115

def AllocBody398_117 : StackLang.HolProg 64 :=
.seq AllocBody398_69 AllocBody398_116

def AllocBody398_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody398_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody398_121 : StackLang.HolProg 64 :=
.seq AllocBody398_119 AllocBody398_120

def AllocBody398_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1183#64)

def AllocBody398_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_125 : StackLang.HolProg 64 :=
.seq AllocBody398_123 AllocBody398_124

def AllocBody398_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody398_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody398_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody398_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 398 7

def AllocBody398_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody398_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody398_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody398_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody398_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_136 : StackLang.HolProg 64 :=
.seq AllocBody398_134 AllocBody398_135

def AllocBody398_137 : StackLang.HolProg 64 :=
.seq AllocBody398_133 AllocBody398_136

def AllocBody398_138 : StackLang.HolProg 64 :=
.seq AllocBody398_132 AllocBody398_137

def AllocBody398_139 : StackLang.HolProg 64 :=
.seq AllocBody398_131 AllocBody398_138

def AllocBody398_140 : StackLang.HolProg 64 :=
.seq AllocBody398_130 AllocBody398_139

def AllocBody398_141 : StackLang.HolProg 64 :=
.seq AllocBody398_129 AllocBody398_140

def AllocBody398_142 : StackLang.HolProg 64 :=
.seq AllocBody398_128 AllocBody398_141

def AllocBody398_143 : StackLang.HolProg 64 :=
.seq AllocBody398_127 AllocBody398_142

def AllocBody398_144 : StackLang.HolProg 64 :=
.seq AllocBody398_126 AllocBody398_143

def AllocBody398_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody398_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody398_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody398_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody398_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody398_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody398_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody398_153 : StackLang.HolProg 64 :=
.seq AllocBody398_151 AllocBody398_152

def AllocBody398_154 : StackLang.HolProg 64 :=
.seq AllocBody398_150 AllocBody398_153

def AllocBody398_155 : StackLang.HolProg 64 :=
.seq AllocBody398_149 AllocBody398_154

def AllocBody398_156 : StackLang.HolProg 64 :=
.seq AllocBody398_148 AllocBody398_155

def AllocBody398_157 : StackLang.HolProg 64 :=
.seq AllocBody398_147 AllocBody398_156

def AllocBody398_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody398_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody398_160 : StackLang.HolProg 64 :=
.seq AllocBody398_158 AllocBody398_159

def AllocBody398_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody398_162 : StackLang.HolProg 64 :=
.seq AllocBody398_160 AllocBody398_161

def AllocBody398_163 : StackLang.HolProg 64 :=
.call (some (AllocBody398_157, 0, 398, 6)) (Sum.inl 333) (some (AllocBody398_162, 398, 7))

def AllocBody398_164 : StackLang.HolProg 64 :=
.seq AllocBody398_146 AllocBody398_163

def AllocBody398_165 : StackLang.HolProg 64 :=
.seq AllocBody398_145 AllocBody398_164

def AllocBody398_166 : StackLang.HolProg 64 :=
.seq AllocBody398_144 AllocBody398_165

def AllocBody398_167 : StackLang.HolProg 64 :=
.seq AllocBody398_125 AllocBody398_166

def AllocBody398_168 : StackLang.HolProg 64 :=
.seq AllocBody398_122 AllocBody398_167

def AllocBody398_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody398_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody398_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody398_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody398_173 : StackLang.HolProg 64 :=
.seq AllocBody398_171 AllocBody398_172

def AllocBody398_174 : StackLang.HolProg 64 :=
.seq AllocBody398_170 AllocBody398_173

def AllocBody398_175 : StackLang.HolProg 64 :=
.seq AllocBody398_169 AllocBody398_174

def AllocBody398_176 : StackLang.HolProg 64 :=
.seq AllocBody398_168 AllocBody398_175

def AllocBody398_177 : StackLang.HolProg 64 :=
.seq AllocBody398_121 AllocBody398_176

def AllocBody398_178 : StackLang.HolProg 64 :=
.seq AllocBody398_118 AllocBody398_177

def AllocBody398_179 : StackLang.HolProg 64 :=
.seq AllocBody398_117 AllocBody398_178

def AllocBody398_180 : StackLang.HolProg 64 :=
.seq AllocBody398_68 AllocBody398_179

def AllocBody398_181 : StackLang.HolProg 64 :=
.seq AllocBody398_63 AllocBody398_180

def AllocBody398_182 : StackLang.HolProg 64 :=
.seq AllocBody398_62 AllocBody398_181

def AllocBody398_183 : StackLang.HolProg 64 :=
.seq AllocBody398_61 AllocBody398_182

def AllocBody398_184 : StackLang.HolProg 64 :=
.seq AllocBody398_60 AllocBody398_183

def AllocBody398_185 : StackLang.HolProg 64 :=
.seq AllocBody398_49 AllocBody398_184

def AllocBody398_186 : StackLang.HolProg 64 :=
.seq AllocBody398_48 AllocBody398_185

def AllocBody398_187 : StackLang.HolProg 64 :=
.seq AllocBody398_47 AllocBody398_186

def AllocBody398_188 : StackLang.HolProg 64 :=
.seq AllocBody398_46 AllocBody398_187

def AllocBody398_189 : StackLang.HolProg 64 :=
.seq AllocBody398_1 AllocBody398_188

def AllocBody398_190 : StackLang.HolProg 64 :=
.seq AllocBody398_0 AllocBody398_189

def Alloc398 : Nat × StackLang.HolProg 64 := (398, AllocBody398_190)
theorem Alloc398_eq : StackAlloc.progComp (398, raw398) = Alloc398 := by
  kernel_rfl
#print axioms Alloc398_eq
end InitECandidate.Proofs.BackendStages
